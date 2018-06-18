`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    testuart 
//////////////////////////////////////////////////////////////////////////////////
module testuart(clk, rst_n, dataout, wrsig);
input clk;
input rst_n;
output[7:0] dataout;
output wrsig;
reg [7:0] dataout;
reg wrsig;
reg [7:0] cnt;
always @(posedge clk or negedge rst_n)
begin
  if(!rst_n) begin
    cnt<=8'd0;
	 wrsig<=1'b0;
  end
  else begin  
	  if(cnt == 254)          
	  begin
		 dataout <= dataout + 8'd1;  //每次数据加“1”
		 wrsig <= 1'b1;              //产生发送命令
		 cnt <= 8'd0;
	  end
	  else
	  begin
		 wrsig <= 1'b0;
		 cnt <= cnt + 8'd1;
	  end
  end	  
end
endmodule

