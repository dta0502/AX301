`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    audio_test
// function: Key1 push down-record the voice to ddr, Key1 push off : play the voice from ddr
//////////////////////////////////////////////////////////////////////////////////
module audio_test(
   input clk_50m,
	input reset_n,
   input  key1,                 //KEY按键	
	
	input BCLK,
	input DACLRC,                    //WM8731 左右声道输出
	output DACDAT,                   //WM8731 语音输出
					
	input ADCLRC,                    //WM8731 左右声道输入
	input ADCDAT,					      //WM8731 语音输入
	
	output I2C_SCLK,
	inout I2C_SDAT,

	//sdram control
	output			S_CLK,		//sdram clock
	output			S_CKE,		//sdram clock enable
	output			S_NCS,		//sdram chip select
	output			S_NWE,		//sdram write enable
	output			S_NCAS,	   //sdram column address strobe
	output			S_NRAS,	   //sdram row address strobe
	output [1:0] 	S_DQM,		//sdram data enable 
	output [1:0]	S_BA,		   //sdram bank address
	output [12:0]	S_A,		   //sdram address
	inout	[15:0]	S_DB		   //sdram data
		
    );


wire wav_rden;
wire wav_wren;

wire sdr_waddr_set;
wire sdr_raddr_set;

wire record_en;
wire play_en;
       

//PLL时钟
system_ctrl	u_system_ctrl
(
	.clk				   (clk_50m),		//global clock  50MHZ
	.rst_n				(reset_n),		   //external reset
	
	.sys_rst_n			(sys_rst_n),	//global reset
	.clk_c0				(),		      //50MHz clock
	.clk_c1				(clk_ref),		//100MHz -45deg
	.clk_c2				(clk_refout),	//100MHz
	.clk_c3			   ()             //25Mhz clock 
);

//驱动wm8731的部分
mywav	mywav_inst(
	.clk50M(clk_50m),
	
	.sys_data_out(sys_data_out),        //音频播放数据,从sdram读出
	.sys_rd(sys_rd),                    //sdram读信号
	.sys_data_in(sys_data_in),          //录音数据，写入到sdram
	.sys_we(sys_we),                    //sdram写信号
 	.record_en(record_en),              //录音使能
	.play_en(play_en),  	               //播音使能

	.BCLK(BCLK),	
	.DACLRC(DACLRC),
	.DACDAT(DACDAT),	
	.ADCLRC(ADCLRC),
	.ADCDAT(ADCDAT),	
	
	.I2C_SCLK(I2C_SCLK),
	.I2C_SDAT(I2C_SDAT)
);

//按键KEY1检测程序,按下录音，松开播音
key_dect	key_dect_inst(
	.clk50M(clk_50m),
	.key1(key1),
	.reset_n(sys_rst_n),               //系统复位
	
 	.record_en(record_en),             //录音使能
	.play_en(play_en),  	              //播音使能
	.sdr_raddr_set(sdr_raddr_set),     //sdram读地址复位
	.sdr_waddr_set(sdr_waddr_set)      //sdram写地址复位
	
);
//SDR读写控制部分
//----------------------------------------------
wire			sys_rd/* synthesis keep */;        		   //fifo read enable
wire	[15:0]	sys_data_out/* synthesis keep */;  		//fifo data output

wire			sys_we/* synthesis keep */;        		   //fifo write enable
wire	[15:0]	sys_data_in/* synthesis keep */;  		//fifo data input

wire			frame_write_done;	                        //sdram write frame done
wire			frame_read_done;	                        //sdram read frame done
wire	[1:0]	wr_bank;			                           //sdram write bank
wire	[1:0]	rd_bank;			                           //sdram read bank
wire			wr_load;			                           //sdram write address reset
wire			rd_load;			                           //sdram read address reset


assign rd_load=sdr_raddr_set;
assign wr_load=sdr_waddr_set;


sdram_2fifo_top	u_sdram_2fifo_top
(
	//global clock
	.clk_ref			   (clk_ref),			   //sdram	reference clock
	.clk_refout			(clk_refout),	   	//sdram clk	input 
	.clk_read			(clk_50m),			   //fifo data read clock
	.clk_write			(clk_50m),			   //fifo data write clock	
	.rst_n				(sys_rst_n),			   //global reset
	
	//sdram control
	.sdram_clk			(S_CLK),		   //sdram clock
	.sdram_cke			(S_CKE),		   //sdram clock enable
	.sdram_cs_n			(S_NCS),		   //sdram chip select
	.sdram_we_n			(S_NWE),		   //sdram write enable
	.sdram_cas_n		(S_NCAS),		//sdram column address strobe
	.sdram_ras_n		(S_NRAS),		//sdram row address strobe
	.sdram_udqm			(S_DQM[1]),		//sdram data enable (H:8)
	.sdram_ldqm			(S_DQM[0]),		//sdram data enable (L:8)
	.sdram_ba			(S_BA),			//sdram bank address
	.sdram_addr			(S_A),		   //sdram address
	.sdram_data			(S_DB),		   //sdram data

	
	//user interface
	//burst and addr
	.wr_length			(9'd128),			//sdram write burst length
	.rd_length			(9'd128),			//sdram read burst length
	.wr_addr		  	   (22'd0),			   //sdram start write address
	.wr_max_addr		(22'h200000),		//sdram max write address 
	.wr_load			   (wr_load),			//sdram write address reset
	.rd_addr			   (22'd0),			   //sdram start read address
	.rd_max_addr		(22'h200000),		//sdram max read address 
	.rd_load			   (rd_load),			//sdram read address reset
	
	//  interface
	.sdram_init_done	(sdram_init_done),	//sdram init done
	.frame_write_done	(frame_write_done),	//sdram write one frame
	.frame_read_done	(frame_read_done),	//sdram read one frame
	.sys_we				(sys_we),			   //fifo write enable
	.sys_data_in		(sys_data_in),		   //fifo data input
	.sys_rd				(sys_rd),			   //fifo read enable
	.sys_data_out		(sys_data_out),		//fifo data output
	.data_valid			(lcd_framesync)		//system data output enable
);



endmodule
