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

	/*获取Flash信息*/
	ret_code = alt_get_flash_info(fd, &regions, &number_of_regions);
	/*打印出Flash每个Block的信息*/
	for(i=0;i<number_of_regions;i++)
	{
		printf("Start 0x%8x End 0x%8x Number of Blocks %3d Block Size 0x%8x \n",
				(regions+i)->offset,
				(regions+i)->region_size+(regions+i)->offset,
				(regions+i)->number_of_blocks,
				(regions+i)->block_size);
	}

	/* 擦除第六个Block的内容 */
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

	/*把source数组的数据写入第六个Block，从该Block的第0x100个地址开始*/
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
	/*把source数组的数据写入第六个Block，从该Block的第0x100+100个地址开始*/
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

	/*读出第六个Block，从该Block的第0x100个地址开始把前200个地址的数据到dest数组*/
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










