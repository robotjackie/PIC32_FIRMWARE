/*******************************************************************************
  MPLAB Harmony System Configuration Header

  File Name:
    system_config.h

  Summary:
    Build-time configuration header for the system defined by this MPLAB Harmony
    project.

  Description:
    An MPLAB Project may have multiple configurations.  This file defines the
    build-time options for a single configuration.

  Remarks:
    This configuration header must not define any prototypes or data
    definitions (or include any files that do).  It only provides macro
    definitions for build-time configuration options that are not instantiated
    until used by another MPLAB Harmony module or application.
    
    Created with MPLAB Harmony Version 1.05
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2015 released Microchip Technology Inc.  All rights reserved.

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

#ifndef _SYSTEM_CONFIG_H
#define _SYSTEM_CONFIG_H

/* This is a temporary workaround for an issue with the peripheral library "Exists"
   functions that causes superfluous warnings.  It "nulls" out the definition of
   The PLIB function attribute that causes the warning.  Once that issue has been
   resolved, this definition should be removed. */
#define _PLIB_UNSUPPORTED


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/*  This section Includes other configuration headers necessary to completely
    define this configuration.
*/

#include "bsp_config.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Service Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Common System Service Configuration Options
*/
#define SYS_VERSION_STR           "1.05"
#define SYS_VERSION               10500

// *****************************************************************************
/* Clock System Service Configuration Options
*/
#define SYS_CLK_FREQ                        8000000ul
#define SYS_CLK_BUS_PERIPHERAL_1            4000000ul
#define SYS_CLK_BUS_PERIPHERAL_2            4000000ul
#define SYS_CLK_BUS_PERIPHERAL_3            4000000ul
#define SYS_CLK_BUS_PERIPHERAL_4            4000000ul
#define SYS_CLK_BUS_PERIPHERAL_5            4000000ul
#define SYS_CLK_BUS_PERIPHERAL_7            8000000ul
#define SYS_CLK_BUS_PERIPHERAL_8            4000000ul
#define SYS_CLK_CONFIG_PRIMARY_XTAL         24000000ul
#define SYS_CLK_CONFIG_SECONDARY_XTAL       0ul
   
/*** Interrupt System Service Configuration ***/
#define SYS_INT                     true

/*** Ports System Service Configuration ***/

#define SYS_PORT_A_ANSEL        0x620
#define SYS_PORT_A_TRIS         0xc6ff
#define SYS_PORT_A_LAT          0x0
#define SYS_PORT_A_ODC          0x0
#define SYS_PORT_A_CNPU         0x1
#define SYS_PORT_A_CNPD         0x0
#define SYS_PORT_A_CNEN         0x0

#define SYS_PORT_B_ANSEL        0x8fff
#define SYS_PORT_B_TRIS         0xffff
#define SYS_PORT_B_LAT          0x0
#define SYS_PORT_B_ODC          0x0
#define SYS_PORT_B_CNPU         0x7000
#define SYS_PORT_B_CNPD         0x0
#define SYS_PORT_B_CNEN         0x0

#define SYS_PORT_H_ANSEL        0x0
#define SYS_PORT_H_TRIS         0xf7fb
#define SYS_PORT_H_LAT          0x0
#define SYS_PORT_H_ODC          0x0
#define SYS_PORT_H_CNPU         0x0
#define SYS_PORT_H_CNPD         0x0
#define SYS_PORT_H_CNEN         0x0

#define SYS_PORT_J_ANSEL        0x0
#define SYS_PORT_J_TRIS         0xff7f
#define SYS_PORT_J_LAT          0x0
#define SYS_PORT_J_ODC          0x0
#define SYS_PORT_J_CNPU         0x0
#define SYS_PORT_J_CNPD         0x0
#define SYS_PORT_J_CNEN         0x0
/*** Timer System Service Configuration ***/
#define SYS_TMR_POWER_STATE             SYS_MODULE_POWER_RUN_FULL
#define SYS_TMR_DRIVER_INDEX            DRV_TMR_INDEX_0
#define SYS_TMR_MAX_CLIENT_OBJECTS      5
#define SYS_TMR_FREQUENCY               1000
#define SYS_TMR_FREQUENCY_TOLERANCE     10
#define SYS_TMR_UNIT_RESOLUTION         10000
#define SYS_TMR_CLIENT_TOLERANCE        10
#define SYS_TMR_INTERRUPT_NOTIFICATION  false

