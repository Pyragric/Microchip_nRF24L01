/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F1575
        Driver Version    :  2.00
*/

#include "01 - SRC/05_MCC_16F1575/mcc.h"
#include "01 - SRC/01_Appli/Application.h"
#include "01 - SRC/03_NRF24L01/NRF24L01.h"
/*
                         Main application
 */
void main(void)
{
    uint16_t Timeout_1s = 0;
    uint16_t Timeout_100ms = 0;
    uint16_t Timeout_10ms = 0;
    uint8_t cnter = 0;
    uint8_t AppPayload[8] = {0};
    // initialize the device
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    PWM1_Start();
    AppInit();
    NRF24L01_Init();
    NRF_PrintDetails();
    UART_crlf();
    NRF_SetAddrWidth(5u);
    NRF_SetRFDataRate(NRF_1MBPS);
    NRF_SetRFPower(NRF_PWR_MAX);
    NRF_SetRFChannel(100);
    NRF_OpenReadingPipe(0, "Node0", 8, 1, 1);
    NRF_SetTxAddr("Node0");
    NRF_SetPrimaryAs(NRF_PRX);
    NRF_SetMaskIRQ(NRF_IRQ_RX_DR);
    NRF_StartListening();
    __delay_ms(10);
    NRF_PrintDetails();
    
    while (1)
    {
        if (TICK_1MS > Timeout_10ms)
        {
            /*-----------------------------*/
            /*          10MS TASK          */
            /*-----------------------------*/
            PWM1_DutyCycleSet(SineTab[cnter]);
            PWM1_LoadBufferSet();
            cnter++;
            if (NRF_Available(0))
            {
                PrintUART("New data available: ");
                NRF_ReadPayload(AppPayload, 8u);
                PrintPayload(AppPayload, 8u, UART_HEX);
            }
            NRF_StatusHandler();
            Timeout_10ms = TICK_1MS + 10u;
        }
        else
        {
        }
        
        if (TICK_1MS > Timeout_100ms)
        {
            /*-----------------------------*/
            /*          100MS TASK         */
            /*-----------------------------*/
            
            Timeout_100ms = TICK_1MS + 100u;
        }
        else
        {
        }
        
        
        if (TICK_1MS > Timeout_1s)
        {
            /*-----------------------------*/
            /*         1000MS TASK         */
            /*-----------------------------*/
//            UART_PNbase(NRF_GetStatus(), UART_BIN, "\r\n");
            Timeout_1s = TICK_1MS + 1000u;
        }
        else
        {
        }
    }
}
/**
 End of File
*/