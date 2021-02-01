/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

#ifndef SOFT_SPI_H
#define	SOFT_SPI_H

#include <xc.h>
#include "../05_MCC_16F1575/mcc.h"

#define SOFT_SPI_MOSI   MOSI_LAT
#define SOFT_SPI_MISO   MISO_GetValue()
#define SOFT_SPI_SCK    SCK_LAT

uint8_t SoftSPI_Exchange (uint8_t TxByte);
void timerDelay(void);

#endif	/* SOFT_SPI_H */

