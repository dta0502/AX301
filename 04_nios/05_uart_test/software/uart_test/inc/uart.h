/*
 * ============================================================================
 *
 *       Filename:  uart.h
 *
 *    Description:  
 *
 *        Version:  1.0.0
 *        Created:  2016.4.16
 *       Revision:  none
 *       Compiler:  Nios II 9.0 IDE
 *
 *         Author: ÂíÈð(AVIC)
 *			Email:  avic633@gmail.com  
 *			   QQ:  984597569
 *			   URL:  http://kingst.cnblogs.com
 *
 * ============================================================================
 */

#ifndef UART_H_
#define UART_H_

/*-----------------------------------------------------------------------------
 *  Include
 *-----------------------------------------------------------------------------*/
#include "../inc/sopc.h"

/*-----------------------------------------------------------------------------
 *  Define
 *-----------------------------------------------------------------------------*/
#define BUFFER_SIZE 200 

/*------------------------------------------------------------------------------
 *  Struct
 *-----------------------------------------------------------------------------*/
typedef struct{
	unsigned int receive_flag;
	unsigned int receive_count;
	unsigned char receive_buffer[BUFFER_SIZE];
	int (* send_byte)(unsigned char data);
	void (* send_string)(unsigned int len, unsigned char *str);
	int (* init)(void);
	unsigned int (* baudrate)(unsigned int baudrate);
}UART_T;

extern UART_T uart;

#endif /*UART_H_*/

