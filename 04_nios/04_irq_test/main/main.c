#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include <stdio.h>
#include <unistd.h>

alt_u8 key_flag = 0;

void ISR_handle_button( void* context )
{
	key_flag = ~key_flag;
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP( PIO_KEY_BASE, 0x0 ); // clear the edge capture interrupt

}

void init_button_pio( void )
 {
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK( PIO_KEY_BASE, 0x1 );  //enable pio_key interrupt
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP( PIO_KEY_BASE, 0x0 );  //clear pio_key edge capture register
	alt_ic_isr_register( PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID, PIO_KEY_IRQ, ISR_handle_button, NULL, 0x0 );
}


 int main()
 {
	int i;

    init_button_pio();

    for( i=0; i<4; i++ )
   {
	   IOWR_ALTERA_AVALON_PIO_DATA( PIO_LED_BASE, 1<<i );
       usleep( 500000 );                  //each one 0.5s delay
    }

    while(1)
    {
	   if( key_flag )
	    {
	      	  IOWR_ALTERA_AVALON_PIO_DATA( PIO_LED_BASE, 1);
        }
       else
        {
           	  IOWR_ALTERA_AVALON_PIO_DATA( PIO_LED_BASE, 0);
        }
     }

   return 0;

}
