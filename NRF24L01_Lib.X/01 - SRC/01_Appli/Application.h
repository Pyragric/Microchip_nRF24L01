/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

#ifndef APPLICATION_H
#define	APPLICATION_H

#include <xc.h>
#include "../05_MCC_16F1575/mcc.h"

#define UART_BIN 2u
#define UART_DEC 10u
#define UART_HEX 16u
#define UART_CHAR 0u
#define QUEUE_BUF_SIZE 256
typedef struct
{
    int16_t Front;
    int16_t Rear;
    uint8_t *Buffer;
    uint16_t BufferSize;
}t_Circular_queue;

extern const uint8_t SineTab[];
void AppInit(void);
void QueueInit(void);
uint8_t IsFull(void);
uint8_t IsEmpty(void);
uint8_t IsFreeAmount(uint8_t Amount);
void enQueue(uint8_t element);
uint8_t deQueue(void);
void LinearTransiant(uint8_t NewValue, uint8_t OldValue);
void PrintUART (char *string);
void PrintPayload(uint8_t *Buffer, uint8_t Length, uint8_t format);
void UART_PNbase (uint32_t Nbre, uint8_t Base, char *string);
void UART_crlf(void);


#endif	/* APPLICATION_H */

