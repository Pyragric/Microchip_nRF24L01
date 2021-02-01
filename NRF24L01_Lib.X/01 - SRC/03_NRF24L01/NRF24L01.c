#include "NRF24L01.h"

static uint8_t (*p_NRF_SPI_Exchange)(uint8_t);

void NRF24L01_Init(void)
{
    Set_SPI_Handler(SoftSPI_Exchange);
    NRF_PIN_CE = 0;
    NRF_PIN_CSN = 1;
}

void NRF_Set_PRX(t_NRF_Setup *MyNRF)
{
    NRF_Read_Register(REG_NRF_CONFIG, &MyNRF->CONFIG, 1u);
    MyNRF->CONFIG |= NRF_PRX;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_CONFIG, &MyNRF->CONFIG, 1u);
}

void NRF_Set_PTX(t_NRF_Setup *MyNRF)
{
    NRF_Read_Register(REG_NRF_CONFIG, &MyNRF->CONFIG, 1u);
    MyNRF->CONFIG &= ~NRF_PRX;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_CONFIG, &MyNRF->CONFIG, 1u);
}

void NRF_SetRFChannel(t_NRF_Setup *MyNRF, uint8_t RF_Channel)
{
    MyNRF->RF_CHANNEL = (RF_Channel > 125u) ? 125u : RF_Channel;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_RF_CH, &MyNRF->RF_CHANNEL, 1u);
}

void NRF_SetRFPower(t_NRF_Setup *MyNRF, uint8_t RF_Pow)
{
    NRF_Read_Register(REG_NRF_RF_SETUP, &MyNRF->RF_SETUP, 1u);
    RF_Pow = (RF_Pow > 3u) ? 3u : RF_Pow;
    RF_Pow = (RF_Pow << 1u) | 0x06u;
    MyNRF->RF_SETUP &= ~0x06u;
    MyNRF->RF_SETUP |= RF_Pow;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_RF_SETUP, &MyNRF->RF_SETUP, 1u);
}

void NRF_SetRFDataRate(t_NRF_Setup *MyNRF, uint8_t Datarate)
{
    NRF_Read_Register(REG_NRF_RF_SETUP, &MyNRF->RF_SETUP, 1u);
    Datarate = (Datarate > 1u) ? 1u : 0u;
    Datarate = (Datarate << 3u) & 0x08u;
    MyNRF->RF_SETUP &= ~0x08u;
    MyNRF->RF_SETUP |= Datarate;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_RF_SETUP, &MyNRF->RF_SETUP, 1u);
}

void NRF_SetAddrWidth(t_NRF_Setup *MyNRF, uint8_t Width)
{
    Width += (Width == 0u) ? 1u : 0u;
    Width = (Width > 3u) ? 3u : 0u;
    MyNRF->ADDR_WIDTH = Width;
    MyNRF->STATUS = NRF_Write_Register(REG_NRF_SETUP_AW, &MyNRF->ADDR_WIDTH, 1u);
}

uint8_t NRF_Write_Register(uint8_t Register, uint8_t *Bytes, uint8_t Length)
{
    uint8_t Status = 0u;
    NRF_PIN_CSN = 0;
    Status = p_NRF_SPI_Exchange(CMD_NRF_W_REGISTER | Register);
    while (Length--)
    {
        p_NRF_SPI_Exchange(*Bytes++);
    }
    NRF_PIN_CSN = 1;
    return Status;
}

uint8_t NRF_Read_Register(uint8_t Register, uint8_t *Bytes, uint8_t Length)
{
    uint8_t Status = 0u;
    NRF_PIN_CSN = 0;
    Status = p_NRF_SPI_Exchange(CMD_NRF_R_REGISTER | Register);
    while (Length--)
    {
        *Bytes++ = p_NRF_SPI_Exchange(0xFF);
    }
    NRF_PIN_CSN = 1;
    return Status;
}

void NRF_IRQ_ISR_Handler(void)
{
    
}

void Set_SPI_Handler (uint8_t(*SPI_Handler)(uint8_t))
{
    p_NRF_SPI_Exchange = SPI_Handler;
}