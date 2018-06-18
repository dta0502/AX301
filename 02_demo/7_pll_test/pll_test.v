`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    pll_test 
//////////////////////////////////////////////////////////////////////////////////
module pll_test(
                input clk,
                input rst_n,
			  output clkout1,           //pll clock output
			  output clkout2,           //pll clock output
			  output clkout3,           //pll clock output
			  output clkout4            //pll clock output					 
    );

wire locked;

/////////////////////PLL IP实例化程序////////////////////////////
pll pll_inst
   (// Clock in ports
    .inclk0(clk),            // IN 50Mhz
    // Clock out ports
    .c0(clkout2),           // OUT 25Mhz
    .c1(clkout1),           // OUT 50Mhz
    .c2(clkout3),           // OUT 75Mhz
    .c3(clkout4),           // OUT 100Mhz	 
    // Status and control signals	 
    .areset(~rst_n),// IN
    .locked(locked));      // OUT	  

endmodule
