/*******************************************************************************
  I2C Driver Functions for Static Single Instance Driver

  Company:
    Microchip Technology Inc.

  File Name:
    drv_i2c_static.c
	
  Summary:
    I2C driver impementation for the static single instance driver.

  Description:
    The I2C device driver provides a simple interface to manage the I2C
    modules on Microchip microcontrollers. This file contains implemenation
    for the I2C driver.
    
  Remarks:
    Static interfaces incorporate the driver instance number within the names
    of the routines, eliminating the need for an object ID or object handle.
    
    Static single-open interfaces also eliminate the need for the open handle.
*******************************************************************************/

//DOM-IGNORE-BEGIN
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
#include "framework/driver/i2c/drv_i2c_static.h"


static uint32_t ReadCoreTimer(void);

static uint32_t ReadCoreTimer()
{
    volatile uint32_t timer;

    // get the count reg
    asm volatile("mfc0   %0, $9" : "=r"(timer));

    return(timer);
}

#define BAUD_RATE_0         50000
#define BRG_1_TIME_0        SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_1)/(2*BAUD_RATE_0)
// *****************************************************************************
// *****************************************************************************
// Section: Instance 0 static driver functions
// *****************************************************************************
// *****************************************************************************
void DRV_I2C0_Initialize(void)
{
    /* Initialize I2C0 */
    PLIB_I2C_BaudRateSet(I2C_ID_1, SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2), 50000);
    PLIB_I2C_StopInIdleDisable(I2C_ID_1);

    /* Low frequency is enabled (**NOTE** PLIB function logic reverted) */
    PLIB_I2C_HighFrequencyEnable(I2C_ID_1);

              /* set SDA to 0 */
    PLIB_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_15);
              /* set SCL to 1 */
    PLIB_PORTS_PinSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_14);
              /* set SDA to O/P */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_15);
              /* set SCL to I/P */
    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_14);
    /* Enable I2C0 */
    PLIB_I2C_Enable(I2C_ID_1);
}

void DRV_I2C0_DeInitialize(void)
{
    /* Disable I2C0 */
    PLIB_I2C_Disable(I2C_ID_1);
}

// *****************************************************************************
// Section: Instance 0 Byte Transfer Functions (Master/Slave)
// *****************************************************************************
bool DRV_I2C0_SetUpByteRead(void)
{
    /* Check for receive overflow */
    if ( PLIB_I2C_ReceiverOverflowHasOccurred(I2C_ID_1))  
    {
        PLIB_I2C_ReceiverOverflowClear(I2C_ID_1); 
        return false;
    }
	
    /* Initiate clock to receive */
    PLIB_I2C_MasterReceiverClock1Byte(I2C_ID_1);
    return true;
}

bool DRV_I2C0_WaitForReadByteAvailable(void)
{
	/* Wait for Receive Buffer Full */
    if(PLIB_I2C_ReceivedByteIsAvailable(I2C_ID_1))
       return true;
    else
       return false;
}

uint8_t DRV_I2C0_ByteRead(void)
{	
    /* Return received value */
    return (PLIB_I2C_ReceivedByteGet(I2C_ID_1));
}

bool DRV_I2C0_ByteWrite(const uint8_t byte)
{
    /* Check for receive overflow */
    if ( PLIB_I2C_ReceiverOverflowHasOccurred(I2C_ID_1))  
    {
        PLIB_I2C_ReceivedByteGet(I2C_ID_1);
        PLIB_I2C_ReceiverOverflowClear(I2C_ID_1); 
        return false;
    }
    
    /* Check for transmit overflow */
    if (PLIB_I2C_TransmitterOverflowHasOccurred(I2C_ID_1))
    {
        PLIB_I2C_TransmitterOverflowClear(I2C_ID_1);
        return false;
    }
    
    /* Transmit byte */
    PLIB_I2C_TransmitterByteSend(I2C_ID_1, byte);
    
    return true;
}

bool DRV_I2C0_WaitForByteWriteToComplete(void)
{
    /* Check for transmit busy */
    while(PLIB_I2C_TransmitterIsBusy(I2C_ID_1));

    /* Check to see if transmit has completed */
    while(!PLIB_I2C_TransmitterByteHasCompleted(I2C_ID_1));
	
    return true;
}

bool DRV_I2C0_WriteByteAcknowledged(void)
{
    /* Check to see if transmit ACKed = true or NACKed = false */
    if (PLIB_I2C_TransmitterByteWasAcknowledged(I2C_ID_1))
       return true;
    else
       return false;
}

