`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    volt_cal 
//////////////////////////////////////////////////////////////////////////////////
module volt_cal(
   input        		clk,                  //50mhz
	input        		ad_reset,
	
	input [15:0] ad_ch1,              //AD第1通道的数据
	input [15:0] ad_ch2,              //AD第2通道的数据
	input [15:0] ad_ch3,              //AD第3通道的数据
	input [15:0] ad_ch4,              //AD第4通道的数据
	input [15:0] ad_ch5,              //AD第5通道的数据
	input [15:0] ad_ch6,              //AD第6通道的数据
	input [15:0] ad_ch7,              //AD第7通道的数据
	input [15:0] ad_ch8,              //AD第8通道的数据	


	output [19:0] ch1_dec,             //AD第1通道的十进制电压数据
	output [19:0] ch2_dec,             //AD第1通道的十进制电压数据	
	output [19:0] ch3_dec,             //AD第1通道的十进制电压数据
	output [19:0] ch4_dec,             //AD第1通道的十进制电压数据	
	output [19:0] ch5_dec,             //AD第1通道的十进制电压数据
	output [19:0] ch6_dec,             //AD第1通道的十进制电压数据	
	output [19:0] ch7_dec,             //AD第1通道的十进制电压数据
	output [19:0] ch8_dec,             //AD第1通道的十进制电压数据	

	output reg [7:0] ch1_sig,          //AD第1通道的数据正负字符
	output reg [7:0] ch2_sig,          //AD第2通道的数据正负字符	
	output reg [7:0] ch3_sig,          //AD第1通道的数据正负字符
	output reg [7:0] ch4_sig,          //AD第2通道的数据正负字符	
	output reg [7:0] ch5_sig,          //AD第1通道的数据正负字符
	output reg [7:0] ch6_sig,          //AD第2通道的数据正负字符	
	output reg [7:0] ch7_sig,          //AD第1通道的数据正负字符
	output reg [7:0] ch8_sig           //AD第2通道的数据正负字符	
	

    );


reg [15:0] ch1_reg;
reg [15:0] ch2_reg;
reg [15:0] ch3_reg;
reg [15:0] ch4_reg;
reg [15:0] ch5_reg;
reg [15:0] ch6_reg;
reg [15:0] ch7_reg;
reg [15:0] ch8_reg;

reg [31:0] ch1_data_reg;
reg [31:0] ch2_data_reg;
reg [31:0] ch3_data_reg;
reg [31:0] ch4_data_reg;
reg [31:0] ch5_data_reg;
reg [31:0] ch6_data_reg;
reg [31:0] ch7_data_reg;
reg [31:0] ch8_data_reg;

reg [31:0] ch1_vol;
reg [31:0] ch2_vol;
reg [31:0] ch3_vol;
reg [31:0] ch4_vol;
reg [31:0] ch5_vol;
reg [31:0] ch6_vol;
reg [31:0] ch7_vol;
reg [31:0] ch8_vol;


//AD 电压换算
always @(posedge clk)
begin
  if(ad_reset == 1'b1) begin   
     ch1_reg<=0;
	  ch2_reg<=0;
     ch3_reg<=0;
	  ch4_reg<=0;
     ch5_reg<=0;
	  ch6_reg<=0;
     ch7_reg<=0;
	  ch8_reg<=0;
  end
  else begin
    //////////CH1数据/////////////
    if(ad_ch1[15]==1'b1) begin                      //如果是负电压
	    ch1_reg<=16'hffff-ad_ch1+1'b1;
		 ch1_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch1_reg<=ad_ch1;
		 ch1_sig<=43;                                  //'+' asic码		 
	 end	
	 
    //////////CH2数据/////////////
    if(ad_ch2[15]==1'b1) begin                      //如果是负电压
	    ch2_reg<=16'hffff-ad_ch2+1'b1;
		 ch2_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch2_reg<=ad_ch2;
		 ch2_sig<=43;                                  //'+' asic码		 
	 end	
	 
    //////////CH3数据/////////////		
    if(ad_ch3[15]==1'b1) begin                      //如果是负电压
	    ch3_reg<=16'hffff-ad_ch3+1'b1;
		 ch3_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch3_reg<=ad_ch3;
		 ch3_sig<=43;                                  //'+' asic码		 
	 end	

    //////////CH4数据/////////////
    if(ad_ch4[15]==1'b1) begin                      //如果是负电压
	    ch4_reg<=16'h7ffff-ad_ch4+1'b1;
		 ch4_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch4_reg<=ad_ch4;
		 ch4_sig<=43;                                  //'+' asic码		 
	 end	

    //////////CH5数据/////////////
    if(ad_ch5[15]==1'b1) begin                      //如果是负电压
	    ch5_reg<=16'hffff-ad_ch5+1'b1;
		 ch5_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch5_reg<=ad_ch5;
		 ch5_sig<=43;                                  //'+' asic码		 
	 end	

    //////////CH6数据/////////////		 
    if(ad_ch6[15]==1'b1) begin                      //如果是负电压
	    ch6_reg<=16'hffff-ad_ch6+1'b1;
		 ch6_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch6_reg<=ad_ch6;
		 ch6_sig<=43;                                  //'+' asic码		 
	 end	

    //////////CH7数据/////////////		 
    if(ad_ch7[15]==1'b1) begin                      //如果是负电压
	    ch7_reg<=16'h7ffff-ad_ch7+1'b1;
		 ch7_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch7_reg<=ad_ch7;
		 ch7_sig<=43;                                  //'+' asic码		 
	 end	

    //////////CH8数据/////////////		 
    if(ad_ch8[15]==1'b1) begin                      //如果是负电压
	    ch8_reg<=16'hffff-ad_ch8+1'b1;
		 ch8_sig <= 45;                                //'-' asic码
	 end	 
	 else begin
       ch8_reg<=ad_ch8;
		 ch8_sig<=43;                                  //'+' asic码		 
	 end		 
		 
	end	 
end 		 


//AD 电压换算(1 LSB = 5V / 32758 = 0.15mV
always @(posedge clk)
begin
  if(ad_reset == 1'b1) begin   
     ch1_data_reg<=0;
	  ch2_data_reg<=0;
     ch3_data_reg<=0;
	  ch4_data_reg<=0;
     ch5_data_reg<=0;
	  ch6_data_reg<=0;
     ch7_data_reg<=0;
	  ch8_data_reg<=0;
     ch1_vol<=0;
     ch2_vol<=0;
     ch3_vol<=0;
     ch4_vol<=0;
     ch5_vol<=0;
     ch6_vol<=0;
     ch7_vol<=0;
     ch8_vol<=0;	
  end
  else begin		 
		   ch1_data_reg<=ch1_reg * 50000;			
		   ch2_data_reg<=ch2_reg * 50000;
		   ch3_data_reg<=ch3_reg * 50000;
		   ch4_data_reg<=ch4_reg * 50000;
		   ch5_data_reg<=ch5_reg * 50000;
		   ch6_data_reg<=ch6_reg * 50000;
		   ch7_data_reg<=ch7_reg * 50000;
		   ch8_data_reg<=ch8_reg * 50000;	
			
         ch1_vol<=ch1_data_reg >>15;
         ch2_vol<=ch2_data_reg >>15;
         ch3_vol<=ch3_data_reg >>15;
         ch4_vol<=ch4_data_reg >>15;
         ch5_vol<=ch5_data_reg >>15;
         ch6_vol<=ch6_data_reg >>15;
         ch7_vol<=ch7_data_reg >>15;
         ch8_vol<=ch8_data_reg >>15;
	 end	
  end	
 
//16进制转化为十进制的  
bcd bcd1_ist(         
               .hex           (ch1_vol[15:0]),
					.dec           (ch1_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd2_ist(         
               .hex           (ch2_vol[15:0]),
					.dec           (ch2_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd3_ist(         
               .hex           (ch3_vol[15:0]),
					.dec           (ch3_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd4_ist(         
               .hex           (ch4_vol[15:0]),
					.dec           (ch4_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd5_ist(         
               .hex           (ch5_vol[15:0]),
					.dec           (ch5_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd6_ist(         
               .hex           (ch6_vol[15:0]),
					.dec           (ch6_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd7_ist(         
               .hex           (ch7_vol[15:0]),
					.dec           (ch7_dec),
					.clk           (clk)
					); 

//16进制转化为十进制的  
bcd bcd8_ist(         
               .hex           (ch8_vol[15:0]),
					.dec           (ch8_dec),
					.clk           (clk)
					); 
		
  
endmodule


  