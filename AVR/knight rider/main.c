#include<avr/io.h>
#include<util/delay.h>

int main(void){
	DDRC = 0xff;
	while(1){
		PORTC = 0b00000001;
		_delay_ms(500);
		PORTC = 0b00000010;
		_delay_ms(500);
		PORTC = 0b00000100;
		_delay_ms(500);
		PORTC = 0b00001000;
		_delay_ms(500);
		PORTC = 0b00010000;
		_delay_ms(500);
		PORTC = 0b00100000;
		_delay_ms(500);
		PORTC = 0b01000000;
		_delay_ms(500);
		PORTC = 0b10000000;
		_delay_ms(500);		
		PORTC = 0b10000000;
		_delay_ms(500);
		PORTC = 0b01000000;
		_delay_ms(500);
		PORTC = 0b00100000;
		_delay_ms(500);
		PORTC = 0b00010000;
		_delay_ms(500);
		PORTC = 0b00001000;
		_delay_ms(500);
		PORTC = 0b00000100;
		_delay_ms(500);
		PORTC = 0b00000010;
		_delay_ms(500);
		PORTC = 0b00000001;
		_delay_ms(500);
	}
	return 0;
}
