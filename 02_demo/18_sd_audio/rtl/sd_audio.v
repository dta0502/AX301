`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    sd_audio 
//////////////////////////////////////////////////////////////////////////////////
module sd_audio(
					input  clk_50m,           //50Mhz clock input
					input rst_n,
					output SD_clk,
					
					output SD_cs,
					output SD_datain,
					input  SD_dataout,
					
					input DACLRC,                    //WM8731 DAC左右声道输入
					input BCLK,                      //WM8731 时钟信号
					output DACDAT,                   //WM8731 语音输出
					
					input ADCLRC,                    //WM8731 ADC左右声道输入
					input ADCDAT,					      //WM8731 语音输入
	
					output I2C_SCLK,
					inout I2C_SDAT				   
					
    );

wire [15:0] wav_data;
wire wav_rden;

wire [31:0]read_sec;
wire read_SD;

wire [7:0]mydata_o;
wire myvalid_o;

wire [7:0]rx_o;
wire init_o;
wire read_o;


//PLL,产生25Mhz的SD CLK
pll	pll_inst(
					
	.areset(~rst_n),
	.inclk0(clk_50m),
	.c0(SD_clk),              //SD卡SPI时钟
	.locked()

);
	
//SD卡初始化程序
sd_initial	sd_initial_inst(
					
	.rst_n(rst_n),
	.SD_clk(SD_clk),
	.SD_cs(SD_cs_i),
	.SD_datain(SD_datain_i),
	.SD_dataout(SD_dataout),
	.rx(),
	.init_o(init_o),        //SD卡初始化完成信号
	.state()

);


//SD卡读音乐程序	 
sd_read	sd_read_inst(   
	.SD_clk(SD_clk),
	.SD_cs(SD_cs_r),
	.SD_datain(SD_datain_r),
	.SD_dataout(SD_dataout),
	
	.sec(read_sec),            //SD卡读扇区地址
	.read_req(read_SD),        //SD卡扇区读请求
						
	.mydata_o(mydata_o),       //SD卡读出的数据
	.myvalid_o(myvalid_o),     //SD卡读出数据有效信号
	
	.data_come(data_come),
						
	.init(init_o),
			
	.mystate()						
						
    );


//驱动wm8731的部分
mywav	mywav_inst(
	.clk50M(clk_50m),
	.rst_n(rst_n),
	
	.wav_data(wav_data),      //音频数据输出
	.myvalid(wav_rden),       //音频数据读请求
	
	.DACLRC(DACLRC),
	.BCLK(BCLK),
	.DACDAT(DACDAT),
	
	.I2C_SCLK(I2C_SCLK),
	.I2C_SDAT(I2C_SDAT)
);

//RAM的读写控制程序
ram_rw_control ram_rw_control_inst(
	.clk_50M(clk_50m),
	.SD_clk(SD_clk),
	.init(init_o),
	.data_come(data_come),
	
	
	
	.read_sec(read_sec),           //SD卡读扇区地址
	
	.read_SD(read_SD),             //SD卡扇区读请求
	
	.mydata(mydata_o),             //SD卡读出的数据
	.myvalid(myvalid_o),           //SD卡读出数据有效信号
	
	
	.wav_rden(wav_rden),           //音频数据读请求  
	.wav_data(wav_data)            //音频数据输出
    );

assign SD_cs=init_o?SD_cs_r:SD_cs_i;                     //SD_cs信号选择
assign SD_datain=init_o?SD_datain_r:SD_datain_i;         //SD_datain信号选择	 
   	 
	 
endmodule
