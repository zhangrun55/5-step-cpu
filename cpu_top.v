`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:17 12/29/2014 
// Design Name: 
// Module Name:    cpu_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cpu_top(
			input reset_cpu,
			input clk,
			input button,
			input enable,
			input start,
			output [6:0] num,
			output [7:0] pc_out,
			output [3:0] en,
			input [3:0]select,
			input [1:0]_select,
			
			output  hsync,vsync,
         output  [2:0] vga_r,
			output  [2:0] vga_g,
			output  [1:0] vga_b
);
			
wire [15:0] anw;
wire [3:0] anw_0;
wire [3:0] anw_1;
wire [3:0] anw_2;
wire [3:0] anw_3;
assign anw_0 = anw[15:12];
assign anw_1 = anw[11:8];
assign anw_2 = anw[7:4];
assign anw_3 = anw[3:0];

wire [15:0] _anw;

wire [15:0] i_datain;
wire [7:0]i_addr;
wire [7:0]d_addr;
wire [15:0] d_dataout;
wire [15:0] d_datain;

wire d_we;
wire clock;
wire clock_2;
clk my_clk(
.clk(clk),
.reset(reset_cpu),
.num(300),
.clock(clock)
);
clk my_clk_2(
.clk(clk),
.reset(reset_cpu),
.num(10000000),
.clock(clock_2)
);

wire button_out;
smooth s(
	.clk(clock_2),
	.button(button),
	.reset(reset_cpu),
	.out(button_out)
);
instruct_memory INT(
.mem_clk(clock),
.addr(i_addr),
.rdata(i_datain)
);
data_memory DAT(
.mem_clk(clock),
.d_we(d_we),
.addr(d_addr),
.wdata(d_dataout),
.rdata(d_datain)
);
pipeline_cpu CPU(
 .reset(reset_cpu),
 .clock(button),
 .enable(enable),
 .start(start),
 .i_datain(i_datain),
 .d_addr(d_addr),
 .i_addr(i_addr),
 .d_dataout(d_dataout),
 .d_datain(d_datain),
 .anw(anw),
 ._anw(_anw),
 .select(select),
 ._select(_select),
 .pc_out(pc_out),
 .d_we(d_we)
);
segment SEG(
.clk(clk),
.reset(reset_cpu),
.en(en),
.anw_0(anw_0),
.anw_1(anw_1),
.anw_2(anw_2),
.anw_3(anw_3),
.num(num)
);
//VGA monitor(
//.clk(clk),
//.rst_n(reset_cpu),
//._anw(_anw),
//.hsync(hsync),
//.vsync(vsync),
//.vga_r(vga_r),
//.vga_g(vga_g),
//.vga_b(vga_b)
//);

endmodule
