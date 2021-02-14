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
    uint8_t AppPayload[8] = {0};
    uint8_t CurrentValue = 0;
    // initialize the device
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();
    PWM1_Start();
    AppInit();
    __delay_ms(10);
    
    while (1)
    {
        if (TICK_1MS > Timeout_10ms)
        {
            /*-----------------------------*/
            /*          10MS TASK          */
            /*-----------------------------*/
            if (NRF_Available(0))
            {
                NRF_ReadPayload(AppPayload, 8u);
                if (IsFreeAmount(50) == 1u)
                {
                    LinearTransiant(AppPayload[0], CurrentValue);
                    CurrentValue = AppPayload[0];
                }
                else { /* Do nothing */ }
            }
            else { /* Do nothing */ }
            NRF_StatusHandler();
            enQueue(AppPayload[0]);
            PWM1_DutyCycleSet(deQueue());
            PWM1_LoadBufferSet();
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