module smg_interface_demo
(
    input CLK,                      //输入全局时钟50MHz
	 input RSTn,                     //输入复位信号
	 output [7:0]SMG_Data,           //输出段选信号（LEDA .. LEDH）
	 output [5:0]Scan_Sig            //输出列扫描信号（SEL0_T~SEL5_T）
);

    /******************************/ 
	 //*数码管控制程序，产生0.1S的计数*/ 
	 /******************************/ 
 
    wire [23:0]Number_Sig;
	 
    demo_control_module U1
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .Number_Sig( Number_Sig ) // output - to U2
	 );
	 
    /******************************/ 
	 //*数码管接口程序，产生段列扫描信号*/ 
	 /******************************/ 
	 
	 smg_interface U2
	 (
	     .CLK( CLK ),
		  .RSTn( RSTn ),
		  .Number_Sig( Number_Sig ), // input - from U1
		  .SMG_Data( SMG_Data ),     // output - to top
		  .Scan_Sig( Scan_Sig )      // output - to top
	 );
	 
    /******************************/ 

endmodule
