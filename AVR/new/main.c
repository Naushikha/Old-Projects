#include<avr/io.h>
#include<util/delay.h>

#define DELAY 1500
unsigned char ssd[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};
//                      0,    1,    2,    3,    4,    5,    6,    7,    8,    9,    A,    B,    C,    D,    E,    F
int main(void){
	unsigned char i;
	DDRC = 0xff;
	DDRA = 0xf0;
	while(1){
		PORTA = 1 << 4;
		PORTC = ssd[11];
		_delay_ms(DELAY);
		
		PORTA = 1 << 5;
		PORTC = ssd[10];
		_delay_ms(DELAY);
		
		PORTA = 1 << 6;
		PORTC = ssd[13];
		_delay_ms(DELAY);
		
		PORTA = 1 << 7;
		PORTC = ssd[15];
		_delay_ms(DELAY);
	}
	return 0;
}
