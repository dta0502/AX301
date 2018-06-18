/*-------------------------------------------------------------------------
Filename			:		vga_top.v
==========================================================================*/
module vga_top
(  	
	//global clock
	input			clk_vga,			//system clock
	input			vga_rst,     	//sync reset
	input       key1,          //key1
	
	//lcd interface
	output			vga_de,		   //vga blank
	output			vga_hsync,	  	//vga horizontal sync
	output			vga_vsync,	   //vga vertical sync
	output	[4:0]	vga_r,		   //vga display data
	output	[5:0]	vga_g,		   //vga display data	
	output	[4:0]	vga_b,		   //vga display data
	
	//user interface
	output			   vga_rden,	//vga data request
	output            sdr_addr_set,
	output			   vga_framesync,	//vga frame sync
	input  	[15:0]	vga_data	      //vga data 16bit
);	  


//-------------------------------------
vga_driver u_vga_driver
(
	//global clock
	.clk_vga			(clk_vga),		
	.vga_rst			(vga_rst), 
	.key1		      (key1),	
	
	 //lcd interface
	.vga_de		   (vga_de),
	.vga_hsync		(vga_hsync),		    	
	.vga_vsync		(vga_vsync),
	.vga_r			(vga_r),	
	.vga_g			(vga_g),	
	.vga_b			(vga_b),		
	
	//user interface
	.vga_rden   	(vga_rden),
	.vga_framesync	(vga_framesync),
	.vga_data	   (vga_data),	
	.sdr_addr_set	(sdr_addr_set)	
	
	
);

endmodule


