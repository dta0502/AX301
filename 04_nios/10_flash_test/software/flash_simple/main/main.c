/*-----------------------------------------------------------------------------
 * Include 
 *-----------------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#include "sys/alt_flash.h"

/*-----------------------------------------------------------------------------
 *  Define
 *-----------------------------------------------------------------------------*/
#define BUF_SIZE 100
#define FLASH_OFFSET 0x50000

/* 
 * ===  FUNCTION ===========================================
 *         Name:  main
 *  Description:  ������
 * =======================================================
 */
int main(void)
{
    alt_flash_fd *fd;    
    int i;
    int ret_code;
    char source[BUF_SIZE];
    char dest[BUF_SIZE];

    for(i=0;i<100;i++){
        source[i] = i;
    }
    
    //��FLASH�豸
    fd = alt_flash_open_dev("/dev/epcs_flash");
    
    if(fd == NULL){
        printf("Can't open flash device\n");
        exit(-1);
    }
    else{
        printf("Open Flash Device Successfully.\n");
    }
    //��FLASH��д���ݣ��ɹ��󷵻�ֵΪ0
    ret_code = alt_write_flash(fd,FLASH_OFFSET,source,BUF_SIZE);
    if(ret_code != 0){
        printf("Can't write flash device\n");
        exit(-1);
    }
    else{
        printf("Write Flash Device Successfully.\n");
    }
    //��FLASH�е�����,�ɹ��󷵻�ֵΪ0
    ret_code = alt_read_flash(fd,FLASH_OFFSET,dest,BUF_SIZE);
    if(ret_code != 0){
        printf("Can't read flash device\n");
        exit(-1);
    }
    else{
        printf("Read Flash Device Successfully.\n");
    }
    //��ӡ��ȡ������
    for(i=0;i<100;i++){
        printf("%d\n",dest[i]);
    }
    alt_flash_close_dev(fd);
    return 0;
}
