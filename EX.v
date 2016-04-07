`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:35 12/23/2014 
// Design Name: 
// Module Name:    EX 
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
module EX(input clock,reset,state,
		input [15:0] ex_ir,ALUo,smdr,
		output reg [15:0] mem_ir,smdr1,reg_C,
		output reg nf,zf,dw
		//output reg [3:0]first
);
always @(posedge clock,posedge reset)
begin
      if(reset)
		 begin
		  mem_ir<=16'b0000_0000_0000_0000;
		  reg_C<=16'b0000_0000_0000_0000;
		  nf<=1'b0;
		  zf<=1'b0;
		  dw<= 1'b0;
		  smdr1<=16'b0000_0000_0000;
		  end
		else if (state == `exec)
			begin
				mem_ir <= ex_ir;
				reg_C <= ALUo;			
				if (ex_ir[15:11] != `STORE)
					begin		
						if (ALUo == 16'b0000_0000_0000_0000)
							zf <= 1'b1;
						else
							zf <= 1'b0;
						if (ALUo[15] == 1'b1)
							nf <= 1'b1;
						else
							nf <= 1'b0;
						if(ex_ir[15:11] != `NOP)
						 dw<= 1'b0;
						 else
						 dw<= dw;
					end
				else if(ex_ir[15:11] == `STORE)
					begin
						dw <= 1'b1;
						smdr1 <= smdr;
					end				
			end
end		

endmodule
