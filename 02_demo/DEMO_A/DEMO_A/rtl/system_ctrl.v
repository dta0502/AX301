/*-------------------------------------------------------------------------
Description			:		sdram vga controller with ov7670 display.
===========================================================================
15/02/1
--------------------------------------------------------------------------*/
`timescale 1 ns / 1 ns
module system_ctrl
(
	input 		clk,		//50MHz
	input 		rst_n,		//global reset

	output 		sys_rst_n,	//system reset
	output 		clk_c0,		
	output 		clk_c1,
	output		clk_c2,	//-75deg
	output		clk_c3,	//-75deg
	output		clk_c4	//-75deg

);

//----------------------------------------------
reg  [9:0]   delay_cnt;
reg  delay_done;
always @(posedge clk_c0 or negedge rst_n)
begin
	if(!rst_n)
		begin
		delay_cnt <= 0;
		delay_done <= 1'b0;
		end
	else
		begin
		  if (delay_cnt== 1000)
			 delay_done <= 1'b1;
        else
          delay_cnt <= delay_cnt +1'b1;
		end
end

assign sys_rst_n=delay_done;
//----------------------------------------------
//Component instantiation
wire 	locked;

sdram_pll	u_sdram_pll
(
	.inclk0	(clk),
	.areset	(~rst_n),
	.locked	(locked),
			
	.c0		(clk_c0),
	.c1		(clk_c1),
	.c2		(clk_c2),
	.c3		(clk_c3),
	.c4		(clk_c4)		

);


endmodule
