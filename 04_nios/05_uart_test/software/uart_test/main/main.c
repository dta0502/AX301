/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0.0
 *        Created:  2010.4.16
 *       Revision:  none
 *       Compiler:  Nios II 9.0 IDE
 *
 *         Author:  ÂíÈð (AVIC)
 *          Email:  avic633@gmail.com  
 *             QQ:  984597569
 *            URL:  http://kingst.cnblogs.com
 *
 * =====================================================================================
 */

/*-----------------------------------------------------------------------------
 * Include 
 *-----------------------------------------------------------------------------*/
#include "system.h"
#include "sys/alt_irq.h"
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include "../inc/uart.h"
#include "../inc/sopc.h"

/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
int main(void)
{
	unsigned char buffer[50]="Hello FPGA!\n";


	uart.init();

	while(1){		
		if(uart.receive_flag){
			memset(buffer,0,50);// clear buffer

			strcpy(buffer,uart.receive_buffer);//copy uart.receive_buffer to buffer

			uart.receive_flag = 0;//clear flags
		}
		uart.send_string(sizeof(buffer),buffer);

		usleep(500000);
	}

	return 0;
}

