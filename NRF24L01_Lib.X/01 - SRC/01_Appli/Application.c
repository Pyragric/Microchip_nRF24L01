#include "Application.h"
#include "../03_NRF24L01/NRF24L01.h"

const char *g = "0123456789ABCDEF";
const uint8_t SineTab[256] = {
0x7F, 0x82, 0x85, 0x88, 0x8B, 0x8F, 0x92, 0x95, 0x98, 0x9B, 0x9E, 0xA1, 0xA4, 0xA7, 0xAA, 0xAD, 0xB0, 0xB3, 0xB5, 0xB8, 0xBB, 0xBE, 0xC1, 0xC3, 0xC6, 0xC8, 0xCB, 0xCD, 0xD0, 0xD2, 0xD5, 0xD7, 0xD9, 0xDB, 0xDD, 0xDF, 0xE1, 0xE3, 0xE5, 0xE7, 0xE9, 0xEB, 0xEC, 0xEE, 0xEF, 0xF1, 0xF2, 0xF3, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9, 0xFA, 0xFA, 0xFB, 0xFC, 0xFC, 0xFD, 0xFD, 0xFD, 0xFE, 0xFE, 0xFE,
0xFE, 0xFE, 0xFE, 0xFE, 0xFD, 0xFD, 0xFC, 0xFC, 0xFB, 0xFB, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF1, 0xF0, 0xEF, 0xED, 0xEB, 0xEA, 0xE8, 0xE6, 0xE4, 0xE2, 0xE0, 0xDE, 0xDC, 0xDA, 0xD8, 0xD6, 0xD3, 0xD1, 0xCF, 0xCC, 0xCA, 0xC7, 0xC4, 0xC2, 0xBF, 0xBC, 0xBA, 0xB7, 0xB4, 0xB1, 0xAE, 0xAB, 0xA8, 0xA6, 0xA3, 0x9F, 0x9C, 0x99, 0x96, 0x93, 0x90, 0x8D, 0x8A, 0x87, 0x84, 0x81,
0x7D, 0x7A, 0x77, 0x74, 0x71, 0x6E, 0x6B, 0x68, 0x65, 0x62, 0x5F, 0x5B, 0x58, 0x56, 0x53, 0x50, 0x4D, 0x4A, 0x47, 0x44, 0x42, 0x3F, 0x3C, 0x3A, 0x37, 0x34, 0x32, 0x2F, 0x2D, 0x2B, 0x28, 0x26, 0x24, 0x22, 0x20, 0x1E, 0x1C, 0x1A, 0x18, 0x16, 0x14, 0x13, 0x11, 0x0F, 0x0E, 0x0D, 0x0B, 0x0A, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x04, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0B, 0x0C, 0x0D, 0x0F, 0x10, 0x12, 0x13, 0x15, 0x17, 0x19, 0x1B, 0x1D, 0x1F, 0x21, 0x23, 0x25, 0x27, 0x29, 0x2C, 0x2E, 0x31, 0x33, 0x36, 0x38, 0x3B, 0x3D, 0x40, 0x43, 0x46, 0x49, 0x4B, 0x4E, 0x51, 0x54, 0x57, 0x5A, 0x5D, 0x60, 0x63, 0x66, 0x69, 0x6C, 0x6F, 0x73, 0x76, 0x79, 0x7C, 0x7F,
};

static uint8_t CircularBuffer[QUEUE_BUF_SIZE] = {0};
static t_Circular_queue MyQueue;

void AppInit(void)
{
    PrintUART("Initialization\r\n");
    NRF24L01_Init();
    QueueInit();
    NRF_SetAddrWidth(5u);
    NRF_SetRFDataRate(NRF_1MBPS);
    NRF_SetRFPower(NRF_PWR_MAX);
    NRF_SetRFChannel(100u);
    NRF_OpenReadingPipe(0, "Node0", 8u, 1u, 1u);
    NRF_SetPrimaryAs(NRF_PRX);
    NRF_SetMaskIRQ(NRF_IRQ_RX_DR);
    NRF_SetART(10u, 4u);
    NRF_StartListening();
}

