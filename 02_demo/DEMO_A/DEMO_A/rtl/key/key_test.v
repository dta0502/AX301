`timescale 1ns / 1ps
module key_test(clk,rst_n,key_in,disp_mode);
input clk; //50Mhz
input rst_n;
input [2:0] key_in;
output [2:0] disp_mode;

reg [19:0] count;
reg [2:0] key_scan; //按键扫描值

always @(posedge clk or negedge rst_n) //采样按键值，采样频率小于按键毛刺频率，相当于滤除掉了高频毛刺信号。
begin
   if(!rst_n)
       begin
          count <= 20'b0;
			 key_scan<=0;
       end
   else
      begin
         if(count ==20'b1111_0100_0010_0100_0000) //20ms扫描一次按键
            begin
               count <= 20'b0;
                   key_scan <= key_in;
            end
        else
           begin
                   count <= count+20'b1;
						 key_scan <= key_scan;
           end
     end
end

reg [2:0] key_scan_r;
always @(posedge clk)
    key_scan_r <= key_scan;
    
wire [2:0] flag_key = key_scan_r[2:0] & (~key_scan[2:0]);  //当检测到按键有下降沿变化时，代表该按键被按下，按键有效 

reg [2:0] temp_value;
always @ (posedge clk or negedge rst_n)
    if (!rst_n)
         begin
             temp_value <= 3'b000;
         end
    else
         begin            
             if ( flag_key[0] ) temp_value <= 3'b001;   //某个按键值变化时，temp_value翻转
				 else if ( flag_key[1] ) temp_value <= 3'b010;
             else if ( flag_key[2] ) temp_value <= 3'b100;
				 else temp_value <=temp_value;
         end
 
assign disp_mode = temp_value;     //disp_mode翻转输出

endmodule
