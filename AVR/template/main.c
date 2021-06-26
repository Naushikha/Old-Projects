#include<avr/io.h>
#include<util/delay.h>

int main(void){
	DDRC = 0b0000001;
	while(1){
		PORTC = 0b00000001;
		_delay_ms(500);
	}
	return 0;
}
