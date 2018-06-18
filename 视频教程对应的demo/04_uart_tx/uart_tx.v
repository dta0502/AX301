module uart_tx(
	input      clk,       //时钟输入
	input      rst_n,     //复位输入
	input      key,       //一个按键，用于发送控制
	output reg txd        //串口发送管脚
);
/*
	例程主要练习串口的时序和状态机的使用，按下key后发送固定数据十六进制12。
	按键没有去抖动
*/
//状态机状态定义
parameter S_IDLE  = 4'd0; //空闲状态
parameter S_START = 4'd1; //发送1BIT起始码0
parameter S_BIT0  = 4'd2; //发送第一位数据
parameter S_BIT1  = 4'd3;
parameter S_BIT2  = 4'd4;
parameter S_BIT3  = 4'd5;
parameter S_BIT4  = 4'd6;
parameter S_BIT5  = 4'd7;
parameter S_BIT6  = 4'd8;
parameter S_BIT7  = 4'd9;
parameter S_STOP  = 4'd10;//发送停止位 1 

reg[3:0] state;
reg[15:0] bit_timer; //用于控制波特率的计数器如果波特率是9600，每个数据位50000000/9600个时钟周期
wire[7:0] tx_data;   //发送的固定数据12
assign tx_data = 8'h12;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		state <= S_IDLE;
		bit_timer <= 16'd0;
		txd <= 1'b1;
	end
	else
	begin
		case(state)
			S_IDLE:
			begin
				txd <= 1'b1;
				bit_timer <= 16'd0;
				if(!key) //按键处于按下状态
					state <= S_START;
				else
					state <= state;
			end
			
			S_START:
			begin
				txd <= 1'b0;//起始位是0
				if(bit_timer == 16'd5208)//一个BIT的时间到了，状态转换
				begin
					state <= S_BIT0;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
			
			S_BIT0:
			begin
				txd <= tx_data[0];//第一位数据
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT1;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		

			S_BIT1:
			begin
				txd <= tx_data[1];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT2;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
	
			S_BIT2:
			begin
				txd <= tx_data[2];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT3;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT3:
			begin
				txd <= tx_data[3];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT4;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT4:
			begin
				txd <= tx_data[4];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT5;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT5:
			begin
				txd <= tx_data[5];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT6;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT6:
			begin
				txd <= tx_data[6];
				if(bit_timer == 16'd5208)
				begin
					state <= S_BIT7;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
		
			S_BIT7:
			begin
				txd <= tx_data[7];//最后一位数据
				if(bit_timer == 16'd5208)
				begin
					state <= S_STOP;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
	
			S_STOP:
			begin
				txd <= 1'b1;//停止位
				if(bit_timer == 16'd5208)
				begin
					state <= S_IDLE;
					bit_timer <= 16'd0;
				end
				else
				begin
					state <= state;
					bit_timer <= bit_timer + 16'd1;
				end
			end
			default:
			begin
				state <= S_IDLE;
			end
		endcase
	end
end
/*
总结：
1，时序设计是FPGA设计的第一要务
2，状态机更是要熟练应用
3，UART 是异步通信，理解什么是异步通信，相对同步通信有什么不同
*/
endmodule 