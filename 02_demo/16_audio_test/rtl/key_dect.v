`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    key_dect 
//////////////////////////////////////////////////////////////////////////////////
module key_dect(
	input clk50M,
	input reset_n,
	input  key1,

 	output reg record_en,
	output reg play_en,  	
	output reg sdr_raddr_set,
	output reg sdr_waddr_set

    );

reg [19:0] down_counter;                 //按键按下寄存器
reg [19:0] up_counter;                   //按键松开寄存器

reg [29:0] record_time;                  //录音时间寄存器
reg [29:0] play_time;                    //播放时间寄存器
reg [29:0] voice_play_time;              //一次有效录音时间寄存器

//按键按下处理程序
always @(posedge clk50M)
begin
   if (reset_n==1'b0) begin
	    down_counter<=0;
		 sdr_waddr_set<=1'b0;
		 record_en<=1'b0; 
		 record_time<=0;
		 voice_play_time<=0;
	end
	else begin
	    if (key1==1'b1) begin                             //如果按钮没有按下，寄存器为0
	       down_counter<=0;
		    record_en<=1'b0;                               //录音不使能
          sdr_waddr_set<=1'b0;                           //sdram写地址置0
			 record_time<=0;                                //录音时间清0
       end 			 
	    else begin                                        //按键按下		 
		   if (down_counter==20'd500_000) begin            //按钮按下有效，开始录音   
				down_counter<=down_counter;
				sdr_waddr_set<=1'b0;
				voice_play_time<=record_time;                   //录音时间记录              
				if(record_time==30'd999_999_999)	begin	         //20秒录音计数(50M*20-1=999_999_999)
					 record_en<=1'b0;                            //录音不使能		
					 record_time<=record_time;
				end
				else begin		
					 record_time<=record_time+1'b1;          	
					 record_en<=1'b1;                            //录音使能		 
				end
		   end
			else begin                                         //10ms按键去抖（50M*0.01-1=499_999)    
			   sdr_waddr_set<=1'b1;                            //sdr的写地址复位           
			   down_counter<=down_counter+1'b1;                //如果按钮按下并按下,计数  
			   record_en<=1'b0;                                //录音不使能
			   record_time<=0;                                 //录音时间清0
			end
		 end	
   end 
end

//按键松开处理程序
always @(posedge clk50M)
begin
   if (reset_n==1'b0) begin
	    up_counter<=0;
		 sdr_raddr_set<=1'b0;
		 play_en<=1'b0; 
		 play_time<=0;
	end
	else begin
	    if (key1==1'b0) begin                              //如果按钮没有松开，寄存器为0
	      up_counter<=0;
			play_en<=1'b0;
         sdr_raddr_set<=1'b0;  
			play_time<=0;	 
		 end
	    else begin
			 if (up_counter==20'd500_000) begin            //按钮已松开，开始播放
				up_counter<=up_counter;	
				sdr_raddr_set<=1'b0;                               //ddr的写地址复位不使能 				
				if(play_time==voice_play_time) begin               //播放时间等于录音的时间结束
					play_en<=1'b0;	                                 //播放不使能
					play_time<=play_time;
				end
				else begin			
					play_en<=1'b1;	                                 //播放使能
					play_time<=play_time+1'b1;
				end		
			 end
			 else begin                                           //10ms按键去抖（50M*0.01-1=499_999)            
				sdr_raddr_set<=1'b1;                               //sdr的写地址复位           
				up_counter<=up_counter+1'b1;                       //如果按钮松开,开始计数  
				play_en<=1'b0;
				play_time<=0;	 			
			 end
       end
    end 
end

endmodule
