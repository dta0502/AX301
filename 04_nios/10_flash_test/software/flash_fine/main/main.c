#include <string.h>
#include "sys/alt_flash.h"
#include "sys/alt_flash_types.h"
#include "system.h"
#include "stdio.h"
#define BUF_SIZE 100

int main (void)
{
	flash_region* regions;
	alt_flash_fd* fd;
	int number_of_regions;
	int ret_code;
	char source[BUF_SIZE];
	char dest[200];
	int i;

	for(i=0;i<100;i++)
	{
		source[i] = i;
	}
	fd = alt_flash_open_dev("/dev/epcs_flash");
	if(!fd)
	{
		printf("Can't open flash device\n");
		exit(-1);
	}
	else
	{
		printf("Open Flash Device Successfully.\n");
	}

	/*��ȡFlash��Ϣ*/
	ret_code = alt_get_flash_info(fd, &regions, &number_of_regions);
	/*��ӡ��Flashÿ��Block����Ϣ*/
	for(i=0;i<number_of_regions;i++)
	{
		printf("Start 0x%8x End 0x%8x Number of Blocks %3d Block Size 0x%8x \n",
				(regions+i)->offset,
				(regions+i)->region_size+(regions+i)->offset,
				(regions+i)->number_of_blocks,
				(regions+i)->block_size);
	}

	/* ����������Block������ */
	ret_code = alt_erase_flash_block(fd, regions->offset+(regions->block_size)*5, regions->block_size);
	if(ret_code != 0)
	{
		printf("Can't Erase flash device\n");
		exit(-1);
	}
	else
	{
		printf("Erase Flash Device Successfully.\n");
	}

	/*��source���������д�������Block���Ӹ�Block�ĵ�0x100����ַ��ʼ*/
	ret_code = alt_write_flash_block (fd, regions->offset+(regions->block_size)*5,
			                              regions->offset+(regions->block_size)*5+0x100,
			                              source, BUF_SIZE
			                          );
	if(ret_code != 0)
	{
		printf("Can't write flash device\n");
		exit(-1);
	}
	else
	{
		printf("Write Flash Device Successfully.\n");
	}
	/*��source���������д�������Block���Ӹ�Block�ĵ�0x100+100����ַ��ʼ*/
	ret_code = alt_write_flash_block (fd, regions->offset+(regions->block_size)*5,
			                              regions->offset+(regions->block_size)*5+0x100+100,
			                              source,
			                              BUF_SIZE
			                          );
	if(ret_code != 0)
	{
		printf("Can't write flash device\n");
		exit(-1);
	}
	else
	{
		printf("Write Flash Device Successfully.\n");
	}

	/*����������Block���Ӹ�Block�ĵ�0x100����ַ��ʼ��ǰ200����ַ�����ݵ�dest����*/
	ret_code = alt_read_flash(fd, regions->offset+(regions->block_size)*5+0x100, dest, 200);
	if(ret_code != 0)
	{
		printf("Can't read flash device\n");
		exit(-1);
	}
	else
	{
		printf("Read Flash Device Successfully.\n");
	}

	for(i=0;i<200;i++)
	{
		printf("%d\n",dest[i]);
	}

	return 0;
}










