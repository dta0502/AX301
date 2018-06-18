`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    eeprom_test 
// Function: write and read eeprom using I2C bus
//////////////////////////////////////////////////////////////////////////////////
module eeprom_test
(
    input CLK_50M,
	 input RSTn,
	 output [3:0]LED,
	 
	 output SCL,
	 inout SDA
);
  
  
wire [7:0] RdData;
wire Done_Sig;

reg [3:0] i;
reg [3:0] rLED;

reg [7:0] rAddr;
reg [7:0] rData;
reg [1:0] isStart;

assign LED = rLED;

/***************************/
/*   EEPROM write and read */
/***************************/	  
always @ ( posedge CLK_50M or negedge RSTn )	
	 if( !RSTn ) begin
			i <= 4'd0;
			rAddr <= 8'd0;
			rData <= 8'd0;
			isStart <= 2'b00;
         rLED <= 4'b0000;
	 end
	 else
		case( i )
				
	     0:
		  if( Done_Sig ) begin isStart <= 2'b00; i <= i + 1'b1; end
		  else begin isStart <= 2'b01; rData <= 8'h12; rAddr <= 8'd0; end              //eeprom write 0x12 to EEPROM addr 0
					 
		  1:
		  if( Done_Sig ) begin isStart <= 2'b00; i <= i + 1'b1; end
		  else begin isStart <= 2'b10; rAddr <= 8'd0; end                              //eeprom read data from EEPROM addr 0
					 
		  2:
		  begin rLED <= RdData[3:0]; end		
		
		endcase	
	 
/***************************/
//I2C通信程序//
/***************************/				
iic_com U1
	 (
	     .CLK         ( CLK_50M ),
		  .RSTn        ( RSTn ),
		  .Start_Sig   ( isStart ),
		  .Addr_Sig    ( rAddr ),
		  .WrData      ( rData ),
		  .RdData      ( RdData ),
		  .Done_Sig    ( Done_Sig ),
	     .SCL         ( SCL ),
		  .SDA         ( SDA )
);


endmodule
