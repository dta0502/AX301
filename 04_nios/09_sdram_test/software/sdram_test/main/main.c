#include <stdio.h>
#include "system.h"
#include "string.h"

//SDRAM地址
unsigned short * ram = (unsigned short *)(SDRAM_BASE+0x10000);

/*
* === FUNCTION ===================================================
* Name: main
* Description: 主函数
* =================================================================
*/

int main(void)
{
    int i;

    memset(ram,0,100);

    //向ram中写数据，当ram写完以后，ram的地址已经变为(SDRAM_BASE+0x10000+200)
    for(i=0;i<100;i++){
        *(ram++) = i;
    }

    //逆向读取ram中的数据
    for(i=0;i<100;i++){
        printf("%d\n",*(--ram));
    }

    return 0;
}

