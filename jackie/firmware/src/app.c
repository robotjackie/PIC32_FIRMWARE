/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

bool writeComplete = false;

BSP_LED_STATE LEDstate = BSP_LED_STATE_OFF;

extern bool g_scan_done; // WF_PRESCAN    This will be set wheneven event scan results are ready.
extern bool g_prescan_waiting; // WF_PRESCAN    This is used only to allow prescan once.

extern GFX_COLOR frameBuffer[1][DISP_HOR_RESOLUTION][DISP_VER_RESOLUTION];

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback funtions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

static void _delayMS ( unsigned int delayMs );
int8_t _APP_PumpDNS(const char * hostname, IPV4_ADDR *ipv4Addr);

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    uint8_t             reg12;
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static uint32_t     startTick = 0;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    TCPIP_NET_HANDLE    netH;
    int                 i, nNets;
    
    char APP_Hostname_Buffer[MAX_URL_SIZE];
    char APP_Port_Buffer[6];
    char APP_Message_Buffer[MAX_URL_SIZE];
    bool APP_Send_Packet = false;
    
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            SYS_CONSOLE_PRINT("hello?");
            
            appData.drvHandle = DRV_CAMERA_OVM7690_Open( DRV_CAMERA_OVM7690_INDEX_0,
                                                         DRV_IO_INTENT_BLOCKING );
            if( appData.drvHandle == DRV_HANDLE_INVALID )
            {
                return;
            }
            
            appData.state = APP_STATE_CAMERA_INIT;
                
            break;
        }
        
        case APP_STATE_CAMERA_INIT:
        {   
            /* Set Frame buffer address */
            DRV_CAMERA_OVM7690_FrameBufferAddressSet(appData.drvHandle,
                                                     (void *)frameBuffer);
            
            /*Software Reset*/
            reg12 = DRV_CAMERA_OVM7690_REG12_SOFT_RESET;
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG12_REG_ADDR, 
                                                  reg12 ) == false);
            _delayMS(100);

            /*Horizontal Mirror Enable HSYNC/VSYCNC/PCLK and Color*/
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG0C_REG_ADDR, 
                                                  0x06) == false);
            _delayMS(100);
            
            /* HREF Reverse */
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG28_REG_ADDR, 
                                                  0x10) == false);
            _delayMS(100);
            
            /* PCLK output gated */
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG3E_REG_ADDR, 
                                                  0x70 ) == false);
            _delayMS(100);

            /*Slow down Pixel Clock*/
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_CLKRC_REG_ADDR, 
                                                  0x01) == false);
            _delayMS(100);

            /*SubSample and RGB color*/
            while(DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG12_REG_ADDR, 
                                                  0x16) == false);
            _delayMS(100);

            DRV_CAMERA_OVM7690_FrameRectSet( appData.drvHandle,
                                             0x69, 0x0E,
                                             DISP_HOR_RESOLUTION + 0x69,
                                             DISP_VER_RESOLUTION + 0x0E);
            
            appData.state = APP_STATE_CAMERA_START;
            
            break;
        }
        
        case APP_STATE_CAMERA_START:
        {
            DRV_CAMERA_OVM7690_Start(appData.drvHandle);
            appData.state = APP_TCPIP_WAIT_INIT;
            
            DBPRINTF("Camera started");
        
            break;
        }

        case APP_TCPIP_WAIT_INIT:
        {
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {   // some error occurred
                SYS_CONSOLE_MESSAGE(" APP: TCP/IP stack initialization failed!\r\n");
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
        }
        break;
        
        case APP_WIFI_WAIT_FOR_SCAN:
        {
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
        }
        break;

        case APP_WIFI_DISPLAY_SCAN_RES:
        {
            if (IS_SCAN_STATE_DISPLAY(SCANCXT.scanState))
            {
                WFDisplayScanMgr();
                writeComplete = false;
            }
            else appData.state = APP_WIFI_CONNECT;
        }
        break;

        case APP_WIFI_CONNECT:
        {
            #if (WF_DEFAULT_NETWORK_TYPE == DRV_WIFI_NETWORK_TYPE_SOFT_AP) && (WF_SOFTAP_CHECK_LINK_STATUS == DRV_WIFI_ENABLED)
                DRV_WIFI_SetLinkDownThreshold(WF_SOFTAP_LINK_FAILURE_THRESHOLD);
            #endif

            if (DRV_WIFI_ConnectStateMachine() == TCPIP_MAC_RES_OK)
            {
                appData.state = APP_TCPIP_TRANSACT;
            }
        }
        break;
        
        case APP_TCPIP_TRANSACT:
        {
            if (SYS_TMR_TickCountGet() - startTick >= SYS_TMR_TickCounterFrequencyGet() / 2ul)
            {
                startTick = SYS_TMR_TickCountGet();
                LEDstate ^= BSP_LED_STATE_ON;
                // This is a temporary work-around
#if defined(EX16)
                //BSP_LEDStateSet(APP_TCPIP_LED_1, LEDstate);
#else
                //BSP_LEDStateSet(APP_TCPIP_LED_3, LEDstate);
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

            appData.state = APP_TCPIP_WAIT_FOR_IP;
        }
        break;


        case APP_TCPIP_WAIT_FOR_IP:
        {

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
                    if (ipAddr.v[0] != 0 && ipAddr.v[0] != 169) // Wait for a Valid IP
                    {
                        appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                        SYS_CONSOLE_MESSAGE("Waiting for command type: sendudppacket\r\n");
                        APP_Send_Packet = true;
                    }
                }
            }
        }
        break;
        
        case APP_TCPIP_WAITING_FOR_COMMAND:
        {
            SYS_CMD_READY_TO_READ();
            if (APP_Send_Packet)
            {
                TCPIP_DNS_RESULT result;
                APP_Send_Packet = false;
                result = TCPIP_DNS_Resolve(APP_Hostname_Buffer, DNS_TYPE_A);
                if (result == DNS_RES_NAME_IS_IPADDRESS)
                {
                    IPV4_ADDR addr;
                    TCPIP_Helper_StringToIPAddress(APP_Hostname_Buffer, &addr);
                    uint16_t port = atoi(APP_Port_Buffer);
                    appData.socket = TCPIP_UDP_ClientOpen(IP_ADDRESS_TYPE_IPV4,
                                                          port,
                                                          (IP_MULTI_ADDRESS*) &addr);
                    if (appData.socket == INVALID_SOCKET)
                    {
                        SYS_CONSOLE_MESSAGE("Could not start connection\r\n");
                        appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                    }
                    SYS_CONSOLE_MESSAGE("Starting connection\r\n");
                    appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
                    break;
                }
                if (result != DNS_RES_OK && result != DNS_RES_NAME_IS_IPADDRESS)
                {
                    SYS_CONSOLE_MESSAGE("Error in DNS aborting 2\r\n");
                    break;
                }
                appData.state = APP_TCPIP_WAIT_ON_DNS;
            }
        }
        break;

        case APP_TCPIP_WAIT_ON_DNS:
        {
            IPV4_ADDR addr;
            switch (_APP_PumpDNS(APP_Hostname_Buffer, &addr))
            {
                case -1:
                {
                    // Some sort of error, already reported
                    appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                }
                break;
                case 0:
                {
                    // Still waiting
                }
                break;
                case 1:
                {
                    uint16_t port = atoi(APP_Port_Buffer);
                    appData.socket = TCPIP_UDP_ClientOpen(IP_ADDRESS_TYPE_IPV4,
                                                          port,
                                                          (IP_MULTI_ADDRESS*) &addr);
                    if (appData.socket == INVALID_SOCKET)
                    {
                        SYS_CONSOLE_MESSAGE("Could not start connection\r\n");
                        appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                    }
                    SYS_CONSOLE_MESSAGE("Starting connection\r\n");
                    appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
                }
                break;
            }
        }
        break;

        case APP_TCPIP_WAIT_FOR_CONNECTION:
        {
            if (!TCPIP_UDP_IsConnected(appData.socket))
            {
                break;
            }
            if(TCPIP_UDP_PutIsReady(appData.socket) == 0)
            {
                break;
            }
            TCPIP_UDP_ArrayPut(appData.socket, (uint8_t*)APP_Message_Buffer, strlen(APP_Message_Buffer));
            TCPIP_UDP_Flush(appData.socket);
            appData.mTimeOut = SYS_TMR_SystemCountGet() + SYS_TMR_SystemCountFrequencyGet();
            appData.state = APP_TCPIP_WAIT_FOR_RESPONSE;
        }
        break;

        case APP_TCPIP_WAIT_FOR_RESPONSE:
        {
            char buffer[180];
            memset(buffer, 0, sizeof(buffer));
            if (SYS_TMR_SystemCountGet() > appData.mTimeOut)
            {
                SYS_CONSOLE_MESSAGE("\r\nTimout waiting for response\r\n");
                TCPIP_UDP_Close(appData.socket);
                appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                break;
            }
            if (!TCPIP_UDP_IsConnected(appData.socket))
            {
                SYS_CONSOLE_MESSAGE("\r\nConnection Closed\r\n");
                appData.state = APP_TCPIP_WAITING_FOR_COMMAND;
                break;
            }
            if (TCPIP_UDP_GetIsReady(appData.socket))
            {
                TCPIP_UDP_ArrayGet(appData.socket, (uint8_t*)buffer, sizeof(buffer) - 1);
                TCPIP_UDP_Discard(appData.socket);
                SYS_CONSOLE_PRINT("%s", buffer);
                TCPIP_UDP_Close(appData.socket);
                appData.state = APP_TCPIP_WAITING_FOR_COMMAND;

            }
        }
        break;
        
        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

static void _delayMS ( unsigned int delayMs )
{
    if(delayMs)
    {
        uint32_t sysClk = SYS_CLK_FREQ;
        uint32_t t0;
        t0 = _CP0_GET_COUNT();
        while (_CP0_GET_COUNT() - t0 < (sysClk/2000)*delayMs);
    }
}

int8_t _APP_PumpDNS(const char * hostname, IPV4_ADDR *ipv4Addr)
{
    TCPIP_DNS_RESULT result = TCPIP_DNS_IsResolved(hostname, ipv4Addr);
    switch (result)
    {
        case DNS_RES_OK:
        {
            // We now have an IPv4 Address
            // Open a socket
            return 1;
        }
        case DNS_RES_PENDING:
            return 0;
        case DNS_RES_SERVER_TMO:
        case DNS_RES_NO_ENTRY:
        default:
            SYS_CONSOLE_MESSAGE("TCPIP_DNS_IsResolved returned failure\r\n");
            return -1;
    }
    // Should not be here!
    return -1;
}

/*******************************************************************************
 End of File
 */
