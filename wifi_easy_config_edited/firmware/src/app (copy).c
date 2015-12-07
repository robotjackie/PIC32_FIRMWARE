/*******************************************************************************
  Sample Application

  File Name:
    app.c

  Summary:


  Description:

 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <sys/attribs.h>
#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Variable Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
*/
APP_DATA appData;

bool writeComplete = false;

BSP_LED_STATE LEDstate = BSP_LED_STATE_OFF;

extern bool g_scan_done; // WF_PRESCAN    This will be set wheneven event scan results are ready.
extern bool g_prescan_waiting; // WF_PRESCAN    This is used only to allow prescan once.

static void APP_HandleWriteComplete(void* param);

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize( void )
{
    /* Intialize the app state to wait for
     * media attach. */
    appData.state = APP_MOUNT_DISK;

    SYS_CMD_RegisterCallback(APP_HandleWriteComplete, SYS_CMD_EVENT_WRITE_COMPLETE);
}

/*******************************************************************************
  Function:
    void APP_Tasks( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks( void )
{
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static uint32_t     startTick = 0;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    int                 i, nNets;
    TCPIP_NET_HANDLE    netH;

    if (!writeComplete)
    {
        return;
    }

    switch(appData.state)
    {
        case APP_MOUNT_DISK:
            if(SYS_FS_Mount(SYS_FS_NVM_VOL, LOCAL_WEBSITE_PATH_FS, MPFS2, 0, NULL)  == 0)
            {
                SYS_CONSOLE_PRINT("SYS_Initialize: The %s File System is mounted.\r\n", SYS_FS_MPFS_STRING);
                appData.state = APP_TCPIP_WAIT_INIT;
            }
            else
            {
                SYS_CONSOLE_PRINT("SYS_Initialize: Mount the %s File System: pending! \r\n", SYS_FS_MPFS_STRING);
            }
            break;

        case APP_TCPIP_WAIT_INIT:
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {   // some error occurred
                SYS_CONSOLE_MESSAGE("APP: TCP/IP stack initialization failed!\r\n");
                appData.state = APP_TCPIP_ERROR;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                // now that the stack is ready we can check the
                // available interfaces
                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {
                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);
#if defined(TCPIP_STACK_USE_NBNS)
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif  // defined(TCPIP_STACK_USE_NBNS)

#if defined (TCPIP_STACK_USE_ZEROCONF_MDNS_SD)
                    char mDNSServiceName[] = "MyWebServiceNameX "; // base name of the service Must not exceed 16 bytes long
                    // the last digit will be incremented by interface

                    mDNSServiceName[sizeof(mDNSServiceName) - 2] = '1' + i;
                    TCPIP_MDNS_ServiceRegister( netH
                            , mDNSServiceName                     // name of the service
                            ,"_http._tcp.local"                   // type of the service
                            ,80                                   // TCP or UDP port, at which this service is available
                            ,((const uint8_t *)"path=/index.htm") // TXT info
                            ,1                                    // auto rename the service when if needed
                            ,NULL                                 // no callback function
                            ,NULL);                               // no application context
#endif //TCPIP_STACK_USE_ZEROCONF_MDNS_SD
                }
                if (p_wifi_ConfigData->networkType == DRV_WIFI_NETWORK_TYPE_SOFT_AP)
                    appData.state = APP_WIFI_WAIT_FOR_SCAN;
                else if (p_wifi_ConfigData->networkType == DRV_WIFI_NETWORK_TYPE_ADHOC)
                {
#if (DRV_WIFI_DEFAULT_ADHOC_PRESCAN == DRV_WIFI_ENABLED)
                    appData.state = APP_WIFI_WAIT_FOR_SCAN;
#else
                    appData.state = APP_WIFI_CONNECT;
#endif
                }
                else
                {
                    appData.state = APP_TCPIP_TRANSACT;
                }
            }
            break;

        case APP_WIFI_WAIT_FOR_SCAN:
            if (g_scan_done)
            {
                if (g_prescan_waiting)
                {
                    if(IS_SCAN_STATE_DISPLAY(SCANCXT.scanState) && (SCANCXT.numScanResults > 0))
                    {
                        SYS_CONSOLE_MESSAGE((const char*)"\nPrescan results ... \r\n\n");
                        SCANCXT.displayIdx = 0;
                        SYS_CONSOLE_MESSAGE("     SSID                             RSSI  Channel\r\n");
                        SYS_CONSOLE_MESSAGE("     -------------------------------- ----  -------\r\n");

                        writeComplete = false;
                        appData.state = APP_WIFI_DISPLAY_SCAN_RES;
                    }
                    else if (IS_SCAN_STATE_DISPLAY(SCANCXT.scanState) && (SCANCXT.numScanResults == 0))
                    {
                        SYS_CONSOLE_MESSAGE((const char*)"No AP found.\r\n ");
                        appData.state = APP_WIFI_CONNECT;
                    }
                    else
                    {
                        SYS_CONSOLE_MESSAGE((const char*)"Prescan failed.\r\n ");
                        appData.state = APP_WIFI_CONNECT;
                    }

                    g_prescan_waiting = false;
                }
            }
            break;

        case APP_WIFI_DISPLAY_SCAN_RES:
            if (IS_SCAN_STATE_DISPLAY(SCANCXT.scanState))
            {
                WFDisplayScanMgr();
                writeComplete = false;
            }
            else appData.state = APP_WIFI_CONNECT;
            break;

        case APP_WIFI_CONNECT:
            #if (WF_DEFAULT_NETWORK_TYPE == DRV_WIFI_NETWORK_TYPE_SOFT_AP) && (WF_SOFTAP_CHECK_LINK_STATUS == DRV_WIFI_ENABLED)
                DRV_WIFI_SetLinkDownThreshold(WF_SOFTAP_LINK_FAILURE_THRESHOLD);
            #endif

            if (DRV_WIFI_ConnectStateMachine() == TCPIP_MAC_RES_OK)
            {
                appData.state = APP_TCPIP_TRANSACT;
            }
            break;

        case APP_TCPIP_TRANSACT:
            if (SYS_TMR_TickCountGet() - startTick >= SYS_TMR_TickCounterFrequencyGet() / 2ul)
            {
                startTick = SYS_TMR_TickCountGet();
                LEDstate ^= BSP_LED_STATE_ON;
                // This is a temporary work-around
#if defined(EX16)
                BSP_LEDStateSet(APP_TCPIP_LED_1, LEDstate);
#else
                BSP_LEDStateSet(APP_TCPIP_LED_3, LEDstate);
#endif
            }

            // if the IP address of an interface has changed
            // display the new value on the system console
            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                    SYS_CONSOLE_MESSAGE(" IP Address: ");
                    SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                }
            }

            SYS_CMD_READY_TO_READ();

            break;

         default:
            break;
    }
}

/*******************************************************************************
  Function:
    void APP_HandleWriteComplete(void* param)

  Remarks:
    Callback to indicate a console write complete
 */
void APP_HandleWriteComplete(void* param)
{
    writeComplete = true;
}

/*******************************************************************************
 End of File
*/
