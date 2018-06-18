`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    DEMO_A 
//////////////////////////////////////////////////////////////////////////////////
module DEMO_A(

    input          CLK_50M,
	 input          RSTn,                //key1
	 
	 input   [2:0]  key_in,              //key2~key4
	 
	 input          rx,                  //uart rx
    output         tx,                  //uart tx 
	
	 output         DS1302_RST,                 //ds1302 CE/RST
	 output         DS1302_SCLK,                //ds1302 SCLK
	 inout          DS1302_SIO,                  //ds1302 SIO
	 
	 output   [3:0] led,
	 
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
	 inout  [15:0]	S_DB,		   //sdram data
	
	//VGA port	
	 output			vga_hs,			   //horizontal sync 
	 output			vga_vs,			   //vertical sync

	 output	[4:0]	vga_red,		      //LCD R data
	 output	[5:0]	vga_green,		   //LCD G data
	 output	[4:0]	vga_blue,		   //LCD B data
	
	//SD卡SPI接口
	 output                  SD_clk,
	 output                  SD_cs,
	 output                  SD_datain,
	 input                   SD_dataout,
	
   //数码管接口
	 output  [7:0]           SMG_Data,
	 output  [5:0]           Scan_Sig,
	 
   //蜂鸣器接口
 	 output                  Pin_Out

	 
    );

wire [2:0] disp_mode;

wire	     clk_vga;		   //vga clock
wire    	  clk_ref;		   //sdram ctrl clock
wire	     clk_refout;		//sdram clock output
wire       clk_spi;

wire	     sys_rst_n;		//global reset
wire       sys_clk;


system_ctrl	u_system_ctrl
(
	.clk				   (CLK_50M),			//global clock  50MHZ
	.rst_n				(RSTn),		   //external reset
	
	.sys_rst_n			(sys_rst_n),	//global reset
	.clk_c0				(clk_vga),		//65MHz vga clock
	.clk_c1				(clk_ref),		//100MHz -45deg
	.clk_c2				(clk_refout),	//100MHz
	.clk_c3			   (clk_spi),      //25Mhz SD SPI clock 
	.clk_c4          (sys_clk)

);

/**********RTC串口发送程序**********/
rtc_test u1 (
		.CLK_50M                 (sys_clk),                           
		.RSTn                    (sys_rst_n),
      .rx                      (rx), 
	   .tx                      (tx),
      .DS1302_RST              (DS1302_RST), 
      .DS1302_SCLK             (DS1302_SCLK), 	
      .DS1302_SIO              (DS1302_SIO) 			
		
 );


/**********LED程序***********/
led_test u2(
		.clk                      (sys_clk),                           
		.rst_n                    (sys_rst_n),
      .led                      (led) 
);


/**********SD VGA显示程序***********/
sd_sdram_vga u3(
		.clk_vga                    (clk_vga),            //VGA时钟
		.clk_ref                    (clk_ref),            //SDRAM Ref时钟
		.clk_refout                 (clk_refout),            //SDRAM时钟
		.clk_spi                    (clk_spi),            //SD SPI Clock	
		
		.rst_n                      (sys_rst_n),
	   .disp_mode		             (disp_mode),		
		 
      .S_CLK                      (S_CLK), 
      .S_CKE                      (S_CKE), 
      .S_NCS                      (S_NCS), 
      .S_NWE                      (S_NWE), 
      .S_NCAS                     (S_NCAS), 
      .S_NRAS                     (S_NRAS), 
      .S_DQM                      (S_DQM), 
      .S_BA                       (S_BA), 	
      .S_A                        (S_A), 	
		.S_DB                       (S_DB), 	
		
		.vga_red                    (vga_red), 
		.vga_green                  (vga_green),
		.vga_blue                   (vga_blue), 
		.vga_hs                     (vga_hs), 
		.vga_vs                     (vga_vs), 
		
		.SD_clk                     (SD_clk), 
		.SD_cs                      (SD_cs), 
		.SD_datain                  (SD_datain), 
		.SD_dataout                 (SD_dataout)		

);



/*********数码管显示程序***********/
	smg_interface_demo u4(

		.CLK                       (sys_clk),
		.RSTn                      (sys_rst_n),
	   .SMG_Data                  (SMG_Data),
	 	.Scan_Sig                  (Scan_Sig)

);

/***********蜂鸣器测试程序*********/
	sos_generator_module u5(

		.CLK                      (sys_clk),
		.RSTn                     (sys_rst_n),
	   .Pin_Out                  (Pin_Out)


);

/**********按键程序***********/
key_test u6(
		.clk                      (sys_clk),                           
		.rst_n                    (sys_rst_n),
      .key_in                   (key_in), 
		.disp_mode                (disp_mode)
);


endmodule
