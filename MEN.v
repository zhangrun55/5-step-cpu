`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:52 12/23/2014 
// Design Name: 
// Module Name:    MEN 
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
`include "cpu.v"
 module MEN(input clock, reset, state,
			input [15:0] mem_ir,d_datain,reg_C,		 
		  output reg [15:0] wb_ir, reg_C1		 
    );
always @(posedge clock,posedge reset)
      if(reset)
		begin
		  // d_addr<=8'b00000000;		
		 wb_ir<=16'b0000_0000_0000_0000;
		 reg_C1<=16'b0000_0000_0000_0000;
		end
		else if (state == `exec)
			begin
				wb_ir <= mem_ir;					
				if (mem_ir[15:11] == `LOAD
				||mem_ir[15:11] == `STORE)
					reg_C1 <= d_datain;
				else
					reg_C1 <= reg_C;
			end

endmodule
