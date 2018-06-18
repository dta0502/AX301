module sinwave_gen(clock_50M,wav_out_data,dacclk,bclk,dacdat,wav_rden);

input clock_50M;       

input dacclk;        
output dacdat;
input bclk;

input  [63:0]wav_out_data;
output reg wav_rden;

reg dacdat;

reg [7:0]data_num;
reg [63:0]audio_data;   
   
reg dacclk_a,dacclk_b;
reg bclk_a,bclk_b;

reg wav_rden_req;
reg wav_rden_reg1;
reg wav_rden_reg2;

	
//检测dacclk信号的跳变
always@(posedge clock_50M )  
begin
		dacclk_a<=dacclk;
		dacclk_b<=dacclk_a;
end

//检测bclk时钟跳变  
always@(posedge clock_50M ) 
begin
		bclk_a<=bclk;
		bclk_b<=bclk_a;
end
	
//播放声音数据		  
always@(posedge clock_50M )  
begin
		if(dacclk_a&&!dacclk_b) begin           //dacclk 上降沿,
			dacdat<=wav_out_data[63];
			audio_data<={wav_out_data[62:0],1'b0};			
			data_num<=0;
		end
      else if(!bclk_a&&bclk_b) begin   //bclk 下降沿,播放数据 
			dacdat<=audio_data[63];
			audio_data<={audio_data[62:0],1'b0};
			data_num<=data_num+1'b1;
		end
end 

//产生sdr读信号		  
always@(posedge clock_50M )    
begin
		if(data_num==56)               //提前8个时钟产生sdram读数据请求          
			wav_rden_req<=1'b1;
		else               
			wav_rden_req<=1'b0;	

end


//脉冲信号转换为一个clock宽度	
always@(posedge clock_50M )    
begin
 	 wav_rden_reg1<=wav_rden_req;
 	 wav_rden_reg2<=wav_rden_reg1;
	 if(wav_rden_reg1 & ~wav_rden_reg2)       
	      wav_rden<=1'b1;
	 else
 	      wav_rden<=1'b0;	
    	
end
  	
     
endmodule