// *****************************************************************************
// Section: Instance 0 I2C Master Mode Functions
// *****************************************************************************
void DRV_I2C0_BaudRateSet(I2C_BAUD_RATE baudRate)
{
    /* Disable I2C0 */
    PLIB_I2C_Disable(I2C_ID_1);
    
    /* Change baud rate */
    PLIB_I2C_BaudRateSet(I2C_ID_1, SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2), baudRate);

    /* Low frequency is enabled (**NOTE** PLIB function revereted) */
    PLIB_I2C_HighFrequencyEnable(I2C_ID_1);
 
    /* Enable I2C0 */
    PLIB_I2C_Enable(I2C_ID_1);       
}

bool DRV_I2C0_MasterBusIdle(void)
{
    if (PLIB_I2C_BusIsIdle(I2C_ID_1))
       return true;
    else
       return false;
}

bool DRV_I2C0_MasterStart(void)
{
    /* Check for receive overflow */
    if ( PLIB_I2C_ReceiverOverflowHasOccurred(I2C_ID_1))  
    {
        PLIB_I2C_ReceiverOverflowClear(I2C_ID_1); 
        return false;
    }
    
    /* Check for transmit overflow */
    if (PLIB_I2C_TransmitterOverflowHasOccurred(I2C_ID_1))
    {
        PLIB_I2C_TransmitterOverflowClear(I2C_ID_1);
        return false;
    }

    /* Check for bus collision errors */
    if (PLIB_I2C_ArbitrationLossHasOccurred(I2C_ID_1))
    {
        return false;
    }
    
    /* Issue start */
    PLIB_I2C_MasterStart(I2C_ID_1);
       
    return true;
}

bool DRV_I2C0_WaitForStartComplete(void)
{
    /* Wait for start/restart sequence to finish  (hardware clear) */
    while(!PLIB_I2C_StartWasDetected(I2C_ID_1));
	 
    return true;
}

bool DRV_I2C0_MasterRestart(void)
{
    /* Check for receive overflow */
    if ( PLIB_I2C_ReceiverOverflowHasOccurred(I2C_ID_1))  
    {
        PLIB_I2C_ReceiverOverflowClear(I2C_ID_1); 
        return false;
    }
    
    /* Check for transmit overflow */
    if (PLIB_I2C_TransmitterOverflowHasOccurred(I2C_ID_1))
    {
        PLIB_I2C_TransmitterOverflowClear(I2C_ID_1);
        return false;
    }
    
    /* Issue restart */
    PLIB_I2C_MasterStartRepeat(I2C_ID_1); 
       
    return true;    
}

bool DRV_I2C0_MasterStop(void)
{   
    uint32_t starttime;
	/* Check for transmit overflow */
    if (PLIB_I2C_TransmitterOverflowHasOccurred(I2C_ID_1))
    {
        PLIB_I2C_TransmitterOverflowClear(I2C_ID_1);
        return false;
    }
    

    /* Wait 1 BRG */
    starttime = ReadCoreTimer();
    while(ReadCoreTimer()-starttime < BRG_1_TIME_0);

    /* Disable I2C */
    PLIB_I2C_Disable(I2C_ID_1);

    /* Wait 2 BRG */
    starttime = ReadCoreTimer();
    while(ReadCoreTimer()- starttime < BRG_1_TIME_0);

    /* Set SDA as I/P */
    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_15);
    /* Wait 3 BRG */
    starttime = ReadCoreTimer();
    while(ReadCoreTimer()- starttime < BRG_1_TIME_0);
	
    PLIB_I2C_Enable(I2C_ID_1);
              /* set SDA to 0 */
    PLIB_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_15);
              /* set SCL to 1 */
    PLIB_PORTS_PinSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_14);
              /* set SDA to O/P */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_15);
              /* set SCL to I/P */
    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_A, PORTS_BIT_POS_14);
    
    return true;
}

bool DRV_I2C0_WaitForStopComplete(void)
{
		return true;
}

void DRV_I2C0_MasterACKSend(void)
{
    /* Check if receive is ready to ack */
    if ( PLIB_I2C_MasterReceiverReadyToAcknowledge(I2C_ID_1) )
    {
        PLIB_I2C_ReceivedByteAcknowledge (I2C_ID_1, true);
    }    

}

void DRV_I2C0_MasterNACKSend(void)
{
    /* Check if receive is ready to nack */
    if ( PLIB_I2C_MasterReceiverReadyToAcknowledge(I2C_ID_1) )
    {
       PLIB_I2C_ReceivedByteAcknowledge (I2C_ID_1, false);
    }    
}

bool DRV_I2C0_WaitForACKOrNACKComplete(void)
{
    /* Check for ACK/NACK to complete */
    while(PLIB_I2C_ReceiverByteAcknowledgeHasCompleted(I2C_ID_1));
	 
    return true;
}



/*******************************************************************************
 End of File
*/