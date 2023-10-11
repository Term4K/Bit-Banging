#include <stdint.h>
#include <8052.h>

#define CS P1_0
#define MOSI P1_1
#define MISO P1_2
#define SCLK P1_3

void SPI_init(void){
    SCLK = 0;
    CS = 1;
}

uint8_t WIZCHIP_READ(uint32_t AddrSel){
    uint8_t ret;
    uint8_t char spi_data[3];

}

unsigned char SPI_read(void){
  unsigned char i, data = 0;

  for(i = 0; i < 8; i++){
    SCLK = 1;
    data <<= 1;
    data |= MISO;
    SCLK = 0;
  }
  return data;
}

void WizNet_init(){
    SPI_init();
}

void main(void){
    WizNet_init();
    
    while(1){
        
    }
}