/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F1575
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set CS_ aliases
#define CS__TRIS                 TRISAbits.TRISA2
#define CS__LAT                  LATAbits.LATA2
#define CS__PORT                 PORTAbits.RA2
#define CS__WPU                  WPUAbits.WPUA2
#define CS__OD                   ODCONAbits.ODA2
#define CS__ANS                  ANSELAbits.ANSA2
#define CS__SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define CS__SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define CS__Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define CS__GetValue()           PORTAbits.RA2
#define CS__SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define CS__SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define CS__SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define CS__ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define CS__SetPushPull()        do { ODCONAbits.ODA2 = 0; } while(0)
#define CS__SetOpenDrain()       do { ODCONAbits.ODA2 = 1; } while(0)
#define CS__SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define CS__SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set CE aliases
#define CE_TRIS                 TRISAbits.TRISA4
#define CE_LAT                  LATAbits.LATA4
#define CE_PORT                 PORTAbits.RA4
#define CE_WPU                  WPUAbits.WPUA4
#define CE_OD                   ODCONAbits.ODA4
#define CE_ANS                  ANSELAbits.ANSA4
#define CE_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define CE_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define CE_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define CE_GetValue()           PORTAbits.RA4
#define CE_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define CE_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define CE_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define CE_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define CE_SetPushPull()        do { ODCONAbits.ODA4 = 0; } while(0)
#define CE_SetOpenDrain()       do { ODCONAbits.ODA4 = 1; } while(0)
#define CE_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define CE_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set IRQ_ aliases
#define IRQ__TRIS                 TRISAbits.TRISA5
#define IRQ__LAT                  LATAbits.LATA5
#define IRQ__PORT                 PORTAbits.RA5
#define IRQ__WPU                  WPUAbits.WPUA5
#define IRQ__OD                   ODCONAbits.ODA5
#define IRQ__SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define IRQ__SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define IRQ__Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define IRQ__GetValue()           PORTAbits.RA5
#define IRQ__SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define IRQ__SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define IRQ__SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define IRQ__ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define IRQ__SetPushPull()        do { ODCONAbits.ODA5 = 0; } while(0)
#define IRQ__SetOpenDrain()       do { ODCONAbits.ODA5 = 1; } while(0)

// get/set MOSI aliases
#define MOSI_TRIS                 TRISCbits.TRISC0
#define MOSI_LAT                  LATCbits.LATC0
#define MOSI_PORT                 PORTCbits.RC0
#define MOSI_WPU                  WPUCbits.WPUC0
#define MOSI_OD                   ODCONCbits.ODC0
#define MOSI_ANS                  ANSELCbits.ANSC0
#define MOSI_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define MOSI_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define MOSI_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define MOSI_GetValue()           PORTCbits.RC0
#define MOSI_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define MOSI_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define MOSI_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define MOSI_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define MOSI_SetPushPull()        do { ODCONCbits.ODC0 = 0; } while(0)
#define MOSI_SetOpenDrain()       do { ODCONCbits.ODC0 = 1; } while(0)
#define MOSI_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define MOSI_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set MISO aliases
#define MISO_TRIS                 TRISCbits.TRISC1
#define MISO_LAT                  LATCbits.LATC1
#define MISO_PORT                 PORTCbits.RC1
#define MISO_WPU                  WPUCbits.WPUC1
#define MISO_OD                   ODCONCbits.ODC1
#define MISO_ANS                  ANSELCbits.ANSC1
#define MISO_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define MISO_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define MISO_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define MISO_GetValue()           PORTCbits.RC1
#define MISO_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define MISO_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define MISO_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define MISO_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define MISO_SetPushPull()        do { ODCONCbits.ODC1 = 0; } while(0)
#define MISO_SetOpenDrain()       do { ODCONCbits.ODC1 = 1; } while(0)
#define MISO_SetAnalogMode()      do { ANSELCbits.ANSC1 = 1; } while(0)
#define MISO_SetDigitalMode()     do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set SCK aliases
#define SCK_TRIS                 TRISCbits.TRISC2
#define SCK_LAT                  LATCbits.LATC2
#define SCK_PORT                 PORTCbits.RC2
#define SCK_WPU                  WPUCbits.WPUC2
#define SCK_OD                   ODCONCbits.ODC2
#define SCK_ANS                  ANSELCbits.ANSC2
#define SCK_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define SCK_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define SCK_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define SCK_GetValue()           PORTCbits.RC2
#define SCK_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define SCK_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define SCK_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define SCK_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define SCK_SetPushPull()        do { ODCONCbits.ODC2 = 0; } while(0)
#define SCK_SetOpenDrain()       do { ODCONCbits.ODC2 = 1; } while(0)
#define SCK_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define SCK_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set RC3 procedures
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()              PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()             do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()           do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode()         do { ANSELCbits.ANSC3 = 1; } while(0)
#define RC3_SetDigitalMode()        do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set RC4 procedures
#define RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()              PORTCbits.RC4
#define RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetPullup()             do { WPUCbits.WPUC4 = 1; } while(0)
#define RC4_ResetPullup()           do { WPUCbits.WPUC4 = 0; } while(0)

// get/set RC5 procedures
#define RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RC5_GetValue()              PORTCbits.RC5
#define RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RC5_SetPullup()             do { WPUCbits.WPUC5 = 1; } while(0)
#define RC5_ResetPullup()           do { WPUCbits.WPUC5 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCAF5 pin functionality
 * @Example
    IOCAF5_ISR();
 */
void IOCAF5_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCAF5 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCAF5 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF5_SetInterruptHandler(MyInterruptHandler);

*/
void IOCAF5_SetInterruptHandler(void (* InterruptHandler)(void));

/**
  @Summary
    Dynamic Interrupt Handler for IOCAF5 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCAF5_SetInterruptHandler() method.
    This handler is called every time the IOCAF5 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF5_SetInterruptHandler(IOCAF5_InterruptHandler);

*/
extern void (*IOCAF5_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCAF5 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCAF5_SetInterruptHandler() method.
    This handler is called every time the IOCAF5 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCAF5_SetInterruptHandler(IOCAF5_DefaultInterruptHandler);

*/
void IOCAF5_DefaultInterruptHandler(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/