/*** Console System Service Configuration ***/

#define SYS_CONSOLE_OVERRIDE_STDIO
#define SYS_CONSOLE_DEVICE_MAX_INSTANCES        2
#define SYS_CONSOLE_INSTANCES_NUMBER            1
#define SYS_CONSOLE_APPIO_RD_QUEUE_DEPTH    8
#define SYS_CONSOLE_APPIO_WR_QUEUE_DEPTH    128
#define SYS_CONSOLE_BUFFER_DMA_READY
 
 
/*** Debug System Service Configuration ***/
#define SYS_DEBUG_ENABLE
#define DEBUG_PRINT_BUFFER_SIZE       512
#define SYS_DEBUG_BUFFER_DMA_READY
#define SYS_DEBUG_USE_CONSOLE
 // *****************************************************************************
/* Random System Service Configuration Options
*/

#define SYS_RANDOM_CRYPTO_SEED_SIZE  32


// *****************************************************************************
// *****************************************************************************
// Section: Driver Configuration
// *****************************************************************************
// *****************************************************************************

/*** Graphics Display Configuration ***/
#define DISP_ORIENTATION                        0
#define DISP_HOR_RESOLUTION                     480
#define DISP_VER_RESOLUTION                     272
#define DISP_DATA_WIDTH			                24
#define DISP_HOR_PULSE_WIDTH                    41
#define DISP_HOR_BACK_PORCH                     2
#define DISP_HOR_FRONT_PORCH                    2
#define DISP_VER_PULSE_WIDTH                    10
#define DISP_VER_BACK_PORCH                     2
#define DISP_VER_FRONT_PORCH                    2
#define DISP_INV_LSHIFT                         0
#define GFX_LCD_TYPE                            GFX_LCD_TFT
#define BACKLIGHT_ENABLE_LEVEL                  1
#define BACKLIGHT_DISABLE_LEVEL                 0
#define TCON_MODULE                             NULL
#define TOUCHSCREEN_RESISTIVE_SWAP_XY


/*** Timer Driver Configuration ***/
#define DRV_TMR_INSTANCES_NUMBER           1
#define DRV_TMR_CLIENTS_NUMBER             1
#define DRV_TMR_INTERRUPT_MODE             true

/*** Timer Driver 0 Configuration ***/
#define DRV_TMR_PERIPHERAL_ID_IDX0          TMR_ID_2
#define DRV_TMR_INTERRUPT_SOURCE_IDX0       INT_SOURCE_TIMER_2
#define DRV_TMR_INTERRUPT_VECTOR_IDX0       INT_VECTOR_T2
#define DRV_TMR_ISR_VECTOR_IDX0             _TIMER_2_VECTOR
#define DRV_TMR_INTERRUPT_PRIORITY_IDX0     INT_PRIORITY_LEVEL1
#define DRV_TMR_INTERRUPT_SUB_PRIORITY_IDX0 INT_SUBPRIORITY_LEVEL0
#define DRV_TMR_CLOCK_SOURCE_IDX0           DRV_TMR_CLKSOURCE_INTERNAL
#define DRV_TMR_PRESCALE_IDX0               TMR_PRESCALE_VALUE_256
#define DRV_TMR_OPERATION_MODE_IDX0         DRV_TMR_OPERATION_MODE_16_BIT
#define DRV_TMR_ASYNC_WRITE_ENABLE_IDX0     false
#define DRV_TMR_POWER_STATE_IDX0            SYS_MODULE_POWER_RUN_FULL

 
 // *****************************************************************************
/* USART Driver Configuration Options
*/
 
