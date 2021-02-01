#include "Soft_SPI.h"

uint8_t SoftSPI_Exchange (uint8_t TxByte)
{
    uint8_t i;
    uint8_t RxByte = 0u;
    for (i = 7; i > 0; i--)
    {
        SOFT_SPI_MOSI = (TxByte >> i) & 1u;
        __delay_us(50);
        SOFT_SPI_SCK = 1;
        __delay_us(50);
        RxByte |= (SOFT_SPI_MISO & 1u) << i;
        SOFT_SPI_SCK = 0;
    }
    return RxByte;
}

void timerDelay(void)
{
    TMR1_StartTimer();
    while (!TMR1_HasOverflowOccured());
    TMR1_StopTimer();
    TMR1_Reload();
}