module sinwave_store(clock_50M,wav_in_data,adcclk,bclk,adcdat,wav_wren);

	 input clock_50M;       
    input adcclk;        
    input adcdat;
    input bclk;

	 output reg [63:0] wav_in_data;
    output reg wav_wren;
	 

	 
reg [7:0]data_num;
reg [63:0]wave_data_reg;
   

reg adcclk_a,adcclk_b;
reg bclk_a,bclk_b;

reg wav_wren_req;
reg wav_wren_reg1;
reg wav_wren_reg2;
	
//检测dacclk信号的跳变
always@(posedge clock_50M )  
begin
		adcclk_a<=adcclk;
		adcclk_b<=adcclk_a;
end

//检测bclk时钟跳变  
always@(posedge clock_50M ) 
begin
		bclk_a<=bclk;
		bclk_b<=bclk_a;
end

//采集ADC的数据	
always@(posedge clock_50M )    
begin
		if(adcclk_a&!adcclk_b) begin    //一个音频fs开始
			wave_data_reg<=0;            //adcclk上升跳变时，数据寄存器清0
			data_num<=0;             
      end
      else if(bclk_a&&!bclk_b) begin   //bclk 上降沿,采集音频数据 
			wave_data_reg<={wave_data_reg[63:0], adcdat};
			data_num<=data_num+1'b1;
		end
end  
	  
//产生ddr写信号	
always@(posedge clock_50M )    
begin
		if(data_num==64) begin  //1fs共64bit
			wav_in_data<=wave_data_reg;            
			wav_wren_req<=1'b1;
      end
      else       
			wav_wren_req<=1'b0;
 	 
end  

//脉冲信号转换为一个clock宽度	
always@(posedge clock_50M )    
begin
 	 wav_wren_reg1<=wav_wren_req;
 	 wav_wren_reg2<=wav_wren_reg1;
	 if(wav_wren_reg1 & ~wav_wren_reg2)       
	      wav_wren<=1'b1;
	 else
 	      wav_wren<=1'b0;	 
    	 
end 
     
endmodule

