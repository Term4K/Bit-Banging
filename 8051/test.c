#include <8052.h>

#define SDA P2_1
#define SCL P2_0

void delay(unsigned int i){
  unsigned int j, k;

  for(j = i; j > 0; j--)
    for(k = 125; k > 0; k--);
}

void i2c_start(void){
  SDA = 1;
  SCL = 1;
  SDA = 0;
  SCL = 0;
}

void i2c_stop(void){
  SDA = 0;
  SCL = 1;
  SDA = 1;
  SCL = 0;
}

void i2c_write(unsigned char data){
  unsigned char i;
  for(i=0; i < 8; i++){
    SDA = (data & 0x80)>>7;
    SCL = 1;
    delay(1);
    SCL = 0;
    data <<= 1;
  }

  SDA = 1;
  SCL = 1;
  delay(1);
  SCL = 0;
}

unsigned char i2c_read(void){
  unsigned char i, data = 0;

  for(i = 0; i < 8; i++){
    SCL = 1;
    data <<= 1;
    data |= SDA;
    SCL = 0;
  }

  SDA = 0;
  SCL = 1;
  SCL = 0;
  SDA = 1;
  return data;
}

void led_data(void){
  unsigned char buttons, leds;
  unsigned char button1 = 0;
  unsigned char button2 = 0;
  unsigned char button3 = 0;
  unsigned char button4 = 0;

  i2c_start();
  i2c_write(0x40 | 1);
  buttons = ~i2c_read();
  i2c_stop();

  button1 = (buttons & 0x10) ? 1 : 0;
  button2 = (buttons & 0x20) ? 1 : 0;
  button3 = (buttons & 0x40) ? 1 : 0;
  button4 = (buttons & 0x80) ? 1 : 0;

  leds = 0x00;
  if(button1) leds |= 0x01;
  if(button2) leds |= 0x02;
  if(button3) leds |= 0x04;
  if(button4) leds |= 0x08;
  leds = ~leds;
  //leds |= 0xF0;

  i2c_start();
  i2c_write(0x40);
  i2c_write(leds);
  i2c_stop();

}

void main(void){
  while(1){
    led_data();
  }
}