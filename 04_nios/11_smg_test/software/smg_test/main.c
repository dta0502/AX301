#include <stdio.h>
#include "system.h"
/* * === FUNCTION ====================================
 * * Name: smg_decode
 * * Description: ��������뺯������0~9�������ܶ���ֵ
 * * =================================================== */
unsigned char smg_decode(unsigned char number)
{
	switch(number)
	{
	 case 0x0:return 0x03;
	 case 0x1:return 0x9F;
	 case 0x2:return 0x25;
	 case 0x3:return 0x0D;
	 case 0x4:return 0x99;
	 case 0x5:return 0x49;
	 case 0x6:return 0x41;
	 case 0x7:return 0x1F;
	 case 0x8:return 0x01;
	 case 0x9:return 0x09;
	 default:return 0xff;
	}
	return 0xff;
}

/* * === FUNCTION ====================================
 * * Name: smg_display
 *  * Description: �������ʾ����
 *   * =================================================== */
void smg_display(unsigned int number)
{
	int *smg_num = (int*)SMG_CONTROLLER_0_BASE;
	int i;
	unsigned int j=100000;
	unsigned char display[6];
	for (i=5;i>=0;i--)
	{
		display[i]= number / j;
		number -= j * display[i];
		j /= 10;
	}
	*(smg_num+1) = (smg_decode(display[0]) << 8) + smg_decode(display[1]);
	*smg_num = (smg_decode(display[2]) << 24) +(smg_decode(display[3]) << 16) +(smg_decode(display[4]) << 8) + smg_decode(display[5]);
}

/* * === FUNCTION ====================================
 * * Name: main
 * * Description: ����������ʾһ�����ݵ��������
 * * =================================================== */
int main()
{
	printf("Hello from Nios II!\n");
	int i=1;

	smg_display(123456);    //��ʾ����ܵ�����

	return 0;
}