#define DRV_USART_INTERRUPT_MODE                    true
#define DRV_USART_BYTE_MODEL_SUPPORT                false
#define DRV_USART_READ_WRITE_MODEL_SUPPORT          true
#define DRV_USART_BUFFER_QUEUE_SUPPORT              true
#define DRV_USART_QUEUE_DEPTH_COMBINED              16
#define DRV_USART_CLIENTS_NUMBER                    1
#define DRV_USART_SUPPORT_TRANSMIT_DMA              false
#define DRV_USART_SUPPORT_RECEIVE_DMA               false
#define DRV_USART_INSTANCES_NUMBER                  1

#define DRV_USART_PERIPHERAL_ID_IDX0                USART_ID_1
#define DRV_USART_OPER_MODE_IDX0                    DRV_USART_OPERATION_MODE_NORMAL
#define DRV_USART_OPER_MODE_DATA_IDX0               0x00
#define DRV_USART_INIT_FLAG_WAKE_ON_START_IDX0      false
#define DRV_USART_INIT_FLAG_AUTO_BAUD_IDX0          false
#define DRV_USART_INIT_FLAG_STOP_IN_IDLE_IDX0       false
#define DRV_USART_INIT_FLAGS_IDX0                   0
#define DRV_USART_BRG_CLOCK_IDX0                    4000000
#define DRV_USART_BAUD_RATE_IDX0                    115200
#define DRV_USART_LINE_CNTRL_IDX0                   DRV_USART_LINE_CONTROL_8NONE1
#define DRV_USART_HANDSHAKE_MODE_IDX0               DRV_USART_HANDSHAKE_NONE
#define DRV_USART_XMIT_INT_SRC_IDX0                 INT_SOURCE_USART_1_TRANSMIT
#define DRV_USART_RCV_INT_SRC_IDX0                  INT_SOURCE_USART_1_RECEIVE
#define DRV_USART_ERR_INT_SRC_IDX0                  INT_SOURCE_USART_1_ERROR
#define DRV_USART_XMIT_INT_VECTOR_IDX0              INT_VECTOR_UART1_TX
#define DRV_USART_XMIT_INT_PRIORITY_IDX0            INT_PRIORITY_LEVEL1
#define DRV_USART_XMIT_INT_SUB_PRIORITY_IDX0        INT_SUBPRIORITY_LEVEL0
#define DRV_USART_RCV_INT_VECTOR_IDX0               INT_VECTOR_UART1_RX
#define DRV_USART_RCV_INT_PRIORITY_IDX0             INT_PRIORITY_LEVEL1
#define DRV_USART_RCV_INT_SUB_PRIORITY_IDX0         INT_SUBPRIORITY_LEVEL0
#define DRV_USART_ERR_INT_VECTOR_IDX0               INT_VECTOR_UART1_FAULT
#define DRV_USART_ERR_INT_PRIORITY_IDX0             INT_PRIORITY_LEVEL1
#define DRV_USART_ERR_INT_SUB_PRIORITY_IDX0         INT_SUBPRIORITY_LEVEL0
#define DRV_USART_XMIT_QUEUE_SIZE_IDX0              10
#define DRV_USART_RCV_QUEUE_SIZE_IDX0               10
#define DRV_USART_POWER_STATE_IDX0                  SYS_MODULE_POWER_RUN_FULL



#define GFX_USE_DISPLAY_CONTROLLER_LCC
#define DRV_GFX_LCC_INTERNAL_MEMORY
#define DRV_GFX_LCC_DMA_CHANNEL_INDEX                 DMA_CHANNEL_1
#define DRV_GFX_LCC_DMA_TRIGGER_SOURCE                DMA_TRIGGER_TIMER_5
#define DRV_GFX_LCC_DMA_TRANSFER_LENGTH               2
#define DRV_GFX_LCC_TMR_INDEX                         TMR_ID_5

/*** SPI Driver Configuration ***/
/*** Driver Compilation and static configuration options. ***/
/*** Select SPI compilation units.***/
#define DRV_SPI_POLLED 				1
#define DRV_SPI_ISR 				1
#define DRV_SPI_MASTER 				1
#define DRV_SPI_SLAVE 				0
#define DRV_SPI_RM 				0
#define DRV_SPI_EBM 				1
#define DRV_SPI_8BIT 				1
#define DRV_SPI_16BIT 				0
#define DRV_SPI_32BIT 				0
#define DRV_SPI_DMA 				0

