`timescale 1ns / 1ps
module key_test(clk,rst_n,key_in,led_out);
input clk; //50Mhz
input rst_n;
input [3:0] key_in;
output [3:0] led_out;

reg [19:0] count;
reg [3:0] key_scan; //����ɨ��ֵ

always @(posedge clk or negedge rst_n) //��������ֵ������Ƶ��С�ڰ���ë��Ƶ�ʣ��൱���˳����˸�Ƶë���źš�
begin
   if(!rst_n) begin
          count <= 20'b0;
   end
   else begin
      if(count ==20'b1111_0100_0010_0100_0000) begin//20msɨ��һ�ΰ���
            count <= 20'b0;
            key_scan <= key_in;
      end
      else begin
            count <= count+20'b1;
      end
   end
end

reg [3:0] key_scan_r;
always @(posedge clk)
    key_scan_r <= key_scan;
    
wire [3:0] flag_key = key_scan_r[3:0] & (~key_scan[3:0]);  //����⵽�������½��ر仯ʱ������ð��������£�������Ч 

reg [3:0] temp_led;
always @ (posedge clk or negedge rst_n)
    if (!rst_n) begin
        temp_led <= 4'b1111;
    end
    else begin            
       if ( flag_key[0] ) temp_led[0] <= ~temp_led[0];   //ĳ������ֵ�仯ʱ��LED��������ת
       if ( flag_key[1] ) temp_led[1] <= ~temp_led[1];
       if ( flag_key[2] ) temp_led[2] <= ~temp_led[2];
       if ( flag_key[3] ) temp_led[3] <= ~temp_led[3];
    end
 
 assign led_out[0] = temp_led[0] ? 1'b0 : 1'b1;     //LED��ת���
 assign led_out[1] = temp_led[1] ? 1'b0 : 1'b1;
 assign led_out[2] = temp_led[2] ? 1'b0 : 1'b1;
 assign led_out[3] = temp_led[3] ? 1'b0 : 1'b1;
            
endmodule
