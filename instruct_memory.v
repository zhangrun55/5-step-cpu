`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:17 12/29/2014 
// Design Name: 
// Module Name:    instruct_memory 
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
`include"cpu.v"
module instruct_memory(mem_clk,addr,rdata
    );
input mem_clk;
input [7:0] addr;
output [15:0] rdata;
reg [15:0] i_mem [255:0];
assign rdata = i_mem[addr];
always @(posedge mem_clk)
	begin 
case(addr)
 0:i_mem[addr] <= {`ADDI, `gr1, 4'b1010,4'b1011};
 1:i_mem[addr] <= {`LDIH, `gr2, 4'b0011,4'b1100};
 2:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 3:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 4:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 5:i_mem[addr] <= {`STORE, `gr1, 1'b0, `gr0, 4'b0000};
 6:i_mem[addr] <= {`STORE, `gr2, 1'b0, `gr0, 4'b0001};
 7: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 8: i_mem[addr] <= {`NOP, 11'b000_0000_0000};	
 9: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 10:i_mem[addr] <= {`LOAD, `gr1, 1'b0, `gr0, 4'b0000};
 11: i_mem[addr] <= {`LOAD, `gr2, 1'b0, `gr0, 4'b0001};
 12: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 13: i_mem[addr] <= {`NOP, 11'b000_0000_0000};	
 14: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 15:i_mem[addr] <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr2};
 16:i_mem[addr] <= {`ADD, `gr3, 1'b0, `gr1, 1'b0, `gr3};
 17:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 18:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 19:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 20:i_mem[addr] <= {`STORE, `gr3, 1'b0, `gr0, 4'b0010};
 21:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 22:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 23:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 24: i_mem[addr] <= {`JUMP, 3'b000, 4'b0000,4'b0110};
 25: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 26: i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 27:i_mem[addr] <= {`NOP, 11'b000_0000_0000};
 28:i_mem[addr] <= {`HALT, 11'b000_0000_0000};
	default: i_mem[addr] <= 16'b0000_0000_0000_0000;
	endcase
	end

endmodule