/*** SPI Driver Static Allocation Options ***/
#define DRV_SPI_INSTANCES_NUMBER 		1
#define DRV_SPI_CLIENTS_NUMBER 			1
#define DRV_SPI_ELEMENTS_PER_QUEUE 		10
/* SPI Driver Instance 0 Configuration */
#define DRV_SPI_SPI_ID_IDX0 			SPI_ID_4
#define DRV_SPI_TASK_MODE_IDX0 			DRV_SPI_TASK_MODE_POLLED
#define DRV_SPI_SPI_MODE_IDX0   DRV_SPI_MODE_MASTER
#define DRV_SPI_ALLOW_IDLE_RUN_IDX0     false
#define DRV_SPI_SPI_PROTOCOL_TYPE_IDX0 		DRV_SPI_PROTOCOL_TYPE_STANDARD
#define DRV_SPI_COMM_WIDTH_IDX0 		SPI_COMMUNICATION_WIDTH_8BITS
#define DRV_SPI_SPI_CLOCK_IDX0 			CLK_BUS_PERIPHERAL_2
#define DRV_SPI_BAUD_RATE_IDX0 			8000000
#define DRV_SPI_BUFFER_TYPE_IDX0 		DRV_SPI_BUFFER_TYPE_ENHANCED
#define DRV_SPI_CLOCK_MODE_IDX0 		DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_FALL
#define DRV_SPI_INPUT_PHASE_IDX0 		SPI_INPUT_SAMPLING_PHASE_AT_END
#define DRV_SPI_QUEUE_SIZE_IDX0 		10
#define DRV_SPI_RESERVED_JOB_IDX0 		1

/*** Wi-Fi Driver Configuration ***/
#define WF_CONFIG_MHC
#define TCPIP_IF_MRF24W

#define DRV_WIFI_ASSERT(condition, msg) WF_AssertFunction(condition, msg, __FILE__, __LINE__)

#define DRV_WIFI_SPI_INDEX 0
#define DRV_WIFI_SPI_INSTANCE sysObj.spiObjectIdx0


#define MEBII

#define MRF_INT_SOURCE INT_SOURCE_EXTERNAL_0
#define MRF_INT_VECTOR INT_VECTOR_INT0

#define MRF24W_IN_SPI4
#define MRF24W_USE_INT0_INT
#define MRF24W_SPI_CHN 4

// IO mapping for general control pins, inlcuding CS, RESET and HIBERNATE
// MRF24W in SPI 4 slot
#define WF_CS_TRIS         (TRISEbits.TRISE9)
#define WF_CS_IO           (LATEbits.LATE9)
#define WF_CS_PORT_CHANNEL PORT_CHANNEL_E
#define WF_CS_BIT_POS      9

#define WF_RESET_TRIS         (TRISJbits.TRISJ0)
#define WF_RESET_IO           (LATJbits.LATJ0)
#define WF_RESET_PORT_CHANNEL PORT_CHANNEL_J
#define WF_RESET_BIT_POS      0

#define WF_HIBERNATE_TRIS         (TRISHbits.TRISH14)
#define WF_HIBERNATE_IO           (PORTHbits.RH14)
#define WF_HIBERNATE_PORT_CHANNEL PORT_CHANNEL_H
#define WF_HIBERNATE_BIT_POS      14

#define WF_INT_PRIORITY     3
#define WF_INT_SUBPRIORITY  1
#define WF_INT_PORT_CHANNEL PORT_CHANNEL_D
#define WF_INT_BIT_POS      0

#define WF_DEFAULT_NETWORK_TYPE        DRV_WIFI_NETWORK_TYPE_INFRASTRUCTURE
#define WF_DEFAULT_SSID_NAME           "MicrochipDemoApp"
#define WF_DEFAULT_LIST_RETRY_COUNT    (DRV_WIFI_RETRY_FOREVER) /* Number (1..255) of times to try to connect to the SSID when using Infrastructure network type */
#define WF_DEFAULT_CHANNEL_LIST        {} /* Channel list for Domain - use default in module */

