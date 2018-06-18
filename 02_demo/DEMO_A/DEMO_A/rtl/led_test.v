`timescale 1ns / 1ps


module led_test (
               // inputs:
                  clk,
                  rst_n,
                  led
             );
             
//===========================================================================
// PORT declarations
//===========================================================================
input clk;
input rst_n;
output [3:0] led;

reg [31:0] timer;
reg [3:0] led;



  always @(posedge clk or negedge rst_n)
    begin
      if (~rst_n)
          timer <= 0;
      else if (timer == 40000000)
          timer <= 0;
      else
          timer <= timer + 1;          
    end


  always @(posedge clk or negedge rst_n)
    begin
      if (~rst_n)
          led <= 4'b0000;
      else if (timer == 10000000)
          led <= 4'b0001;
      else if (timer == 20000000)
          led <= 4'b0010;
      else if (timer == 30000000)
          led <= 4'b0100;                              
      else if (timer == 40000000)
          led <= 4'b1000;          
    end
    
endmodule

