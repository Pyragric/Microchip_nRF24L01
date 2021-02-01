#include "Soft_SPI.h"

uint8_t SoftSPI_Exchange (uint8_t TxByte)
{
    uint8_t i, j;
    uint8_t RxByte = 0u;
    j = 7u;
    for (i = 0; i < 8; i++)
    {
        SOFT_SPI_MOSI = (TxByte >> j) & 1u; /* MSB first -> */
        __delay_us(50);
        SOFT_SPI_SCK = 1;
        __delay_us(50);
        RxByte |= (SOFT_SPI_MISO & 1u) << j; /* <- LSB first */
        SOFT_SPI_SCK = 0;
        j--;
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