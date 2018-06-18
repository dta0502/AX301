`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    clkdiv 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(clk50, rst_n, clkout);
input clk50;              //系统时钟
input rst_n;              //收入复位信号
output clkout;            //采样时钟输出
reg clkout;
reg [15:0] cnt;

/////分频进程, 50Mhz的时钟326分频/////////
always @(posedge clk50 or negedge rst_n)   
begin
  if (!rst_n) begin
     clkout <=1'b0;
	  cnt<=0;
  end	  
  else if(cnt == 16'd162) begin
    clkout <= 1'b1;
    cnt <= cnt + 16'd1;
  end
  else if(cnt == 16'd325) begin
    clkout <= 1'b0;
    cnt <= 16'd0;
  end
  else begin
    cnt <= cnt + 16'd1;
  end
end
endmodule
