`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:16 12/24/2014 
// Design Name: 
// Module Name:    IF 
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
module IF(input clock,reset,zf,nf,cf,state,
		input [15:0] i_datain, mem_ir, reg_C,
		output  reg [7:0]i_addr,pc,
		output reg [15:0] id_ir
    );
always @(posedge clock or posedge reset)
	begin
		if (reset)
			begin
				id_ir <= 16'b0000_0000_0000_0000;
				pc <= 8'b0000_0000;
			end
			
		else if (state ==`exec)
			begin
				id_ir <= i_datain;
				i_addr <= pc;
				if(((mem_ir[15:11] == `BZ)&& (zf == 1'b1)) 
				   ||((mem_ir[15:11] == `BN)&& (nf == 1'b1))
					||(mem_ir[15:11] == `JUMP)
					||(mem_ir[15:11] == `JMPR)
					||((mem_ir[15:11] == `BNZ)&&(zf==0))
					||((mem_ir[15:11] == `BNN)&&(nf==0))
					||((mem_ir[15:11] == `BC)&&(cf==1))
					||((mem_ir[15:11] == `BNC)&&(cf==0))
				)
					pc <= reg_C[7:0];
				else
					pc <= pc + 1;
			end
		else pc<= pc;
	end
endmodule
