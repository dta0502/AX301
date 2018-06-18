`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module adda_test(
    input clk,            //fpga clock
	 
	 output daclk,
    output [7:0] dadata,       //DA data
	 
	 output adclk,
	 input [7:0] addata         //AD data

    );


reg [8:0] rom_addr;
reg [7:0] ad_data;
wire [7:0] rom_data;

assign dadata=rom_data;             //DA output the data from ROM
assign daclk=clk;
assign adclk=clk;

//DA output sin waveform
always @(negedge clk)
begin
     rom_addr <= rom_addr + 1'b1 ; 
end 

always @(posedge clk)
begin
      ad_data <= addata ;  
end 


rom rom_inst (
  .clock(clk), // input clka
  .address(rom_addr), // input [8 : 0] addra
  .q(rom_data) // output [7 : 0] douta
);




endmodule
