`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    SD_TOP 
//////////////////////////////////////////////////////////////////////////////////
module SD_TOP(
					input              clk,
					input              sd_rst_n,

					input              SD_clk,					
					output  reg        SD_cs,
					output  reg        SD_datain,
					input              SD_dataout,
					
	
					output             sd_valid,
					output   [15:0]    sd_data					
   
					
    );



wire [3:0] state/* synthesis keep */;

wire [15:0]mydata_o;
wire myvalid_o;

wire [3:0] mystate_o/* synthesis keep */;

wire [7:0]rx_o;
wire init_o/* synthesis keep */;
wire read_o;

wire SD_cs_i;
wire SD_cs_r;
wire SD_datain_i;
wire SD_datain_r;

assign sd_data = mydata_o;


//---------------------------------
//sd card initial				
sd_initial	sd_initial_inst(

			.rst_n         (sd_rst_n),				 
			.SD_clk        (SD_clk),
			.SD_cs         (SD_cs_i),
			.SD_datain     (SD_datain_i),
			.SD_dataout    (SD_dataout),
			.rx            (),
			.init_o        (init_o),
			.state         (state)
);

//---------------------------------
//sd card data read	 
sd_read	sd_read_inst(   
			.SD_clk        (SD_clk),
			.SD_cs         (SD_cs_r),
			.SD_datain     (SD_datain_r),
			.SD_dataout    (SD_dataout),
				
			.mydata_o      (mydata_o),
			.myvalid_o     (myvalid_o),
		
			.mystate_o     (mystate_o),
			
			.data_come_o   (),
			
			.init          (init_o),
					
			.rx            (rx_o),
			.picture_store ()			
						
    );

	 
//---------------------------------
//信号选择	
always @(*)
begin
	if(!init_o)
		begin
			SD_cs<=SD_cs_i;
			SD_datain<=SD_datain_i;
		end
	else
		begin
			SD_cs<=SD_cs_r;
			SD_datain<=SD_datain_r;
		end
end
 



//---------------------------------
//myvalid_o->sd_valid
reg	myvalid_o_r0, myvalid_o_r1;

always@(posedge clk or negedge sd_rst_n)
begin
	if(!sd_rst_n)
		begin
		myvalid_o_r0 <= 0;
		myvalid_o_r1 <= 0;
		end
	else
		begin
		myvalid_o_r0 <= myvalid_o;
		myvalid_o_r1 <= myvalid_o_r0;
		end
end
assign sd_valid = (myvalid_o_r1 & ~myvalid_o_r0) ? 1'b1 : 1'b0;	 //negedge
 
	 
endmodule


