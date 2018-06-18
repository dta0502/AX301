`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    sd_initial 
//////////////////////////////////////////////////////////////////////////////////
module SD_initial(
						
						input rst_n,
						
						input SD_clk,
						output reg SD_cs,
						output reg SD_datain,
						input  SD_dataout,
						
						output reg [47:0]rx,
						output reg init_o,
						output reg [3:0] state

);


reg [47:0] CMD0={8'h40,8'h00,8'h00,8'h00,8'h00,8'h95};  //CMD0需要CRC 95
reg [47:0] CMD8={8'h48,8'h00,8'h00,8'h01,8'haa,8'h87};   

reg [47:0] CMD55={8'h77,8'h00,8'h00,8'h00,8'h00,8'hff};
reg [47:0] ACMD41={8'h69,8'h40,8'h00,8'h00,8'h00,8'hff};


reg [9:0] counter=10'd0;
reg reset=1'b1;

reg [9:0] cnt;

reg [5:0]aa;
reg rx_valid;
reg en;

//接收SD卡的数据
always @(posedge SD_clk)
begin
	rx[0]<=SD_dataout;
	rx[47:1]<=rx[46:0];
end

//接收SD的命令应答信号
always @(posedge SD_clk)
begin
	if(!SD_dataout&&!en) begin //等待SD_dataout为低,SD_dataout为低,开始接收数据
	  rx_valid<=1'b0; 
	  aa<=1;
	  en<=1'b1;
	end   
   else if(en)	begin 
		if(aa<47) begin
			aa<=aa+1'b1;  
			rx_valid<=1'b0;
		end
		else begin
			aa<=0;
			en<=1'b0;
			rx_valid<=1'b1;        //接收完第48bit后,rx_valid信号开始有效
		end
	end
	else begin 
	   en<=1'b0;
		aa<=0;
		rx_valid<=1'b0;
	end
end

//上电后延时计数，释放reset信号
always @(negedge SD_clk or negedge rst_n)
begin
   if (!rst_n) begin
	    counter<=0;
		 reset<=1'b1;
	end
	else begin
	  if(counter<10'd1023) begin 
			counter<=counter+1'b1;
			reset<=1'b1;
	  end
	  else begin 	
	      reset<=1'b0;
	  end
	end  
end

//SD卡初始化程序
always @(negedge SD_clk)
begin
	if(reset==1'b1) begin
	  if(counter<512)  begin
		  SD_cs<=1'b0;         //片选CS低电平选中SD卡
		  SD_datain<=1'b1;
		  init_o<=1'b0;
		  state<=4'd0;
	  end
	  else begin
		  SD_cs<=1'b1;         //片选CS高电平释放SD卡
		  SD_datain<=1'b1;
		  init_o<=1'b0;
		  state<=4'd0;
	  end
	end
	else begin
			case(state)
			   4'd0:	begin
					init_o<=1'b0;
					CMD0<={8'h40,8'h00,8'h00,8'h00,8'h00,8'h95};    
					SD_cs<=1'b1;
					SD_datain<=1'b1;
					state<=4'd1;
					cnt<=0;
				end
				4'd1: begin              //发送CMD0
					if(CMD0!=48'd0) begin
						SD_cs<=1'b0;
						SD_datain<=CMD0[47];
						CMD0<={CMD0[46:0],1'b0};
					end
						else begin
							SD_cs<=1'b0;
							SD_datain<=1'b1;
							state<=4'd2;
						end
					end
				 4'd2:begin                        //等待SD卡回应0x01
						if(rx_valid&&rx[47:40]==8'h01) begin          
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							state<=4'd3;
						end
						else if(rx_valid&&rx[47:40]!=8'h01)	begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							state<=4'd0;
						end
						else begin
							SD_cs<=1'b0;
							SD_datain<=1'b1;
							state<=4'd2;
						end
				  end
				  4'd3: begin                //等待一段时间			
						if(cnt<10'd1023)	begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							state<=4'd3;
							cnt<=cnt+1'b1;
						end
						else begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							CMD8<={8'h48,8'h00,8'h00,8'h01,8'haa,8'h87};           
							cnt<=0;
							state<=4'd4;
						end
					end
					4'd4: begin                     //发送CMD8	
						if(CMD8!=48'd0) begin
							SD_cs<=1'b0;
							SD_datain<=CMD8[47];
							CMD8<={CMD8[46:0],1'b0};
						end
						else begin
							SD_cs<=1'b0;
							SD_datain<=1'b1;
							state<=4'd5;
						end
					end
					4'd5: begin                     //等待CMD8应答,
						SD_cs<=1'b0;
					   SD_datain<=1'b1;
						if(rx_valid&&rx[19:16]==4'b0001) begin         //SD2.0卡，　support 2.7V-3.6V supply voltage										
						   state<=4'd6;
						   CMD55<={8'h77,8'h00,8'h00,8'h00,8'h00,8'hff};
							ACMD41<={8'h69,8'h40,8'h00,8'h00,8'h00,8'hff};
						end
						else if(rx_valid&&rx[19:16]!=4'b0001)	begin
							state<=4'd9;
						end
 				    end
					 4'd6:begin             //发送CMD55 				
						if(CMD55!=48'd0)begin
						   SD_cs<=1'b0;
							SD_datain<=CMD55[47];
							CMD55<={CMD55[46:0],1'b0};
						end
						else begin
						   SD_cs<=1'b0;
							SD_datain<=1'b1;
							if(rx_valid&&rx[47:40]==8'h01)      //等待应答信号01
							   state<=4'd7;
							else begin
								if(cnt<10'd127)
								   cnt<=cnt+1'b1;
								else begin
  								   cnt<=10'd0;
									state<=4'd9;
							   end
							end
						 end
					  end
					  4'd7: begin          //发送ACMD41
						  if(ACMD41!=48'd0) begin						
								SD_cs<=1'b0;
								SD_datain<=ACMD41[47];
								ACMD41<={ACMD41[46:0],1'b0};
							end
							else begin
								SD_cs<=1'b0;
								SD_datain<=1'b1;
								ACMD41<=48'd0;
								if(rx_valid&&rx[47:40]==8'h00)
								   state<=4'd8;
								else begin
									if(cnt<10'd127)
									   cnt<=cnt+1'b1;
									else begin
  									   cnt<=10'd0;
										state<=4'd9;
								   end
								end	
							end
					end
					4'd8:begin init_o<=1'b1;SD_cs<=1'b1;SD_datain<=1'b1;cnt<=0;state<=state;end     //初始化完成
					4'd9:begin init_o<=1'b0;SD_cs<=1'b1;SD_datain<=1'b1;cnt<=0;state<=4'd3;end       //初始化未成功,重新发送CMD8, CMD55 和CMD41
					default: begin	state<=4'd0; SD_cs<=1'b1; SD_datain<=1'b1;init_o<=1'b0;end
			endcase
	 end
end
								
endmodule
