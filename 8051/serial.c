#include <stdio.h>
#include <stdbool.h>
#include <8052.h>

#define SDA P2_7
#define SCL P2_6


__code unsigned int table[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
int displayNum[] = {0, 0, 0, 0};

volatile unsigned long int clocktime;
volatile _Bool clockupdate;
unsigned int choice = 0;
unsigned long int prevTimeCycl = 0;
unsigned long int prev = 0;
unsigned int cyclone = 0x03;
unsigned int rDuoCycl = 0x03;
unsigned int lDuoCycl = 0xC0;
volatile _Bool downDir = true;
unsigned char button1 = 0;
unsigned char button2 = 0;
unsigned char button3 = 0;
unsigned char button4 = 0;
unsigned char slave1=0x4E;
unsigned char slave_add;

void delay(unsigned int i){
	unsigned int j, k;

	for(j = i; j > 0; j--)
		for(k = 125; k > 0; k--);
}

void display(void){
	P0 = table[displayNum[3]];
	P2_0 = 0;
	delay(2);
	P2_0 = 1;

	P0 = table[displayNum[2]];
	P2_1 = 0;
	delay(2);
	P2_1 = 1;

	P0 = table[displayNum[1]];
	P2_2 = 0;
	delay(2);
	P2_2 = 1;

	P0 = table[displayNum[0]];
	P2_3 = 0;
	delay(2);
	P2_3 = 1;
}

void clockinc(void) __interrupt(1)
{
	unsigned long int i = 0;
    TH0 = (65536 - 922) / 256;
    TL0 = (65536 - 922) % 256;
    clocktime++;
    clockupdate = true;

	switch(choice){
		case 0:
			if((clocktime - prev) > 500){
				prev = clocktime;
				P1 = ~(clocktime/500) & 0xFF;
			}
			break;
		case 1:
			if((clocktime - prevTimeCycl) > 500){
				prevTimeCycl = clocktime;
				if(downDir){
					P1 = ~cyclone & 0xFF;
					if(cyclone == 0xC0){
						downDir = false;
						cyclone = cyclone >> 1;
					} else {
						cyclone = cyclone << 1;
					}
				} else {
					P1 = ~cyclone & 0xFF;
					if(cyclone == 0x03){
						downDir = true;
						cyclone = cyclone << 1;
					} else {
						cyclone = cyclone >> 1;
					}
				}

			}
			break;
		case 2:
			if((clocktime - prevTimeCycl) > 500){
				prevTimeCycl = clocktime;
				if(downDir){
					P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
					if(rDuoCycl == 0xC0){
						downDir = false;
						rDuoCycl = rDuoCycl >> 1;
						lDuoCycl = lDuoCycl << 1;
					} else {
						rDuoCycl = rDuoCycl << 1;
						lDuoCycl = lDuoCycl >> 1;
					}
				} else {
					P1 = ~(rDuoCycl | lDuoCycl) & 0xFF;
					if(rDuoCycl == 0x03){
						downDir = true;
						rDuoCycl = rDuoCycl << 1;
						lDuoCycl = lDuoCycl >> 1;
					} else {
						rDuoCycl = rDuoCycl >> 1;
						lDuoCycl = lDuoCycl << 1;
					}
				}

			}
			break;
	}
}

unsigned long int clock(void)
{
    unsigned long int ctmp;

    do {
        clockupdate = false;
        ctmp = clocktime;
    } while(clockupdate);
    return (ctmp);
}

int putchar(int c)
{
	while(!(SCON & 0x02));
	SCON &= ~0x02;
	SBUF = c;
	return (c);
}

void rollUnderNum(){
	if(displayNum[0] < 0){
		displayNum[0] = 9;
		displayNum[1]--;
	}
	if(displayNum[1] < 0){
		displayNum[1] = 9;
		displayNum[2]--;
	}
	if(displayNum[2] < 0){
		displayNum[2] = 9;
		displayNum[3]--;
	}
	if(displayNum[3] < 0){
		displayNum[0] = 9;
		displayNum[1] = 9;
		displayNum[2] = 9;
		displayNum[3] = 9;
	}
}

void rollOverNum(){
	if(displayNum[0] > 9){
		displayNum[0] = 0;
		displayNum[1]++;
	}
	if(displayNum[1] > 9){
		displayNum[1] = 0;
		displayNum[2]++;
	}
	if(displayNum[2] > 9){
		displayNum[2] = 0;
		displayNum[3]++;
	}
	if(displayNum[3] > 9){
		displayNum[0] = 0;
		displayNum[1] = 0;
		displayNum[2] = 0;
		displayNum[3] = 0;
	}
}

void i2c_start(void)
{
	SDA = 1;
	SCL = 1;
	SDA = 0;
	SCL = 0;
}

void i2c_stop(void)
{
	SDA = 0;
	SCL = 1;
	SDA = 1;
	SCL = 0;
}

void i2c_ack(void)
{
	SCL = 0;
	SDA = 1;
	SCL = 1;
	//while(SDA);
}

void i2c_write(unsigned char data){
	unsigned char i;

	for(i = 0; i < 8; i++){
		SDA = (data & 0x80)>>7;
		SCL = 1;
		SCL = 0;
		data <<= 1;
	}
	SDA = 1;
	SCL = 1;
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

void i2c_buttons(void){
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

void lcd_slave(unsigned char slave)
{
    slave_add=slave;
}

void lcd_write_byte(unsigned char data){
	unsigned char i;
	for(i=0;i<8;i++){
		SCL = 0;
		SDA = (data&(0x80)>>i)?1:0;
		SCL = 1;
	}
}

void lcd_send_cmd(unsigned char cmd) {
    unsigned char cmd_l,cmd_u;
    cmd_l=(cmd<<4)&0xf0;
    cmd_u=(cmd &0xf0);
    i2c_start();
    lcd_write_byte(slave_add);
    i2c_ack();
    lcd_write_byte(cmd_u|0x0C);
    i2c_ack();
    delay(1);
    lcd_write_byte(cmd_u|0x08);
    i2c_ack();
    delay(10);
    lcd_write_byte(cmd_l|0x0C);
    i2c_ack();
    delay(1);
    lcd_write_byte(cmd_l|0x08);
    i2c_ack();
    delay(10);
    i2c_stop();
}

void lcd_send_data(unsigned char dataw){
    unsigned char dataw_l,dataw_u;
    dataw_l=(dataw<<4)&0xf0;
    dataw_u=(dataw &0xf0);
    i2c_start();
    lcd_write_byte(slave_add);
    i2c_ack();
    lcd_write_byte(dataw_u|0x0D);
    i2c_ack();
    delay(1);
    lcd_write_byte(dataw_u|0x09);
    i2c_ack();
    delay(10);
    lcd_write_byte(dataw_l|0x0D);
    i2c_ack();
    delay(1);
    lcd_write_byte(dataw_l|0x09);
    i2c_ack();
    delay(10);
    i2c_stop();
}

void lcd_send_str(unsigned char *p){
    while(*p != '\0')
        lcd_send_data(*p++);
}

void lcd_init(){
    lcd_send_cmd(0x02);	
    lcd_send_cmd(0x28);
    lcd_send_cmd(0x0C);
    lcd_send_cmd(0x06);
    lcd_send_cmd(0x01);
}

void main(void)
{
	unsigned long int i = 0;

    TH0 = (65536 - 922) / 256;
    TL0 = (65536 - 922) % 256;
    IE |= 0x82;
	TMOD = 0x21;
	SCON = 0x40;
	TH1 = 256 - 11.0592 * 1000 * 1000 / 12 / 32 / 9600 + 0.5;
	TCON |= 0x40;
	TCON |= 0x10;
	SCON |= 0x02;

	lcd_slave(slave1);
    lcd_init();
    lcd_send_cmd(0x80);
    lcd_send_str("Hello World!    ");
    lcd_send_cmd(0xC0);
    lcd_send_str("   Bob is Great!");

	for(;;){
		display();
		if(P3_5 == 0){
			delay(5);
			if(P3_5 == 0){
				while(!P3_5){display();};
				choice++;
				P1 = 0xFF;
				if(choice > 2){
					choice = 0;
				}
			}
		}
		if(P3_3 == 0){
			delay(5);
			if(P3_3 == 0){
				while(!P3_3){display();};
				displayNum[0]++;
				rollOverNum();
			}
		}
		if(P3_2 == 0){
			delay(5);
			if(P3_2 == 0){
				while(!P3_2){display();};
				displayNum[0]--;
				rollUnderNum();
			}
		}

		i2c_buttons();

	}

}
