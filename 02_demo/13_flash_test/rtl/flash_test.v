module flash_test
(
    input          CLK,
	 input          RSTn,


    output flash_clk,                 //spi flash clock 
	 output flash_cs,                  //spi flash cs 
	 output flash_datain,              //spi flash data input  
	 input  flash_dataout              //spi flash data output
	 

);


	 
/*******************************/
	 
reg [3:0] i;
reg [7:0] flash_cmd;
reg [23:0] flash_addr;

reg clock25M;
reg [3:0] cmd_type;

reg [7:0] time_delay;

wire Done_Sig;
wire [7:0] mydata_o;
wire myvalid_o;
wire [2:0] spi_state;

reg [21:0] counter;    //复位按键计数
reg reset;


//==============================================
// 采样RSTn按键,去抖处理
//==============================================
always @(posedge CLK ) 
begin    
   if(RSTn==1'b1) counter<=0;          //没有按钮按下
	else if (!counter[21]) counter <= counter + 1'b1;
	else counter <= counter;
	
	reset<=counter[21];

end

/*******************************/
//FLASH 擦除,Page Program,读取程序	
/*******************************/
always @ ( posedge clock25M or posedge reset )
    if( reset ) begin
			i <= 4'd0;
			flash_addr <= 24'd0;
			flash_cmd <= 8'd0;
			cmd_type <= 4'b0000;
			time_delay<=0;
	 end
	 else 
	     case( i )

	      4'd0://读Device ID:9FH
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h9f; flash_addr <= 24'd0; cmd_type <= 4'b1000; end	
		  
	      4'd1://写Write Enable instruction:06H
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h06; cmd_type <= 4'b1001; end
	
			4'd2://Sector擦除:D8H
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type<=4'b0000; end
			else begin flash_cmd <= 8'hd8; flash_addr <= 24'd0; cmd_type <= 4'b1010; end
			
	      4'd3://waitting 100 clock
			if( time_delay<8'd100 ) begin flash_cmd <= 8'h00; time_delay<=time_delay+1'b1; cmd_type <= 4'b0000; end
			else begin i <= i + 1'b1; time_delay<=0; end	
					
			4'd4://读状态寄存器, 等待idle :05H
			if( Done_Sig ) begin 
			    if (mydata_o[0]==1'b0) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
				 else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end
			end
			else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end

	      4'd5://写Write disable instruction: 04H
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h04; cmd_type <= 4'b1100; end			

			4'd6://读状态寄存器, 等待idle
			if( Done_Sig ) begin 
			    if (mydata_o[0]==1'b0) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
				 else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end
			end
			else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end

	      4'd7://写Write Enable instruction
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h06; cmd_type <= 4'b1001; end 

	      4'd8://waitting 100 clock
			if( time_delay<8'd100 ) begin flash_cmd <= 8'h00; time_delay<=time_delay+1'b1; cmd_type <= 4'b0000; end
			else begin i <= i + 1'b1; time_delay<=0; end	

	      4'd9://page program: write 0~255 to flash
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1;cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h02; flash_addr <= 24'd0; cmd_type <= 4'b1101; end
			
	      4'd10://waitting
			if( time_delay<8'd100 ) begin flash_cmd <= 8'h00; time_delay<=time_delay+1'b1; cmd_type <= 4'b0000; end
			else begin i <= i + 1'b1; time_delay<=0; end	

			4'd11://读状态寄存器1, 等待idle
			if( Done_Sig ) begin 
			    if (mydata_o[0]==1'b0) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
				 else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end
			end
			else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end

	      4'd12://写Write disable instruction
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h04; cmd_type <= 4'b1100; end		

			4'd13://读状态寄存器1, 等待idle
			if( Done_Sig ) begin 
			    if (mydata_o[0]==1'b0) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
				 else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end
			end
			else begin flash_cmd <= 8'h05; cmd_type <= 4'b1011; end
					
			4'd14://read 256byte
			if( Done_Sig ) begin flash_cmd <= 8'h00; i <= i + 1'b1; cmd_type <= 4'b0000; end
			else begin flash_cmd <= 8'h03; flash_addr <= 24'd0; cmd_type <= 4'b1110; end

			4'd15://idle
			i <= 4'd15;

	      endcase
			
/*******************************/
//产生25Mhz的SPI Clock	
/*******************************/	  
always @ ( posedge CLK )
    if( !RSTn ) clock25M<=1'b0;
	 else clock25M <= ~clock25M;


/*******************************/
//spi flash 通信程序	
/*******************************/	  
 	 
flash_spi U1
(
	     .flash_clk(flash_clk ),
		  .flash_cs( flash_cs ),
		  .flash_datain( flash_datain ),  
		  .flash_dataout( flash_dataout ),    
		  
		  .clock25M( clock25M ),           //input clock
		  .flash_rstn( ~reset ),             //input reset 
		  .cmd_type( cmd_type ),           // flash command type		  
		  .Done_Sig( Done_Sig ),           //output done signal
		  .flash_cmd( flash_cmd ),         // input flash command 
		  .flash_addr( flash_addr ),       // input flash address 
		  .mydata_o( mydata_o ),           // output flash data 
		  .myvalid_o( myvalid_o ),         // output flash data valid 		
        .spi_state(spi_state)		  
		  

);
	 

endmodule