#define WF_DEFAULT_WIFI_SECURITY_MODE  DRV_WIFI_SECURITY_OPEN

#define WF_SAVE_WPS_CREDENTIALS        DRV_WIFI_DISABLED

#define WF_CHECK_LINK_STATUS           WF_DISABLED /* Gets the MRF to check the link status relying on Tx failures. */
#define WF_LINK_LOST_THRESHOLD         40          /* Consecutive Tx transmission failures to be considered the AP is gone away. */

/* 
 * MRF24W FW has a built-in connection manager, and it is enabled by default.
 * If you want to run your own connection manager in host side, you should
 * disable the FW connection manager to avoid possible conflict between the two.
 * Especially these two APIs can be affected if you do not disable it.
 * A) uint16_t DRV_WIFI_Disconnect(void)
 * B) uint16_t DRV_WIFI_Scan(bool scanAll)
 * These APIs will return failure when the conflict occurs.
 */
#define WF_MODULE_CONNECTION_MANAGER   DRV_WIFI_ENABLED

#define WF_DEFAULT_PS_POLL             DRV_WIFI_DISABLED /* DRV_WIFI_ENABLED or DRV_WIFI_DISABLED */
#define WF_SOFTWARE_MULTICAST_FILTER   DRV_WIFI_ENABLED
#define WF_GRATUITOUS_ARP              DRV_WIFI_DISABLED


/*** OVM7690 Driver Configuration ***/
#define GFX_CONFIG_CAMERA
#define DRV_CAMERA_OVM7690_DMA_CHANNEL_INDEX          DMA_CHANNEL_0
#define DRV_CAMERA_OVM7690_INSTANCES_NUMBER           1
#define DRV_CAMERA_OVM7690_CLIENTS_NUMBER             1


// *****************************************************************************
// *****************************************************************************
// Section: Middleware & Other Library Configuration
// *****************************************************************************
// *****************************************************************************

/*** GFX Library Configuration ***/

#define GFX_INSTANCES_NUMBER                            1
#define GFX_SELF_PREEMPTION_LEVEL                       0
#define GFX_CONFIG_COLOR_DEPTH                          16

#define GFX_CONFIG_FONT_FLASH_DISABLE
#define GFX_CONFIG_FONT_EXTERNAL_DISABLE
#define GFX_CONFIG_FONT_RAM_DISABLE
#define GFX_CONFIG_IMAGE_FLASH_DISABLE
#define GFX_CONFIG_IMAGE_EXTERNAL_DISABLE
#define GFX_CONFIG_IMAGE_RAM_DISABLE
#define GFX_CONFIG_RLE_DECODE_DISABLE
#define GFX_CONFIG_IMAGE_PADDING_DISABLE
#define GFX_CONFIG_ALPHABLEND_DISABLE
#define GFX_CONFIG_GRADIENT_DISABLE
#define GFX_CONFIG_PALETTE_DISABLE
#define GFX_CONFIG_FONT_ANTIALIASED_DISABLE
#define GFX_CONFIG_TRANSPARENT_COLOR_DISABLE
#define GFX_CONFIG_PALETTE_EXTERNAL_DISABLE
#define GFX_CONFIG_DOUBLE_BUFFERING_DISABLE
#define GFX_CONFIG_USE_KEYBOARD_DISABLE
#define GFX_CONFIG_GOL_DISABLE

#define HAVE_MCAPI
#define NO_MD5
#define NO_SHA
#define NO_SHA256
#define NO_AES
#define NO_RSA
#define NO_HMAC


// *****************************************************************************
// *****************************************************************************
// Section: TCPIP Stack Configuration
// *****************************************************************************
// *****************************************************************************
#define TCPIP_STACK_USE_IPV4
#define TCPIP_STACK_USE_TCP
#define TCPIP_STACK_USE_UDP
#define TCPIP_STACK_USE_ICMP_CLIENT
#define TCPIP_STACK_DRAM_SIZE		        		39250
#define TCPIP_STACK_DRAM_RUN_LIMIT		    		2048
#define TCPIP_STACK_TICK_RATE		        		5

