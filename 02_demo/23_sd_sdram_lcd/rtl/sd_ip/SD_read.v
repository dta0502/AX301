`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    SD_read 
//////////////////////////////////////////////////////////////////////////////////
module SD_read(   input SD_clk,
						output reg SD_cs,
						output reg SD_datain,
						input  SD_dataout,
						
						output reg [15:0]mydata_o,
						output myvalid_o,
						
						output [3:0] mystate_o,
						
						output data_come_o,
						
						input init,
						
						output reg [7:0] rx
						
						
    );
	 

reg en;
reg rx_valid;
reg [5:0] aa;	 
reg [21:0] cnt;

reg data_come;

reg myen;
reg [31:0] sec;            //SD的sec地址

reg [15:0] delay_cnt;

assign data_come_o=data_come;

assign mystate_o=mystate;
assign myvalid_o=myvalid;
//assign mydata_o=mydata;

reg myvalid/*synthesis noprune*/;
reg [15:0] mydata/*synthesis noprune*/;

reg [9:0] sec_size;


(* fsm_encoding = "user",
safe_implementation = "yes",
safe_recovery_state = "recovery_attr_val"*)
reg [3:0] mystate/*synthesis noprune*/;



parameter 
idle=4'd0;
parameter write=4'd1;
parameter write_wait=4'd2;
parameter read=4'd3;
parameter read_wait=4'd4;
parameter read_data=4'd5;
parameter read_done=4'd6;

parameter sec_length=10'd765;                  //total sector size of one picture : 480 * 272 * 3 /512


parameter SADDR=32'd16448;                     //图片在SD卡的起始sector地址

	 
always @(posedge SD_clk)
begin
	rx[0]<=SD_dataout;
	rx[7:1]<=rx[6:0];
end

//接收一个Byte的数��
always @(posedge SD_clk)
begin
	if(!SD_dataout&&!en)begin rx_valid<=1'b0; aa<=1;en<=1'b1;end      //等待SD_dataout为低,SD_dataout为低,开始接收数据
   else if(en)	begin 
		if(aa<7) begin
			aa<=aa+1'b1; 
			rx_valid<=1'b0;
		end
		else begin
			aa<=0;
			en<=1'b0;
			rx_valid<=1'b1;             //接收完第8bit后rx_valid信号开始有效
		end
	end
	else begin en<=1'b0;aa<=0;rx_valid<=1'b0;end
end

reg [47:0] CMD17; //CMD17的字节序列

//reg [47:0] CMD24={8'h58,8'h00,8'h00,8'h00,8'h00,8'hff};

reg [7:0] CMDX;
reg [7:0] CMDY=8'hff;
reg [3:0] cnta;

reg picture_store;                    

always @(posedge SD_clk)
if(!init)
	begin
		mystate<=idle;
		CMD17<={8'h51,8'h00,8'h00,8'h00,8'h00,8'hff};
		data_come<=1'b0;
		picture_store<=1'b0;
		sec<=SADDR;
		mydata<=0;	
		delay_cnt<=0;
	end
else
	begin
	case(mystate)
		idle:	begin
				data_come<=1'b0;
				SD_cs<=1'b1;
				SD_datain<=1'b1;
				cnt<=22'd0;	
		      mydata<=0;		
				if((picture_store==1'b0) && (delay_cnt==10000))       //如果还没有把SD卡的图片存放到SDRAM中
					begin
						mystate<=read;
						CMD17<={8'h51,sec[31:24],sec[23:16],sec[15:8],sec[7:0],8'hff};
					end
				else begin
				   mystate<=idle;
					delay_cnt<=delay_cnt+1'b1;	
	         end				
		end
		read: begin                    //发送CMD17命令 (single Block Read)		
			   data_come<=1'b0;
			   if(CMD17!=48'd0) begin
					SD_cs<=1'b0;
					SD_datain<=CMD17[47];
					CMD17<={CMD17[46:0],1'b0};     //移位输出
					myen<=1'b0;
					cnt<=22'd0;									
				end
				else begin 
				   if(rx_valid) begin         //等待应答信号		
						cnt<=0;
						mystate<=read_wait;
					end
				end
		end
		read_wait: begin             //等待接收数据的起始位,低电平
			    myvalid<=1'b0;
			    if(!SD_dataout) begin 
				     mystate<=read_data;
					  cnta<=0;
					  data_come<=1'b1;
				 end
				 else data_come<=1'b0;
			end
		read_data: begin             //接收SD数据
			   data_come<=1'b0;
				if(cnt<256)	begin                         //读取一个block的数据 512byte
			     if(cnta<15)	begin                      //组成16bit的数据 
					   myvalid<=1'b0;
						mydata<={mydata[14:0],SD_dataout};
						cnta<=cnta+1'b1;
				  end
				  else begin
						myvalid<=1'b1;                       //一个16bit数据有效
						mydata_o<={mydata[14:0],SD_dataout};
						cnta<=0;
						cnt<=cnt+1'b1;
				  end
				end
				else begin 
				   cnt<=0;
					mystate<=read_done;
					myvalid<=1'b0;
				end
		end
		read_done: begin               //512个字节完成
			   data_come<=1'b0;
				if(cnt<22'd15) begin
					 SD_cs<=1'b1;
					 SD_datain<=1'b1;
					 cnt<=cnt+1'b1;
				 end
				 else begin 
				    cnt<=0;
					 mystate<=idle;
					 if (sec_size<sec_length) begin     //如果整幅图像还未读完 
 					    picture_store<=1'b0;
                   sec <= sec + 1'b1;
						 sec_size <= sec_size +1'b1;
					 end	 
					 else	begin	 
					    picture_store<=1'b1;
					 end	 
				 end
			end
		default:mystate<=0;
		endcase		
	end					
	

endmodule
