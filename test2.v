`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:16:48 01/11/2015
// Design Name:   cpu_top
// Module Name:   D:/data/digital system design/yxq_cpu/test2.v
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

module test2;

	// Inputs
	reg reset_cpu;
	reg clk;
	reg button;
	reg enable;
	reg start;
	reg [3:0] select;

	// Outputs
	wire [6:0] num;
	wire [7:0] pc_out;
	wire [3:0] en;
	wire hsync;
	wire vsync;
	wire [2:0] vga_r;
	wire [2:0] vga_g;
	wire [1:0] vga_b;

	// Instantiate the Unit Under Test (UUT)
	cpu_top uut (
		.reset_cpu(reset_cpu), 
		.clk(clk), 
		.button(button), 
		.enable(enable), 
		.start(start), 
		.num(num), 
		.pc_out(pc_out), 
		.en(en), 
		.select(select), 
		.hsync(hsync), 
		.vsync(vsync), 
		.vga_r(vga_r), 
		.vga_g(vga_g), 
		.vga_b(vga_b)
	);

	initial begin
	$monitor("%h:%b:",
	//%h:  %h: %h:%b:%h:%h: %h : %h :%b : %b:  %b", 
	uut.pc_out, uut.i_datain);
		// Initialize Inputs
		reset_cpu = 1;
		clk = 0;
		button = 0;
		enable = 0;
		start = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
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
