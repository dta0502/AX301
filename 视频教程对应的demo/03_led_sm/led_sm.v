module led_sm
(
	input  clk,           //时钟输入 50Mhz
	input  key,           //按键
	output reg[3:0] led   //4位LED
);
reg[31:0] count;          //一个计数器，如果编译软件不优化，将生成32个D触发器
                          //用于LED灯状态的时间控制

reg[2:0] state;           //定义一个一段式状态机
parameter S_IDLE   = 3'd0;//为了使程序容易阅读，把状态机的编码用参数表示
parameter S_LED0   = 3'd1;//这个编码的值会被软件优化使用其他编码代替
parameter S_LED1   = 3'd2;
parameter S_LED2   = 3'd3;
parameter S_LED3   = 3'd4;

//always@(posedge clk)
//begin
//	if(count == 32'd199_999_999)
//		count <= 32'd0;
//	else
//		count <= count + 32'd1;
//end
//
//always@(posedge clk)
//begin
//	if(count == 32'd0)
//		led <= 4'b0001;
//	else if(count == 32'd49_999_999)
//		led <= 4'b0010;
//	else if(count == 32'd99_999_999)
//		led <= 4'b0100;
//	else if(count == 32'd149_999_999)
//		led <= 4'b1000;
//	else
//		led <= led;
//end

reg[31:0] key_count;    //按键按下的时间控制寄存器
always@(posedge clk)
begin
	case(state)
		S_IDLE:
		begin
			if(key == 1'b0)//按键按下，计数器就不断累加，一旦松开，就清零
				key_count <= key_count + 32'd1;
			else
				key_count <= 32'd0;
				
			if(key_count >= 32'd49_999_999)
				state <= S_LED0;//按下的时间达到1秒，进入流水灯状态
			else
				state <= state;
				
			 led <= 4'b0000;
		end
		
		S_LED0:
		begin
			led <= 4'b0001;
			if(count == 32'd49_999_999)
			begin
				state <= S_LED1;//1秒后进入下一个状态
				count <= 32'd0;
			end
			else
			begin
				state <= state;
				count <= count + 32'd1;
			end
		end
		
		S_LED1:
		begin
			led <= 4'b0010;
			if(count == 32'd49_999_999)
			begin
				state <= S_LED2;
				count <= 32'd0;
			end
			else
			begin
				state <= state;
				count <= count + 32'd1;
			end
		end
		
		S_LED2:
		begin
			led <= 4'b0100;
			if(count == 32'd49_999_999)
			begin
				state <= S_LED3;
				count <= 32'd0;
			end
			else
			begin
				state <= state;
				count <= count + 32'd1;
			end
		end	

		S_LED3:
		begin
			led <= 4'b1000;
			if(count == 32'd49_999_999)
			begin
				state <= S_LED0;
				count <= 32'd0;
			end
			else
			begin
				state <= state;
				count <= count + 32'd1;
			end
		end
		default: //最好不要忘了写default，写别是组合逻辑使用case，不写会有大麻烦
			state <= S_IDLE;
	endcase
end
/*
总结：
1，verilog等硬件描述语言不擅长流程控制，因为语言不是顺序执行的，而是触发器和逻辑的组合
2，状态机用来解决一个硬件描述语言的流程控制问题
3，了解时钟，D触发器，组合逻辑是非常关键的，特别是有C语言基础的人，思维难以转变
4，硬件描述语言的变量赋值只能在一个流程中完成。
*/
endmodule 