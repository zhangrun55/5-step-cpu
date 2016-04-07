`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:19:23 12/30/2014
// Design Name:   cpu_top
// Module Name:   D:/data/digital system design/yxq_cpu/test.v
// Project Name:  yxq_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg reset_cpu;
	reg clk;
	reg button;
	reg enable;
	reg start;
	reg [3:0] select;

	// Outputs
	wire [6:0] num;
	wire [3:0] en;
	wire hsync;
	wire vsync;
   wire [2:0]  vga_r;
	wire [2:0]	vga_g;
	wire [1:0]	vga_b;
	// Instantiate the Unit Under Test (UUT)
	cpu_top uut (
		.reset_cpu(reset_cpu), 
		.clk(clk), 
		.button(button), 
		.enable(enable), 
		.start(start), 
		.num(num), 
		.en(en), 
		.select(select),
		.hsync(hsync),
		.vsync(vsync),
      .vga_r(vga_r),
		.vga_g(vga_g),
		.vga_b(vga_b)
	);

	initial begin
		// Initialize Inputs
		reset_cpu = 1;
		clk = 0;
		button = 0;
		enable = 0;
		start = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		//#100;
//    $display("pc:     id_ir      :reg_A:reg_B:reg_C: da: dd  :w: reC1 :gr1 : gr2 : gr3 :cf :nf :zf:");
//$monitor("%h:%b:%h: %h: %h:  %h: %h:%b:%h:%h: %h : %h :%b : %b:  %b", 
//	pc, id_ir, reg_A, uut.reg_B, uut.reg_C,
//	d_addr, d_dataout, d_we, uut.reg_C1, uut.gr[1], uut.gr[2], uut.gr[3],uut.cf,uut.nf,uut.zf);    
		// Add stimulus here
		start <= 1;
		enable <= 1;
		reset_cpu <= 0;
		
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000;
		button <= 1;
		#1000
		button <= 0;
		#1000
		button <= 1;
		#1000
		button <= 0;
		#1000;
	end
      always #1 clk =~clk;
endmodule