#define TCPIP_STACK_MALLOC_FUNC		    	malloc

#define TCPIP_STACK_CALLOC_FUNC		    	calloc

#define TCPIP_STACK_FREE_FUNC		    	free

/* Console and Debug Symbols */
#ifndef SYSTEM_CURRENT_ERROR_LEVEL
    #define SYSTEM_CURRENT_ERROR_LEVEL  SYS_ERROR_WARNING
#endif

typedef enum
{
    SYS_MODULE_UART_1,
    SYS_MODULE_UART_2,
	SYS_MODULE_UART_3,
} SYS_MODULE_ID;

#define SYS_CONSOLE_ENABLE					true
//#define SYS_DEBUG_ENABLE					true
#define SYS_DEBUG_PORT            				SYS_MODULE_UART_2
#define SYS_CONSOLE_PORT          				SYS_MODULE_UART_2
#define SYS_CONSOLE_BAUDRATE                            	115200
#define SYS_CONSOLE_BUFFER_LEN                          	64
#define SYS_DEBUG_BAUDRATE                              	115200


/* TCP/IP stack event notification */
#define TCPIP_STACK_USE_EVENT_NOTIFICATION


/*** ARP Configuration ***/
#define TCPIP_ARP_CACHE_ENTRIES                 		5
#define TCPIP_ARP_CACHE_DELETE_OLD		        	true
#define TCPIP_ARP_CACHE_SOLVED_ENTRY_TMO			1200
#define TCPIP_ARP_CACHE_PENDING_ENTRY_TMO			60
#define TCPIP_ARP_CACHE_PENDING_RETRY_TMO			2
#define TCPIP_ARP_CACHE_PERMANENT_QUOTA		    		50
#define TCPIP_ARP_CACHE_PURGE_THRESHOLD		    		75
#define TCPIP_ARP_CACHE_PURGE_QUANTA		    		1
#define TCPIP_ARP_CACHE_ENTRY_RETRIES		    		3
#define TCPIP_ARP_GRATUITOUS_PROBE_COUNT			1
#define TCPIP_ARP_TASK_PROCESS_RATE		        	2


/*** DHCP Configuration ***/
#define TCPIP_STACK_USE_DHCP_CLIENT
#define TCPIP_DHCP_TIMEOUT		        		10
#define TCPIP_DHCP_TASK_TICK_RATE	    			5
#define TCPIP_DHCP_CLIENT_CONNECT_PORT  			68
#define TCPIP_DHCP_SERVER_LISTEN_PORT				67
#define TCPIP_DHCP_CLIENT_ENABLED             			true



/*** DHCP Server Configuration ***/


/*** DNS Client Configuration ***/
#define TCPIP_STACK_USE_DNS
#define TCPIP_DNS_CLIENT_SERVER_TMO					60
#define TCPIP_DNS_CLIENT_TASK_PROCESS_RATE			200
#define TCPIP_DNS_CLIENT_CACHE_ENTRIES				5
#define TCPIP_DNS_CLIENT_CACHE_ENTRY_TMO			0
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV4_ADDRESS		5
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV6_ADDRESS		1
#define TCPIP_DNS_CLIENT_OPEN_ADDRESS_TYPE			IP_ADDRESS_TYPE_IPV4
#define TCPIP_DNS_CLIENT_CACHE_DEFAULT_TTL_VAL		1200
#define TCPIP_DNS_CLIENT_CACHE_UNSOLVED_ENTRY_TMO	10
#define TCPIP_DNS_CLIENT_LOOKUP_RETRY_TMO			5
#define TCPIP_DNS_CLIENT_MAX_HOSTNAME_LEN			32
#define TCPIP_DNS_CLIENT_DELETE_OLD_ENTRIES			true



/*** DNS Server Configuration ***/


/*** FTP Configuration ***/


/*** HTTP Configuration ***/


/*** ICMP Configuration ***/



/*** iperf Configuration ***/