void QueueInit(void)
{
    MyQueue.BufferSize = QUEUE_BUF_SIZE - 1u;
    MyQueue.Front = -1;
    MyQueue.Rear = -1;
}

uint8_t IsFull(void)
{
    return ((MyQueue.Front == (MyQueue.Rear + 1)) || ((MyQueue.Front == 0) && (MyQueue.Rear == (MyQueue.BufferSize - 1)))) ? 1u : 0u;
}

uint8_t IsEmpty(void)
{
    return (MyQueue.Front == -1) ? 1u : 0u;
}

uint8_t KeepDistance(uint8_t amount)
{
    int16_t diff;
    uint8_t retVal = 1u;
    if (MyQueue.Rear > MyQueue.Front)
    {
        diff = MyQueue.Rear - MyQueue.Front;
        if (diff > amount)
        {
            retVal = 0u;
        }
        else
        {  }
        
    }
    else
    {  }
    return retVal;
}

void enQueue(uint8_t element)
{
    if (IsFull() == 0u)
    {
        MyQueue.Front += (MyQueue.Front == -1) ? 1 : 0;
        MyQueue.Rear = (MyQueue.Rear + 1) % MyQueue.BufferSize;
        CircularBuffer[MyQueue.Rear] = element;
    }
    else { /* Do Nothing */ }
}

uint8_t deQueue(void)
{
    uint8_t element = 0u;
    if (IsEmpty() == 0u)
    {
        element = CircularBuffer[MyQueue.Front];
        if (MyQueue.Front == MyQueue.Rear)
        {
            MyQueue.Front = -1;
            MyQueue.Rear = -1;
        }
        else
        {
            MyQueue.Front = (MyQueue.Front + 1) % MyQueue.BufferSize;
        }
    }
    return element;
}

void LinearTransiant(uint8_t NewValue, uint8_t OldValue)
{
    uint16_t diff;
    uint8_t a, i;
    float Slope;
    if (NewValue != OldValue)
    {
        if (NewValue > OldValue)
        {
            diff = NewValue - OldValue;
            Slope = (float)diff / 50.0;
            for (i = 1; i < 50; i++)
            {
                a = (uint8_t)(i * Slope) + OldValue;
                enQueue(a);
            }
            enQueue(NewValue);
        }
        else
        {
            diff = OldValue - NewValue;
            Slope = (float)diff / 50.0;
            for (i = 1; i < 50; i++)
            {
                a = OldValue - (uint8_t)(i * Slope);
                enQueue(a);
            }
            enQueue(NewValue);
        }
    }
    else { /* Do Nothing */ }
    
}

void PrintUART (char *string)
{
    uint16_t i = 0;
    while(string[i] != 0u && i < 255u)
    {
        EUSART_Write(string[i]);
        i++;
    }
}

void PrintPayload(uint8_t *Buffer, uint8_t Length, uint8_t format)
{
    uint8_t i = 0;
    for (i = 0; i < Length; i++)
    {
        if (format == UART_CHAR)
        {
            EUSART_Write(Buffer[i]);
        }
        else
        {
            UART_PNbase(Buffer[i], format, " ");
        }
    }
    UART_crlf();
}

void UART_PNbase(uint32_t Nbre, uint8_t Base, char *string)
{
    uint8_t i = 0u;
    uint8_t buf[32];

    do {
        buf[i] = g[Nbre % Base];
        Nbre = Nbre / Base;
        i++;
    } while (Nbre);

    do {
        i--;
        EUSART_Write(buf[i]);
    } while (i > 0u);
    if (*string != 0u)
    {
        PrintUART(string);
    }
    else
    {
    }
}

void UART_crlf(void)
{
    EUSART_Write('\r');
    EUSART_Write('\n');
}