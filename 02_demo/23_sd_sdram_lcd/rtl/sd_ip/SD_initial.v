`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    SD_initial 
//////////////////////////////////////////////////////////////////////////////////
module SD_initial(
						
						input rst_n,
						input SD_clk,
						output reg SD_cs,
						output reg SD_datain,
						input  SD_dataout,
						output reg  [47:0]rx,
						output init_o,
						output reg [3:0] state

);



assign init_o=init;

reg [7:0] CMD;

reg [47:0] CMD8;

reg [47:0] CMD55={8'h77,8'h00,8'h00,8'h00,8'h00,8'hff};
reg [47:0] ACMD41={8'h69,8'h40,8'h00,8'h00,8'h00,8'hff};


reg init;

reg [9:0] counter=10'd0;
reg reset=1'b1;
reg [5:0] i;


parameter idle=4'b0000;
parameter load_cmd40=4'b0001;
parameter send_40=4'b0010;
parameter send_00=4'b0011;
parameter send_95=4'b0100;
parameter wait_01=4'b0101;
parameter send_cmd48=4'b0110;
parameter send_00a=4'b0111;
parameter waita=4'b1000;
parameter init_done=4'b1001;
parameter init_fail=4'b1010;

parameter waitb=4'b1011;
parameter send_cmd55=4'b1100;
parameter send_ACMD41=4'b1101;
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

//产生rx_valid信号
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
		else	begin
			aa<=0;
			en<=1'b0;
			rx_valid<=1'b1;       //接收完第48bit后,rx_valid信号开始有效
		end
	end
	else begin 
	   en<=1'b0;
		aa<=0;
		rx_valid<=1'b0;
	end
end

//上电后延时计数，释放reset信号
always @(negedge SD_clk)
begin
	if(counter<10'd1023) begin 
	   counter<=counter+1'b1;
		reset<=1'b1;
	end
	else begin 	
	   reset<=1'b0;
	end
end

//SD卡初始化程序
always @(negedge SD_clk)
begin
	if(reset | ~rst_n) begin
	  if(counter<512)  begin
		  SD_cs<=1'b0;         //片选CS低电平选中SD卡
		  SD_datain<=1'b1;
		  init<=1'b0;
	  end
	  else begin
		  SD_cs<=1'b1;          //片选CS高电平释放SD卡
		  SD_datain<=1'b1;
		  init<=1'b0;
	  end
	end
	else	begin
			case(state)
			   idle:	begin
					init<=1'b0;
					CMD<=8'h00;
					SD_cs<=1'b1;
					SD_datain<=1'b1;
					state<=load_cmd40;
				end
				load_cmd40: begin               //发送CMD0，命令字为40
					init<=1'b0;
					CMD<=8'h40;
					SD_cs<=1'b1;
					SD_datain<=1'b1;
					state<=send_40;
				end
				send_40:	begin
					init<=1'b0;
					if(CMD!=8'hff) begin          //如果CMD0还未发送完成
						SD_cs<=1'b0;
						SD_datain<=CMD[7];
						CMD<={CMD[6:0],1'b1};
					end
				   else begin
						SD_cs<=1'b0;
						SD_datain<=1'b0;
						CMD<=8'h00;
						state<=send_00;
						i<=1;
					end
				end
				send_00: begin                     //发送CMD0的32位的argument, 全0
					 init<=1'b0;
					 if(i<31) begin
						 i<=i+1'b1;
						 SD_cs<=1'b0;
						 SD_datain<=1'b0;
						 CMD<=8'h00;
						 state<=send_00;
					  end
					  else begin
						 i<=0;
						 SD_cs<=1'b0;
						 SD_datain<=1'b0;
						 CMD<=8'h95;
						 state<=send_95;
						end
				end
				send_95: begin                          //发送last byte:CRC 95		
					 init<=1'b0;
					if(CMD!=8'h00)	begin
						SD_cs<=1'b0;
						SD_datain<=CMD[7];
						CMD<={CMD[6:0],1'b0};
					end
					else begin
						SD_cs<=1'b0;
						SD_datain<=1'b1;
						CMD<=8'h00;
						state<=wait_01;
					end
				 end
				 wait_01:begin                        //等待SD卡回应0x01
					   init<=1'b0;
						if(rx_valid&&rx[47:40]==8'h01) begin          
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							CMD<=8'h48;		
							cnt<=0;
							state<=waitb;
						end
						else if(rx_valid&&rx[47:40]!=8'h01)	begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							CMD<=8'h48;
							cnt<=0;
							state<=idle;
						end
						else begin
							SD_cs<=1'b0;
							SD_datain<=1'b1;
							CMD<=8'h00;
						end
					end
					waitb: begin                //等待一段时间				
						if(cnt<10'd1023)	begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							CMD<=8'h48;
							state<=waitb;
							cnt<=cnt+1'b1;
							CMD55<={8'h77,8'h00,8'h00,8'h00,8'h00,8'hff};
							ACMD41<={8'h69,8'h40,8'h00,8'h00,8'h00,8'hff};
						end
						else begin
							SD_cs<=1'b1;
							SD_datain<=1'b1;
							CMD<=8'h00;
							CMD8<={8'h48,8'h00,8'h00,8'h01,8'haa,8'h87};           
							cnt<=0;
							state<=send_cmd48;
						end
					end
					send_cmd48: begin                     //发送CMD8
						if(CMD8!=48'd0) begin
							SD_cs<=1'b0;
							SD_datain<=CMD8[47];
							CMD8<={CMD8[46:0],1'b0};
							i<=0;
						end
						else begin
							SD_cs<=1'b0;
							SD_datain<=1'b1;
							CMD8<={8'h48,8'h00,8'h00,8'h01,8'haa,8'h87};
							state<=waita;
							cnt<=0;
							i<=1;
						end
					end
					waita: begin                     //等待CMD8应答,
					   i<=0;
						SD_cs<=1'b0;
					   SD_datain<=1'b1;
						if(rx_valid&&rx[19:16]==4'b0001) begin         //SD2.0卡，　support 2.7V-3.6V supply voltage											
						   state<=send_cmd55;
						   CMD55<={8'h77,8'h00,8'h00,8'h00,8'h00,8'hff};
							ACMD41<={8'h69,8'h40,8'h00,8'h00,8'h00,8'hff};
						end
						else if(rx_valid&&rx[19:16]!=4'b0001)	begin
							state<=init_fail;
						end
 				    end
					 send_cmd55:begin             //发送CMD55 					
						if(CMD55!=48'd0)begin
						   SD_cs<=1'b0;
							SD_datain<=CMD55[47];
							CMD55<={CMD55[46:0],1'b0};
							i<=0;
						end
						else begin
						   SD_cs<=1'b0;
							SD_datain<=1'b1;
							CMD55<=48'd0;
							cnt<=0;
							i<=1;
							if(rx_valid&&rx[47:40]==8'h01)     //等待应答信号01
							   state<=send_ACMD41;
							else begin
								if(cnt<10'd127)
								   cnt<=cnt+1'b1;
								else begin 
									cnt<=10'd0;
									state<=init_fail;
								end
							end
						 end
					  end
					  send_ACMD41: begin          //发送ACMD41
						  if(ACMD41!=48'd0) begin						
								SD_cs<=1'b0;
								SD_datain<=ACMD41[47];
								ACMD41<={ACMD41[46:0],1'b0};
								i<=0;
							end
							else begin
								SD_cs<=1'b0;
								SD_datain<=1'b1;
								ACMD41<=48'd0;
								cnt<=0;
								i<=1;
								if(rx_valid&&rx[47:40]==8'h00)
								   state<=init_done;
								else begin
									if(cnt<10'd127)
									   cnt<=cnt+1'b1;
									else begin
  									   cnt<=10'd0;
										state<=init_fail;
								   end
							   end
							end
					end
					init_done:begin init<=1'b1;SD_cs<=1'b1;SD_datain<=1'b1;cnt<=0;end     //初始化完成
					init_fail:begin init<=1'b0;SD_cs<=1'b1;SD_datain<=1'b1;cnt<=0;state<=waitb;end       //初始化未成功,重新发送CMD8, CMD55 和CMD41
					default: begin	state<=idle; SD_cs<=1'b1; SD_datain<=1'b1;CMD<=8'h00;init<=1'b0;end
			endcase
	 end
end
								
endmodule