/*** NBNS Configuration ***/
#define TCPIP_STACK_USE_NBNS
#define TCPIP_NBNS_TASK_TICK_RATE   110


/*** SMTP Configuration ***/


/*** SNTP Configuration ***/





/*** TCP Configuration ***/
#define TCPIP_TCP_MAX_SEG_SIZE_TX		        	1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_LOCAL		    		1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_NON_LOCAL			536
#define TCPIP_TCP_SOCKET_DEFAULT_TX_SIZE			512
#define TCPIP_TCP_SOCKET_DEFAULT_RX_SIZE			512
#define TCPIP_TCP_START_TIMEOUT_VAL		        	1000
#define TCPIP_TCP_DELAYED_ACK_TIMEOUT		    		100
#define TCPIP_TCP_FIN_WAIT_2_TIMEOUT		    		5000
#define TCPIP_TCP_KEEP_ALIVE_TIMEOUT		    		10000
#define TCPIP_TCP_CLOSE_WAIT_TIMEOUT		    		200
#define TCPIP_TCP_MAX_RETRIES		            		5
#define TCPIP_TCP_MAX_UNACKED_KEEP_ALIVES			6
#define TCPIP_TCP_MAX_SYN_RETRIES		        	3
#define TCPIP_TCP_AUTO_TRANSMIT_TIMEOUT_VAL			40
#define TCPIP_TCP_WINDOW_UPDATE_TIMEOUT_VAL			200
#define TCPIP_TCP_MAX_SOCKETS		            		10
#define TCPIP_TCP_TASK_TICK_RATE		        	5


/*** announce Configuration ***/
#define TCPIP_STACK_USE_ANNOUNCE
#define TCPIP_ANNOUNCE_MAX_PAYLOAD 	512
#define TCPIP_ANNOUNCE_TASK_RATE    333


/*** TCPIP MAC Configuration ***/
#define TCPIP_EMAC_TX_DESCRIPTORS				8
#define TCPIP_EMAC_RX_DESCRIPTORS				10
#define TCPIP_EMAC_RX_DEDICATED_BUFFERS				4
#define TCPIP_EMAC_RX_INIT_BUFFERS				    0
#define TCPIP_EMAC_RX_LOW_THRESHOLD				    1
#define TCPIP_EMAC_RX_LOW_FILL				        2
#define TCPIP_EMAC_RX_BUFF_SIZE		    			1536
#define TCPIP_EMAC_RX_MAX_FRAME		    			1536
#define TCPIP_EMAC_RX_FRAGMENTS		    			1
#define TCPIP_EMAC_ETH_OPEN_FLAGS       			\
                                                    TCPIP_ETH_OPEN_AUTO |\
                                                    TCPIP_ETH_OPEN_FDUPLEX |\
                                                    TCPIP_ETH_OPEN_HDUPLEX |\
                                                    TCPIP_ETH_OPEN_100 |\
                                                    TCPIP_ETH_OPEN_10 |\
                                                    TCPIP_ETH_OPEN_MDIX_AUTO |\
                                                    0
#define TCPIP_EMAC_PHY_CONFIG_FLAGS     			\
                                                    DRV_ETHPHY_CFG_AUTO | \
                                                    0                                                    
#define TCPIP_EMAC_PHY_LINK_INIT_DELAY  			500
#define TCPIP_EMAC_PHY_ADDRESS		    			0
#define TCPIP_EMAC_INTERRUPT_MODE        			true
#define DRV_ETHPHY_INSTANCES_NUMBER				1
#define DRV_ETHPHY_CLIENTS_NUMBER				1
#define DRV_ETHPHY_INDEX		        		1
#define DRV_ETHPHY_PERIPHERAL_ID				1
#define DRV_ETHPHY_NEG_INIT_TMO		    			1
#define DRV_ETHPHY_NEG_DONE_TMO		    			2000
#define DRV_ETHPHY_RESET_CLR_TMO				500
#define DRV_ETHMAC_INSTANCES_NUMBER				1
#define DRV_ETHMAC_CLIENTS_NUMBER				1
#define DRV_ETHMAC_INDEX	    	    			1
#define DRV_ETHMAC_PERIPHERAL_ID				1
#define DRV_ETHMAC_INTERRUPT_VECTOR				INT_VECTOR_ETHERNET
#define DRV_ETHMAC_INTERRUPT_SOURCE				INT_SOURCE_ETH_1
#define DRV_ETHMAC_POWER_STATE		    			SYS_MODULE_POWER_RUN_FULL

