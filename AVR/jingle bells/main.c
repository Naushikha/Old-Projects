#include<avr/io.h>
#include<avr/interrupt.h>
#include<util/delay.h>

#define c4 239
#define d4 213
#define e4 190
#define f4 175
#define g4 159
#define a4 142
#define b4 127
#define c5 119
#define d5 206
#define e5 98
#define f5 89
#define g5 80
#define a5 71

unsigned int play[] = {e4, e4, e4, e4, e4, e4, e4, g4, c4, d4, e4, f4, f4, f4, f4, f4, e4, e4, e4, e4, e4, d4, d4, e4, d4, g4, e4, e4, e4, e4, e4, e4, e4, g4, c4, d4, e4, f4, f4, f4, f4, f4, e4, e4, e4, e4, g4, g4, f4, d4, c4};

unsigned char d[] = {2, 2, 4, 2, 2, 4, 2, 2, 2, 2, 6, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 2, 2, 4, 2, 2, 4, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8};

unsigned char temp = 80;

void initTimers(void);
void custom_delay(unsigned int t);

int main(void){
	initTimers();
	DDRB = 1<<PB3;
	OCR0 = 80;
	unsigned char i;
	
	while(1){
		for (i = 0; i != 51; i++){
			OCR0 = (play[i]);
			custom_delay(d[i] * temp);
			OCR0 = 0;
			_delay_ms(1);
		}
	}
	return 0;
}

void initTimers(void){
	TCCR0 |= (1<<COM00) | (1<<WGM01) | (1<<CS01) | (1<<CS00);
}

void custom_delay(unsigned int t){
	while (t > 0){
		_delay_ms(1);
		t--;		
	}
}
