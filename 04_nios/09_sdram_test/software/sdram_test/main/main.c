#include <stdio.h>
#include "system.h"
#include "string.h"

//SDRAM��ַ
unsigned short * ram = (unsigned short *)(SDRAM_BASE+0x10000);

/*
* === FUNCTION ===================================================
* Name: main
* Description: ������
* =================================================================
*/

int main(void)
{
    int i;

    memset(ram,0,100);

    //��ram��д���ݣ���ramд���Ժ�ram�ĵ�ַ�Ѿ���Ϊ(SDRAM_BASE+0x10000+200)
    for(i=0;i<100;i++){
        *(ram++) = i;
    }

    //�����ȡram�е�����
    for(i=0;i<100;i++){
        printf("%d\n",*(--ram));
    }

    return 0;
}

