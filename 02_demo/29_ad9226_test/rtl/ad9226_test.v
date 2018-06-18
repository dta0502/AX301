`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//双通道的12bit AD输入测试程序
//////////////////////////////////////////////////////////////////////////////////
module ad9226_test(
				input clk50m, 
				input reset_n,

	         input rx,                   //uart rx
            output tx,                  //uart tx 
				
				input [11:0] ad1_in,        //第一通道AD输入
				output ad1_clk,             //第一通道AD时钟

				input [11:0] ad2_in,        //第二通道AD输入
				output ad2_clk	             //第二通道AD时钟

    );


assign ad1_clk=clk50m;
assign ad2_clk=clk50m;

wire [11:0] ad_ch1;
wire [11:0] ad_ch2;
wire [7:0] ch1_sig;
wire [7:0] ch2_sig;
wire [19:0] ch1_dec;
wire [19:0] ch2_dec;


/****************AD采样程序**************/
ad u1 (
		.ad_clk                     (clk50m),                           
		.ad1_in                     (ad1_in),             //ad1 input
		.ad2_in                     (ad2_in),	           //ad2 input	
      .ad_ch1                     (ad_ch1),             //ad1 data 12bit
      .ad_ch2                     (ad_ch2)              //ad2 data
 );

/**********AD十六进制转十进制***********/
volt_cal u2(
		.ad_clk           		 (clk50m),	
		.ad_ch1            		 (ad_ch1),           //ad1 data 12bit
		.ad_ch2                  (ad_ch2),           //ad2 data 12bit
	
		.ch1_dec                 (ch1_dec),         //ad1 BCD voltage
		.ch2_dec                 (ch2_dec),         //ad2 BCD voltage
	
		.ch1_sig                 (ch1_sig),         //ch1 ad 正负
		.ch2_sig                 (ch2_sig)          //ch2 ad 正负
	
    );

/**********AD数据Uart串口发送程序***********/
uart u3(
		.clk50           		    (clk50m),	
		.reset_n           		 (reset_n),	

		.ch1_dec                 (ch1_dec),         //ad1 BCD voltage
		.ch2_dec                 (ch2_dec),         //ad2 BCD voltage
	
		.ch1_sig                 (ch1_sig),         //ch1 ad 正负
		.ch2_sig                 (ch2_sig),          //ch2 ad 正负
		
		.tx                      (tx)
		
	
    );


endmodule
