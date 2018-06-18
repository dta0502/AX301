`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    clkdiv 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(clk50, clkout);
input clk50;              //系统时钟
output clkout;          //采样时钟输出
reg clkout;
reg [15:0] cnt;

always @(posedge clk50)   //分频进程
begin
  if(cnt == 16'd162)
  begin
    clkout <= 1'b1;
    cnt <= cnt + 16'd1;
  end
  else if(cnt == 16'd325)
  begin
    clkout <= 1'b0;
    cnt <= 16'd0;
  end
  else
  begin
    cnt <= cnt + 16'd1;
  end
end
endmodule