#define DRV_ETHMAC_INTERRUPT_MODE        			true


/*** TCP/IP Reboot Configuration ***/


/*** telnet Configuration ***/


/*** UDP Configuration ***/
#define TCPIP_UDP_MAX_SOCKETS		                	10
#define TCPIP_UDP_SOCKET_DEFAULT_TX_SIZE		    	512
#define TCPIP_UDP_SOCKET_DEFAULT_TX_QUEUE_LIMIT    	 	3
#define TCPIP_UDP_SOCKET_DEFAULT_RX_QUEUE_LIMIT			3
#define TCPIP_UDP_SOCKET_POOL_BUFFERS		        	4
#define TCPIP_UDP_SOCKET_POOL_BUFFER_SIZE		    	512

#define TCPIP_UDP_USE_TX_CHECKSUM             			true

#define TCPIP_UDP_USE_RX_CHECKSUM             			true

#define TCPIP_STACK_USE_ZEROCONF_LINK_LOCAL
#define TCPIP_ZC_LL_PROBE_WAIT 1
#define TCPIP_ZC_LL_PROBE_MIN 1
#define TCPIP_ZC_LL_PROBE_MAX 2
#define TCPIP_ZC_LL_PROBE_NUM 3
#define TCPIP_ZC_LL_ANNOUNCE_WAIT 2
#define TCPIP_ZC_LL_ANNOUNCE_NUM 2
#define TCPIP_ZC_LL_ANNOUNCE_INTERVAL 2
#define TCPIP_ZC_LL_MAX_CONFLICTS 10
#define TCPIP_ZC_LL_RATE_LIMIT_INTERVAL 60
#define TCPIP_ZC_LL_DEFEND_INTERVAL 10
#define TCPIP_ZC_LL_IPV4_LLBASE 0xa9fe0100
#define TCPIP_ZC_LL_IPV4_LLBASE_MASK 0x0000FFFF
#define TCPIP_ZC_LL_TASK_TICK_RATE 333

/*** Network Configuration Index 0 ***/
#define TCPIP_NETWORK_DEFAULT_INTERFACE_NAME 			"PIC32INT"
#define TCPIP_IF_PIC32INT
#define TCPIP_NETWORK_DEFAULT_HOST_NAME 			"MCHPBOARD_E"
#define TCPIP_NETWORK_DEFAULT_MAC_ADDR	 			0
#define TCPIP_NETWORK_DEFAULT_IP_ADDRESS 			"192.168.100.115"
#define TCPIP_NETWORK_DEFAULT_IP_MASK 				"255.255.255.0"
#define TCPIP_NETWORK_DEFAULT_GATEWAY	 			"192.168.100.1"
#define TCPIP_NETWORK_DEFAULT_DNS 				"192.168.100.1"
#define TCPIP_NETWORK_DEFAULT_SECOND_DNS 			"0.0.0.0"
#define TCPIP_NETWORK_DEFAULT_POWER_MODE 			"full"
#define TCPIP_NETWORK_DEFAULT_INTERFACE_FLAGS   		TCPIP_NETWORK_CONFIG_DHCP_CLIENT_ON
#define TCPIP_NETWORK_DEFAULT_IPV6_ADDRESS 			0
#define TCPIP_NETWORK_DEFAULT_IPV6_PREFIX_LENGTH 		0
#define TCPIP_NETWORK_DEFAULT_IPV6_GATEWAY 		        0

/*** tcpip_cmd Configuration ***/




// *****************************************************************************
/* BSP Configuration Options
*/
#define BSP_OSC_FREQUENCY 24000000

#endif // _SYSTEM_CONFIG_H
/*******************************************************************************
 End of File
*/

