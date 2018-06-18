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
 *         Author:  ���� (AVIC)
 *			Email:  avic633@gmail.com  
 *			   QQ:  984597569
 *			  URL:  http://kingst.cnblogs.com
 *
 * =====================================================================================
 */

/*--------------------------------------------------------------------------------------
 *  Include
 *-------------------------------------------------------------------------------------*/ 
#include <unistd.h>
#include "../inc/iic.h"
#include <stdio.h>
#include "alt_types.h"

/*--------------------------------------------------------------------------------------
 *  Variable
 *-------------------------------------------------------------------------------------*/ 
alt_u8 write_buffer[512], read_buffer[512];

/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
int main()
{
	alt_u16 i, err;
	alt_u8 dat;

	printf("\nWriting data to EEPROM!\n");

	//д��512btye�����ݣ�ǰ256������Ϊ0��255����256������Ϊ1
	for(i=0; i<512; i++){
		if(i<256)
			dat = i;
		else
			dat = 1;

		iic.write_byte(i, dat);
		write_buffer[i] = dat;
		printf("0x%02x ", dat);
		usleep(10000);
	}

	printf("\nReading data from EEPROM!\n");

	//��512byte���ݶ���������ӡ
	for(i=0; i<512; i++){
		read_buffer[i] = iic.read_byte(i);
		printf("0x%02x ", read_buffer[i]);
		usleep(1000);
	}  

	err = 0;
	printf("\nVerifing data!\n");

	//�Ա������Ƿ���ͬ������в�ͬ��˵����д�����д���
	for(i=0; i<512; i++){
		if(read_buffer[i] != write_buffer[i])
			err ++;
	}  

	if(err == 0)
		printf("\nData write and read successfully!\n");
	else
		printf("\nData write and read failed!--%d errors\n", err);

	return 0;
}
