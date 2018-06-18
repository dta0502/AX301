`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module mywav(
		input 	      clk50M,
			
		input  [15:0]	sys_data_out,         //sdram读出的音频的数据
		output reg    	sys_rd,               //sdram读请求
		output reg [15:0] 	sys_data_in,          //sdram写数据      
		output reg	   sys_we,               //sdram写请求 
		
		input          record_en,
      input          play_en,
		
		input 	      DACLRC,
		input 	      BCLK,
		output 	      DACDAT,
		input          ADCLRC,                   
		input          ADCDAT,					      

		
		output   	   I2C_SCLK,
		inout 	      I2C_SDAT
);


wire	rst_n;


//复位延时65536*20ns
reset_delay	reset_delay_inst(
	.clock_50m(clk50M),
	.rst_n(rst_n));

//配置WM8731的寄存器
reg_config	reg_config_inst(
	.clock_50m(clk50M),
	.reset_n(rst_n),
	.i2c_sdat(I2C_SDAT),
	.i2c_sclk(I2C_SCLK)
	);

//发送音频数据,right justified
reg [63:0] wav_out_data;
sinwave_gen sinwave_gen_inst(
	.clock_50M(clk50M),

	.dacclk(DACLRC),
	.bclk(BCLK),
	.dacdat(DACDAT),

	.wav_out_data(wav_out_data),	
	.wav_rden(wav_rden)
	);
	
//接收音频数据,right justified
wire [63:0] wav_in_data;
sinwave_store sinwave_store_inst(
	.clock_50M(clk50M),
	
	.adcclk(ADCLRC),
	.bclk(BCLK),
	.adcdat(ADCDAT),
	
	.wav_in_data(wav_in_data),
	.wav_wren(wav_wren)
	);

//检测wav_rden信号，产生一个12个时钟的计数器
reg [3:0] play_number;
always@(posedge clk50M)
begin
  if(play_en==1'b0) begin       //播音不使能
	 play_number<=0;
  end
  else                          //播音使能
    if (wav_wren==1'b1) 
       play_number<=4'd11;
	 else if (play_number==4'd0)	 
       play_number<=0; 
	 else 
       play_number<=play_number-1'b1;
end

//把SDRAM读出的16位数据组成64位的数据(一个fs)
always@(posedge clk50M)
begin
  case (play_number)
  4'd11,4'd8,4'd5,4'd2 : begin  sys_rd<=1'b1; end             //产生4个读SDRAM的信号
  
  4'd10,4'd7,4'd4,4'd1 : begin  wav_out_data<={wav_out_data[47:0],sys_data_out}; sys_rd<=1'b0; end //读出的16位数据组成64位
    
  4'd9,4'd6,4'd3,4'd0: begin  wav_out_data<=wav_out_data; sys_rd<=1'b0; end   //数据保持
  
  endcase
end 	
	
	
//检测wav_wren信号，产生一个12个时钟的计数器
reg [3:0] store_number;
always@(posedge clk50M)
begin
  if(record_en==1'b0) begin       //录音不使能
	 store_number<=0;
  end
  else                            //录音使能
    if (wav_wren==1'b1) 
       store_number<=4'd11;
	 else if (store_number==4'd0)	 
       store_number<=0; 
	 else 
       store_number<=store_number-1'b1;
end

//把64位的数据(1个fs数据)分4次写入SDRAM中
always@(posedge clk50M)
begin
  case (store_number)
  4'd11 : begin  sys_data_in<=wav_in_data[63:48]; sys_we<=1'b0; end
  
  4'd8 : begin  sys_data_in<=wav_in_data[47:32]; sys_we<=1'b0; end
  
  4'd5 : begin  sys_data_in<=wav_in_data[31:16]; sys_we<=1'b0; end
  
  4'd2 : begin  sys_data_in<=wav_in_data[15:0]; sys_we<=1'b0; end  
  
  4'd10,4'd7,4'd4,4'd1 : begin  sys_we<=1'b1; end             //产生4个写SDRAM的信号
  
  4'd9,4'd6,4'd3,4'd0: begin  sys_data_in<=sys_data_in; sys_we<=1'b0; end  //数据保持
  
  endcase
end  
  

	

endmodule
