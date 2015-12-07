/*******************************************************************************
  Application Header

  File Name:
    app.h

  Summary:
    NVM FAT Single Disk application definitions (advanced driver-based version)

  Description:
    This file contains the NVM FAT Single Disk demo application definitions.
 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2012 released Microchip Technology Inc.  All rights reserved.

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
//DOM-IGNORE-END

#ifndef _APP_HEADER_H
#define _APP_HEADER_H

#define WIFI_EASY_CONFIG_DEMO
#define WIFI_EASY_CONFIG_DEMO_VERSION_NUMBER "1.0"

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "driver/wifi/mrf24w/drv_wifi.h"
#include "driver/wifi/mrf24w/src/drv_wifi_config_data.h"
#include "driver/wifi/mrf24w/src/drv_wifi_easy_config.h"

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behaviour of the application at various times.
*/

typedef enum
{
    /* The app mounts the disk */
    APP_MOUNT_DISK = 0,

    /* In this state, the application waits for the initialization of the TCP/IP stack
     * to complete. */
    APP_TCPIP_WAIT_INIT,

    /* In this state the application waits for the Soft AP or Adhoc scan to finish*/
    APP_WIFI_WAIT_FOR_SCAN,

    /* In this state the application displays the Soft AP or Adhoc scan results*/
    APP_WIFI_DISPLAY_SCAN_RES,

    /* In this state the application starts the Soft AP or Adhoc connection*/
    APP_WIFI_CONNECT,

    /* In this state, the application can do TCP/IP transactions. */
    APP_TCPIP_TRANSACT,

    /* The application waits in this state for the driver to be ready
       before sending the "hello world" message. */
    //APP_STATE_WAIT_FOR_READY,

    /* The application waits in this state for the driver to finish
       sending the mesage. */
    //APP_STATE_WAIT_FOR_DONE,

    /* The application does nothing in the idle state. */
    //APP_STATE_IDLE

    APP_USERIO_LED_DEASSERTED,

    APP_USERIO_LED_ASSERTED,

    APP_TCPIP_ERROR,
            
    NEXT,

} APP_STATES;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* SYS_FS File handle */
    SYS_FS_HANDLE           fileHandle;

    /* Application's current state */
    APP_STATES              state;

    /* Application data buffer */
    //uint8_t                 data[64];

    //uint32_t                nBytesWritten;

    //uint32_t                nBytesRead;

} APP_DATA;

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Summary:
     This routine intializes the application object.

  Description:
    This routine initializes the application object. The application state is
    set to wait for media attach.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void APP_Initialize ( void );

/*******************************************************************************
  Function:
    void APP_Tasks ( void )

  Summary:
    NVM FAT Single Disk Demo application tasks function

  Description:
    NVM FAT Single Disk Demo application tasks function. This routine implements
    the application in a non blocking manner.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this function.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
*/

void APP_Tasks ( void );

// *****************************************************************************
// *****************************************************************************
// Section: extern declarations
// *****************************************************************************
// *****************************************************************************
extern const uint8_t NVM_MEDIA_DATA[];

#endif /* _APP_HEADER_H */

/*******************************************************************************
 End of File
*/
