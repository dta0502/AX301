`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module rom_test(
			input clk,		          //50MHz时钟
			input reset_n,	          //复位信号，低电平有效	
			output[7:0]	rom_data	    //ROM输出数据
		);

//-----------------------------------------------------------
reg[4:0] rom_addr;	//ROM输入地址

//产生ROM地址读取数据测试
always @(posedge clk or negedge reset_n)
	if(!reset_n)rom_addr <= 10'd0;
	else rom_addr <= rom_addr+1'b1;

//-----------------------------------------------------------
//实例化ROM	
rom_ip  	rom_ip_inst(
					  .clock    (clk),      // input clka
					  .address  (rom_addr), // input [4 : 0] addra
					  .q        (rom_data)  // output [7 : 0] douta
					);
	
endmodule
