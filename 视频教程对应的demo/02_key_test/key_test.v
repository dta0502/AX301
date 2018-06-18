module key_test
(
	input       clk,      //时钟输入——50Mhz
	input[3:0]  key_in,   //4位按键输入，按下是0，弹起是1
	output[3:0] led_out   //4位LED显示，1为亮，0为灭
); 
reg[3:0] led_r;           //定义一个寄存器类型，对应生成4个D触发器
reg[3:0] led_r1;          //定义一个寄存器类型，对应生成4个D触发器


always@(posedge clk)
begin
	led_r1 <= led_r;      //第二级D触发器锁存数据
end

always@(posedge clk)
begin
	led_r <= ~key_in;    //第一级D触发器锁存数据
end

assign led_out = led_r1; //线类型数据赋值

/*
总结：
1，verilog 必须有module
2，最好是一个文件一个module，也可以多个
3，verilog常见2中数据类型，reg和wire
4，reg类型赋值必须用always块，如果敏感信号always@(posedge 时钟)，则会生
成D触发器
5，reg类型赋值必须用always块，如果敏感信号always@(*)，则会生成组合逻辑，
等同于wire类型使用assign赋值
6，wire类型赋值必须用assign
7，FPGA是硬件，语句的顺序影响不大
*/
endmodule