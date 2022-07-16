#include <avr/io.h>
#include <util/delay.h>

int main()
{
  // Port B data direction
  DDRB = 0x01;
  while(1)
  {
    PORTB = 0x01;
    _delay_ms(200);
    PORTB = 0x00;
    _delay_ms(200);
  }
  return 0;
}
