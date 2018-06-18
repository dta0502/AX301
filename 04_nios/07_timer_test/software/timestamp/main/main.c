/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0.0
 *        Created:  2016.4.16
 *       Revision:  none
 *       Compiler:  Nios II 12.1 Eclipse
 *
 *         Author:  ÂíÈð (AVIC)
 *			Email:  avic633@gmail.com  
 *			   QQ:  984597569
 *			  URL:  http://kingst.cnblogs.com
 *
 * =====================================================================================
 */

/*-----------------------------------------------------------------------------
 *  Include
 *-----------------------------------------------------------------------------*/
#include <stdio.h>
#include "sys/alt_timestamp.h"
#include "alt_types.h"

int func1(void)
{
	int i = 100;
	while(i--);
	return 0;
}

int func2(void)
{
	int i = 200;
	while(i--);
	return 0;

}

/*  === FUNCTION =======================================================
 *  Name: main
 *  Description: Ö÷º¯Êý
 *  ======================================================================
 */
int main(void)
{
	unsigned int time1;
	unsigned int time2;
	unsigned int time3;

	if(alt_timestamp_start() < 0)
	{ printf("Timestamp Failed!\n");
	  exit(-1);
	}

	time1 = alt_timestamp();
	func1();
	time2 = alt_timestamp();
	func2();
	time3 = alt_timestamp();

	printf("func1 needs %d\n",(time2 - time1));
	printf("func2 needs %d\n",(time3 - time2));

	return 0;
}

