`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ddr_rw 
//////////////////////////////////////////////////////////////////////////////////
module ddr_rw #
(

   parameter C3_NUM_DQ_PINS          = 16,        // External memory data width
   parameter C3_MEM_ADDR_WIDTH       = 13,        // External memory address width
   parameter C3_MEM_BANKADDR_WIDTH   = 3          // External memory bank address width

)
    
(			  
	output c3_clk0,
	

	//wm8731模块接口信号 
	output reg [63:0]	wav_out_data,
	input     	   wav_rden,                         //ddr 读命令请求
	input [63:0] 	wav_in_data,
	input 	      wav_wren,                         //ddr 写命令请求
	
	input          ddr_raddr_set,
	input          ddr_waddr_set,
	output reg     ddr_read_finish,
	
   //ddr的状态信号
   output c3_p0_wr_underrun, 
   output c3_p0_wr_full,
	output c3_p0_cmd_full, 
	
	output c3_p1_rd_overflow,
   output c3_p1_rd_empty,
	output c3_p1_cmd_full, 

   //DDR的接口信号
   inout  [C3_NUM_DQ_PINS-1:0]                      mcb3_dram_dq,     
   output [C3_MEM_ADDR_WIDTH-1:0]                   mcb3_dram_a,      
   output [C3_MEM_BANKADDR_WIDTH-1:0]               mcb3_dram_ba,
   output                                           mcb3_dram_ras_n,
   output                                           mcb3_dram_cas_n,
   output                                           mcb3_dram_we_n,
   output                                           mcb3_dram_odt,
   output                                           mcb3_dram_cke,
   output                                           mcb3_dram_dm,
   inout                                            mcb3_dram_udqs,
   inout                                            mcb3_dram_udqs_n,
   inout                                            mcb3_rzq,
   inout                                            mcb3_zio,
   output                                           mcb3_dram_udm,
   input                                            c3_sys_clk,
   input                                            c3_sys_rst_n,
   output                                           c3_rst0,
   inout                                            mcb3_dram_dqs,
   inout                                            mcb3_dram_dqs_n,
   output                                           mcb3_dram_ck,
   output                                           mcb3_dram_ck_n	
    );


wire c3_calib_done;			

//ddr p0 user interface
wire				c3_clk0;
reg				c3_p0_cmd_en;
reg [2:0]		c3_p0_cmd_instr;
reg [5:0]		c3_p0_cmd_bl;
reg [29:0]		c3_p0_cmd_byte_addr;
wire				c3_p0_cmd_empty;
wire				c3_p0_cmd_full;

reg				c3_p0_wr_en;
reg [7:0]	   c3_p0_wr_mask;
reg [63:0]	   c3_p0_wr_data;
wire				c3_p0_wr_full;
wire				c3_p0_wr_empty;
wire [6:0]		c3_p0_wr_count;
wire				c3_p0_wr_underrun;
wire				c3_p0_wr_error;

reg				c3_p0_rd_en;
wire [63:0]	   c3_p0_rd_data;
wire				c3_p0_rd_full;
wire				c3_p0_rd_empty;
wire [6:0]		c3_p0_rd_count;
wire				c3_p0_rd_overflow;
wire				c3_p0_rd_error;

//ddr p1 user interface
reg				c3_p1_cmd_en;
reg [2:0]		c3_p1_cmd_instr;
reg [5:0]		c3_p1_cmd_bl;
reg [29:0]		c3_p1_cmd_byte_addr;
wire				c3_p1_cmd_empty;
wire				c3_p1_cmd_full;

reg				c3_p1_wr_en;
reg [7:0]	   c3_p1_wr_mask;
reg [63:0]	   c3_p1_wr_data;
wire				c3_p1_wr_full;
wire				c3_p1_wr_empty;
wire [6:0]		c3_p1_wr_count;
wire				c3_p1_wr_underrun;
wire				c3_p1_wr_error;

reg				c3_p1_rd_en;
wire [63:0]	   c3_p1_rd_data;
wire				c3_p1_rd_full;
wire				c3_p1_rd_empty;
wire [6:0]		c3_p1_rd_count;
wire				c3_p1_rd_overflow;
wire				c3_p1_rd_error;

reg wav_rden_req;
reg wav_rden_reg1;
reg wav_rden_reg2;

reg wav_wren_req;
reg wav_wren_reg1;
reg wav_wren_reg2;

reg ddr_rd_cmd_req;
reg ddr_rd_cmd_reg1;
reg ddr_rd_cmd_reg2;

reg [29:0] ddr_last_addr;


//DDR写的状态寄存器
reg [2:0] ddr_write_state;
parameter write_idle=3'b000;
parameter write_fifo=3'b001;
parameter write_data_done=3'b010;
parameter write_cmd_start=3'b011;
parameter write_cmd=3'b100;
parameter write_done=3'b101;

//DDR读的状态寄存器
reg [2:0] ddr_read_state;
parameter read_idle=3'b000;
parameter read_cmd_start=3'b001;
parameter read_cmd=3'b010;
parameter read_wait=3'b011;
parameter read_data=3'b100;
parameter read_done=3'b101;

/*****************************************************************************/
//脉宽转化,wav_wren--->wav_wren_req
/*****************************************************************************/
always @(negedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done)  begin
	    wav_wren_reg1<=1'b0;
	    wav_wren_reg2<=1'b0;
	    wav_wren_req<=1'b0;
	end
   else begin
	  	 wav_wren_reg1<=wav_wren;
	    wav_wren_reg2<=wav_wren_reg1;   
	    if(wav_wren_reg1 && !wav_wren_reg2)           //如果检测到wav_wren的上升沿,产生ddr写请求
		   wav_wren_req<=1'b1;
		 else
		   wav_wren_req<=1'b0;
	end
end

/*****************************************************************************/
//通过P0 interface写64bit数据到ddr中
/*****************************************************************************/
always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin  			 
     c3_p0_wr_en<=1'b0;
	  c3_p0_wr_mask<=8'd0;
	  c3_p0_wr_data<=64'd0;
     c3_p0_cmd_en<=1'b0;
     c3_p0_cmd_instr<=3'd0;
     c3_p0_cmd_bl<=6'd0;
     c3_p0_cmd_byte_addr<=30'd0;
     ddr_write_state<=write_idle;	  
  end
  else begin
     if(ddr_waddr_set) begin
	        c3_p0_cmd_byte_addr<=30'd0;	                //p0写ddr的地址置位0 	  
	  end  
     else begin
			case(ddr_write_state)
			write_idle:begin			  
				c3_p0_wr_en<=1'b0;
				c3_p0_wr_mask<=8'd0;
				if(wav_wren_req==1'b1) begin           //如果写DDR请求
					ddr_write_state<=write_fifo;
					c3_p0_wr_data<=wav_in_data;        //准备写入DDR的wav数据
				end
			end
			write_fifo:begin	  
				if(!c3_p0_wr_full) begin             //如p0写fifo数据不满,写入FIFO
					c3_p0_wr_en<=1'b1;    
				   ddr_write_state<=write_data_done;
				end			   
			end
			write_data_done:begin
				c3_p0_wr_en<=1'b0;
				ddr_write_state<=write_cmd_start;
			end
			write_cmd_start:begin
				c3_p0_cmd_en<=1'b0;                    
				c3_p0_cmd_instr<=3'b010;           //010为写命令
				c3_p0_cmd_bl<=6'd0;                //burst length为1个64bit宽的数据
				ddr_write_state<=write_cmd;
			end
			write_cmd:begin
				if (!c3_p0_cmd_full) begin            //如果命令FIFO不满
					c3_p0_cmd_en<=1'b1;                //写命令使能
					ddr_write_state<=write_done;
				end
			end
			write_done:begin
				c3_p0_cmd_en<=1'b0;
				ddr_write_state<=write_idle;
				c3_p0_cmd_byte_addr<=c3_p0_cmd_byte_addr+8;	   //地址加8
				ddr_last_addr<=c3_p0_cmd_byte_addr;
			end
			default:begin		
				c3_p0_wr_en<=1'b0;
				c3_p0_cmd_en<=1'b0;
				c3_p0_cmd_instr<=3'd0; 
				c3_p0_cmd_bl<=6'd0;
				ddr_write_state<=write_idle;
			end				  
			endcase;	
      end			
   end
end  

/*****************************************************************************/
//DDR读请求信号脉宽处理程序:wav_rden->wav_rden_req
/*****************************************************************************/
always @(negedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin
     wav_rden_reg1<=1'b0;
     wav_rden_reg2<=1'b0; 
	  wav_rden_req<=1'b0;	
   end
   else begin
     wav_rden_reg1<=wav_rden;
     wav_rden_reg2<=wav_rden_reg1;
     if(wav_rden_reg1 && !wav_rden_reg2)           //如果检测到wav_rden的上升沿,产生ddr读请求
		   wav_rden_req<=1'b1;
	  else
		   wav_rden_req<=1'b0;	
  end
end	 

		
/*****************************************************************************/
//DDR P1数据读处理程序
/*****************************************************************************/
always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done)
    begin  			 
     c3_p1_rd_en<=1'b0;
     c3_p1_cmd_en<=1'b0;
     c3_p1_cmd_instr<=3'd0;
     c3_p1_cmd_bl<=6'd0;
     c3_p1_cmd_byte_addr<=30'd0;
     ddr_read_state<=read_idle; 
     wav_out_data<=64'd0;	 
     ddr_read_finish<=1'b0;
	 end
  else 
  begin
     if(ddr_raddr_set) begin
         c3_p1_cmd_byte_addr<=30'd0;	           //声音在DDR中的起始存储位置 
			ddr_read_finish<=1'b0;
     end				
     else begin
	      case(ddr_read_state) 
         read_idle:begin
             if(wav_rden_req)  begin                     //如果有ddr读请求
                   ddr_read_state<=read_cmd_start;
				 end
         end
         read_cmd_start:begin
			      c3_p1_cmd_en<=1'b0;
               c3_p1_cmd_instr<=3'b001;            //命令字为读
               c3_p1_cmd_bl<=6'd0;                 //single read
               ddr_read_state<=read_cmd; 
         end						 
         read_cmd:begin			
               c3_p1_cmd_en<=1'b1;                 //ddr读命令使能
					ddr_read_state<=read_wait;
			end
			read_wait:begin			
               c3_p1_cmd_en<=1'b0;
					if(!c3_p1_rd_empty)                   //如果read fifo不空
                   ddr_read_state<=read_data;
		   end
         read_data:begin
			      c3_p1_rd_en<=1'b1;                    //读数据使能 
               ddr_read_state<=read_done;
               wav_out_data<=c3_p1_rd_data;					
			end
			read_done:begin
			      c3_p1_rd_en<=1'b0; 
					ddr_read_state<=read_idle;
					if(c3_p1_cmd_byte_addr>=ddr_last_addr)          //如果语音播放到最后的地方
					    ddr_read_finish<=1'b1;
					else begin	 
					    c3_p1_cmd_byte_addr<=c3_p1_cmd_byte_addr+8;    //ddr的地址加8
						 ddr_read_finish<=1'b0;	
               end						 
		   end
		   default:begin
					c3_p1_rd_en<=1'b0;
               c3_p1_cmd_en<=1'b0;
               ddr_read_state<=read_idle;
         end
			endcase;
      end
   end
end


// MIG的DDR控制器程序例化
      mig_39_2 #
      (
         .C3_P0_MASK_SIZE                (8),
         .C3_P0_DATA_PORT_SIZE           (64),
         .C3_P1_MASK_SIZE                (8),
         .C3_P1_DATA_PORT_SIZE           (64),			
         .DEBUG_EN                       (0),           //   = 0, Disable debug signals/controls.
         .C3_MEMCLK_PERIOD               (3200),
         .C3_CALIB_SOFT_IP               ("TRUE"),      // # = TRUE, Enables the soft calibration logic,
         .C3_SIMULATION                  ("FALSE"),     // # = FALSE, Implementing the design.
         .C3_RST_ACT_LOW                 (1),           // # = 1 for active low reset         change for AX516 board
         .C3_INPUT_CLK_TYPE              ("SINGLE_ENDED"),
         .C3_MEM_ADDR_ORDER              ("ROW_BANK_COLUMN"),
         .C3_NUM_DQ_PINS                 (16),
         .C3_MEM_ADDR_WIDTH              (13),  
         .C3_MEM_BANKADDR_WIDTH          (3)
         )
      mig_39_2_inst
      (
         .mcb3_dram_dq			                 (mcb3_dram_dq),
         .mcb3_dram_a			                 (mcb3_dram_a), 
         .mcb3_dram_ba			                 (mcb3_dram_ba),
         .mcb3_dram_ras_n			              (mcb3_dram_ras_n),
         .mcb3_dram_cas_n			              (mcb3_dram_cas_n),
         .mcb3_dram_we_n  	                    (mcb3_dram_we_n),
         .mcb3_dram_odt			                 (mcb3_dram_odt),
         .mcb3_dram_cke                        (mcb3_dram_cke),
         .mcb3_dram_dm                         (mcb3_dram_dm),
         .mcb3_dram_udqs                       (mcb3_dram_udqs),
         .mcb3_dram_udqs_n	                    (mcb3_dram_udqs_n),
         .mcb3_rzq	                          (mcb3_rzq),
         .mcb3_zio	                          (mcb3_zio),
         .mcb3_dram_udm	                       (mcb3_dram_udm),
         .c3_sys_clk	                          (c3_sys_clk),
         .c3_sys_rst_i	                       (c3_sys_rst_n),			
			.c3_calib_done	                       (c3_calib_done),
         .c3_clk0	                             (c3_clk0),
         .c3_rst0	                             (c3_rst0),			
			.mcb3_dram_dqs                        (mcb3_dram_dqs),
			.mcb3_dram_dqs_n	                    (mcb3_dram_dqs_n),
			.mcb3_dram_ck	                       (mcb3_dram_ck),			
			.mcb3_dram_ck_n	                    (mcb3_dram_ck_n),				
			
         // User Port-0 command interface
         .c3_p0_cmd_clk                  (c3_clk0),          //c3_p0_cmd_clk->c3_clk0			
         .c3_p0_cmd_en                   (c3_p0_cmd_en),
         .c3_p0_cmd_instr                (c3_p0_cmd_instr),
         .c3_p0_cmd_bl                   (c3_p0_cmd_bl),
         .c3_p0_cmd_byte_addr            (c3_p0_cmd_byte_addr),
         .c3_p0_cmd_empty                (c3_p0_cmd_empty),
         .c3_p0_cmd_full                 (c3_p0_cmd_full),	
			
         // User Port-0 data write interface 			
         .c3_p0_wr_clk                   (c3_clk0),          //c3_p0_wr_clk->c3_clk0
			.c3_p0_wr_en                    (c3_p0_wr_en),
         .c3_p0_wr_mask                  (c3_p0_wr_mask),
         .c3_p0_wr_data                  (c3_p0_wr_data),
         .c3_p0_wr_full                  (c3_p0_wr_full),
         .c3_p0_wr_empty                 (c3_p0_wr_empty),
         .c3_p0_wr_count                 (c3_p0_wr_count),
         .c3_p0_wr_underrun              (c3_p0_wr_underrun),
         .c3_p0_wr_error                 (c3_p0_wr_error),	
			
         // User Port-0 data read interface 
			.c3_p0_rd_clk                   (c3_clk0),          //c3_p0_rd_clk->c3_clk0
         .c3_p0_rd_en                    (c3_p0_rd_en),
         .c3_p0_rd_data                  (c3_p0_rd_data),
         .c3_p0_rd_full                  (c3_p0_rd_full),			
         .c3_p0_rd_empty                 (c3_p0_rd_empty),
         .c3_p0_rd_count                 (c3_p0_rd_count),
         .c3_p0_rd_overflow              (c3_p0_rd_overflow),
         .c3_p0_rd_error                 (c3_p0_rd_error),
			
			
         // User Port-1 command interface
         .c3_p1_cmd_clk                  (c3_clk0),          //c3_p1_cmd_clk->c3_clk0			
         .c3_p1_cmd_en                   (c3_p1_cmd_en),
         .c3_p1_cmd_instr                (c3_p1_cmd_instr),
         .c3_p1_cmd_bl                   (c3_p1_cmd_bl),
         .c3_p1_cmd_byte_addr            (c3_p1_cmd_byte_addr),
         .c3_p1_cmd_empty                (c3_p1_cmd_empty),
         .c3_p1_cmd_full                 (c3_p1_cmd_full),	
			
         // User Port-1 data write interface 			
         .c3_p1_wr_clk                   (c3_clk0),          //c3_p1_wr_clk->c3_clk0
			.c3_p1_wr_en                    (c3_p1_wr_en),
         .c3_p1_wr_mask                  (c3_p1_wr_mask),
         .c3_p1_wr_data                  (c3_p1_wr_data),
         .c3_p1_wr_full                  (c3_p1_wr_full),
         .c3_p1_wr_empty                 (c3_p1_wr_empty),
         .c3_p1_wr_count                 (c3_p1_wr_count),
         .c3_p1_wr_underrun              (c3_p1_wr_underrun),
         .c3_p1_wr_error                 (c3_p1_wr_error),	
			
         // User Port-1 data read interface 
			.c3_p1_rd_clk                   (c3_clk0),          //c3_p1_rd_clk->c3_clk0
         .c3_p1_rd_en                    (c3_p1_rd_en),
         .c3_p1_rd_data                  (c3_p1_rd_data),
         .c3_p1_rd_full                  (c3_p1_rd_full),			
         .c3_p1_rd_empty                 (c3_p1_rd_empty),
         .c3_p1_rd_count                 (c3_p1_rd_count),
         .c3_p1_rd_overflow              (c3_p1_rd_overflow),
         .c3_p1_rd_error                 (c3_p1_rd_error)
       );
endmodule
