/*-------------------------------------------------------------------------
Filename			:		sdram_ov5640_lcd.v
Description			:		sdram lcd controller with ov5640 display.
Modification History	:
Data			By			Version			Change Description
===========================================================================
15/02/1
--------------------------------------------------------------------------*/
`timescale 1ns / 1ps
module sdram_ov5640_lcd
(
	//global clock 50MHz
	//input			clk_27,			//27MHz
	input			CLOCK,	
	//input			rst_n,			//global reset
	
	//sdram control
	output			S_CLK,		//sdram clock
	output			S_CKE,		//sdram clock enable
	output			S_NCS,		//sdram chip select
	output			S_NWE,		//sdram write enable
	output			S_NCAS,	//sdram column address strobe
	output			S_NRAS,	//sdram row address strobe
	output[1:0] 	S_DQM,		//sdram data enable 
	output	[1:0]	S_BA,		//sdram bank address
	output	[12:0]	S_A,		//sdram address
	inout	[15:0]	S_DB,		//sdram data
	
	//lcd
	output lcd_out_clk,
	output lcd_out_hs,
	output lcd_out_vs,
	output lcd_out_de,
	output[7:0]  lcd_out_rgb_b,
	output[7:0]  lcd_out_rgb_g,
	output[7:0]  lcd_out_rgb_r,
	output       back_pwm,      //LCD back led control
	
	//cmos interface
	output			CMOS_SCLK,		//cmos i2c clock
	inout			CMOS_SDAT,		//cmos i2c data
	input			CMOS_VSYNC,		//cmos vsync
	input			CMOS_HREF,		//cmos hsync refrence
	input			CMOS_PCLK,		//cmos pxiel clock
	output			CMOS_XCLK,		//cmos externl clock
	input	[7:0]	CMOS_DB,		//cmos data
	output			cmos_rst_n,		//cmos reset
	output			cmos_pwdn,		//cmos pwer down

   input          KEY1,      //KEY1 input
	output	[3:0]	LED		//led data input	
);

wire	[4:0]	lcd_red;		   //lcd red data
wire	[5:0]	lcd_green;		//lcd green data
wire	[4:0]	lcd_blue;		//lcd blue data

assign rst_n = 1'b1;
assign lcd_out_rgb_r={lcd_red[4:0],lcd_red[2:0]};     
assign lcd_out_rgb_g={lcd_green[5:0],lcd_green[1:0]};     
assign lcd_out_rgb_b={lcd_blue[4:0],lcd_blue[2:0]};     
//---------------------------------------------
wire  clk_camera;
wire	clk_vga;		//vga clock
wire	clk_ref;		//sdram ctrl clock
wire	clk_refout;		//sdram clock output
wire	sys_rst_n;		//global reset
system_ctrl	u_system_ctrl
(
	.clk				(CLOCK),			//global clock  50MHZ
	.rst_n				(rst_n),		//external reset
	
	.sys_rst_n			(sys_rst_n),	//global reset
	.clk_c0				(clk_camera),	//24MHz
	.clk_c1				(clk_vga),		//25MHz
	.clk_c2				(clk_ref),	   //100MHz
	.clk_c3				(clk_refout)	//100MHz

);
 

wire initial_en; 
 
 //上电延迟部分
power_on_delay	power_on_delay_inst(
	.clk_50M                 (clk_camera),
	.reset_n                 (sys_rst_n),	
	.camera_rstn             (cmos_rst_n),
	.camera_pwnd             (cmos_pwdn),
	.initial_en              (initial_en)		
);

//Camera初始化部分,Camera LED FLASH control
reg_config	reg_config_inst(
	.clk_25M                 (clk_camera),
	.camera_rstn             (cmos_rst_n),
	.initial_en              (initial_en),		
	.i2c_sclk                (CMOS_SCLK),
	.i2c_sdat                (CMOS_SDAT),
	.reg_conf_done           (Config_Done),
	.strobe_flash            (),
	.reg_index               (),
	.clock_20k               (),
	.key1                    (KEY1)
);
 

//-----------------------------------------------
//Seg7_lut	u5	(	LUT_INDEX[7:4],	oSEG5	);	
//Seg7_lut	u4	(	LUT_INDEX[3:0],	oSEG4	);
//Seg7_lut	u1	(	I2C_RDATA[7:4],	oSEG1	);
//Seg7_lut	u0	(	I2C_RDATA[3:0],	oSEG0	);

//-----------------------------------------------               
wire			frame_valid;		//data valid, or address restart
wire	[7:0]	cmos_fps_data;		//cmos frame rate
CMOS_Capture	u_CMOS_Capture
(
	//Global Clock
	.iCLK				(clk_camera),		//24MHz
	.iRST_N				(sys_rst_n),	//global reset
	
	//I2C Initilize Done
	.Init_Done			(Config_Done & sdram_init_done),	//Init Done
	
	//Sensor Interface
	.CMOS_RST_N			(),//(cmos_rst_n),	//cmos work state 
	.CMOS_PWDN			(),//(cmos_pwdn),	//cmos power on	
	.CMOS_XCLK			(CMOS_XCLK),		//cmos
	.CMOS_PCLK			(CMOS_PCLK),		//24MHz
	.CMOS_iDATA			(CMOS_DB),    	//CMOS Data
	.CMOS_VSYNC			(CMOS_VSYNC),  	 	//L: Vaild
	.CMOS_HREF			(CMOS_HREF), 		//H: Vaild
	                                    
	//Ouput Sensor Data                 
	.CMOS_oCLK			(sys_we),			//Data PCLK
	.CMOS_oDATA			(sys_data_in),  	//16Bits RGB
	.CMOS_VALID			(frame_valid),		//Data Enable
	.CMOS_FPS_DATA		()//(cmos_fps_data)		//cmos frame rate
);

//Seg7_lut	u7	(	cmos_fps_data[7:4],	oSEG7	);	//fsp rate
//Seg7_lut	u6	(	cmos_fps_data[3:0],	oSEG6	);	//fps rate


//wire	[8:0]	alpha_data;					//alpha adjust data
//assign	led_data = alpha_data;				//diaplay alpha data
//alpha_control	u_alpha_control
//(
//	.clk				(clk_vga),			//vga clock
//	.rst_n				(sys_rst_n),		//global reset
//	
//	.key_data			(key_data),			//key data
//	.alpha_data			(alpha_data)		//aplha adjust data
//);

//-------------------------------------
//sdram vga ctrl system
wire			sys_we;						//system data write enable
wire	[15:0]	sys_data_in;				//system data input
wire			sdram_init_done;			//sdram init done
sdram_vga_top	u_sdram_vga_top
(
	//global clock
	.clk_vga			(clk_vga),			//vga clock
	.clk_ref			(clk_ref),			//sdram ctrl clock
	.clk_refout			(clk_refout),		//sdram clock output
	.rst_n				(sys_rst_n),		//global reset

	//sdram control
	.sdram_clk			(S_CLK),		//sdram clock
	.sdram_cke			(S_CKE),		//sdram clock enable
	.sdram_cs_n			(S_NCS),		//sdram chip select
	.sdram_we_n			(S_NWE),		//sdram write enable
	.sdram_cas_n		(S_NCAS),		//sdram column address strobe
	.sdram_ras_n		(S_NRAS),		//sdram row address strobe
	.sdram_udqm			(S_DQM[1]),		//sdram data enable (H:8)
	.sdram_ldqm			(S_DQM[0]),		//sdram data enable (L:8)
	.sdram_ba			(S_BA),			//sdram bank address
	.sdram_addr			(S_A),		//sdram address
	.sdram_data			(S_DB),		//sdram data
		
	//lcd port
	.lcd_dclk			(lcd_out_clk),			//lcd pixel clock			
	.lcd_hs				(lcd_out_hs),			//lcd horizontal sync 
	.lcd_vs				(lcd_out_vs),			//lcd vertical sync
	.lcd_sync			(),//(lcd_sync),			//lcd sync
	.lcd_blank			(lcd_out_de),		//lcd blank(L:blank)
	.lcd_red			   (lcd_red),			//lcd red data
	.lcd_green			(lcd_green),		   //lcd green data
	.lcd_blue			(lcd_blue),			//lcd blue data
	.back_pwm			(back_pwm),		            //lcd back led control		
	
	//user interface
	.clk_write			(CMOS_PCLK),			//fifo write clock
	.sys_we				(sys_we),			//fifo write enable
	.sys_data_in		(sys_data_in),		//fifo data input
	.sdram_init_done	(sdram_init_done),	//sdram init done
	.frame_valid		(frame_valid)		//frame valid
);


endmodule
