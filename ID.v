`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:41 12/24/2014 
// Design Name: 
// Module Name:    ID 
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
`define exec 1'b1  
`define idle 1'b0  

`define NOP 5'b00000  
`define HALT 5'b00001  
`define LOAD 5'b00010  
`define STORE 5'b00011  
`define LDIH 5'b10000  
`define ADD 5'b01000  
`define ADDI 5'b01001  
`define ADDC  5'b10001  
`define SUB  5'b10010  
`define SUBI  5'b10011  
`define SUBC  5'b10100  
`define CMP  5'b01100  

`define AND  5'b01101  
`define OR  5'b01110  
`define XOR  5'b01111  
`define SRL  5'b00110  
`define SLA  5'b00101  
`define SRA  5'b00111  
`define SLL  5'b00101  

`define JUMP  5'b11000  
`define JMPR  5'b11001  
`define BZ  5'b11010  
`define BNZ  5'b11011  
`define BN  5'b11100  
`define BNN  5'b11101  
`define BC  5'b11110  
`define BNC  5'b11111  

`define PACK_ARRAY(PK_WIDTH,PK_LEN,PK_SRC,PK_DEST)    
genvar pk_idx;
generate for (pk_idx=0; pk_idx<(PK_LEN); pk_idx=pk_idx+1) 
begin
assign PK_DEST[((PK_WIDTH)*pk_idx+((PK_WIDTH)-1)):((PK_WIDTH)*pk_idx)] = PK_SRC[pk_idx][((PK_WIDTH)-1):0]; 
end 
endgenerate

`define UNPACK_ARRAY(PK_WIDTH,PK_LEN,PK_DEST,PK_SRC)  
genvar unpk_idx; 
generate for (unpk_idx=0; unpk_idx<(PK_LEN); unpk_idx=unpk_idx+1) 
begin; 
assign PK_DEST[unpk_idx][((PK_WIDTH)-1):0] = PK_SRC[((PK_WIDTH)*unpk_idx+(PK_WIDTH-1)):((PK_WIDTH)*unpk_idx)];
end; 
endgenerate


module ID(input clock,reset,state,
		input [15:0] id_ir,
		input [119:0] gr,
		output reg [15:0] ex_ir,reg_B,reg_A,smdr
		//.(),
    );
	 wire [15:0] in [7:0];
`UNPACK_ARRAY(16,8,in,gr)

wire [15:0] out [0:1];
`PACK_ARRAY(16,2,in,pack_16_2_out)
always @(posedge clock,negedge reset)
   begin
	    if(!reset)
		   begin
			 ex_ir<=16'b0000000000000000;
			 reg_B<=16'b0000000000000000;
			 reg_A<=16'b0000000000000000;
			 //smdr1<=16'b0000000000000000;
			 end
		else if (state == `exec)
			begin
				ex_ir <= id_ir;
				//reg_A action
				if ((id_ir[15:11] == `BZ) 
				|| (id_ir[15:11] == `BN)
				|| (id_ir[15:11] ==`LDIH)
				|| (id_ir[15:11] ==`ADDI)
				|| (id_ir[15:11] ==`SUBI)
				||(id_ir[15:11] ==`BNZ)
				||(id_ir[15:11] ==`BNC)
				||(id_ir[15:11] ==`JMPR)
				||(id_ir[15:11] ==`BNN)
				||(id_ir[15:11] ==`BC))
					reg_A <= gr[(id_ir[10:8])];
				else	
					reg_A <= gr[id_ir[6:4]];
				
				if ((id_ir[15:11] == `LOAD)
				||(id_ir[15:11] ==`SRL)
				||(id_ir[15:11] == `SLL)
				||(id_ir[15:11] ==`SLA )
				||(id_ir[15:11] == `SRA))
					reg_B<={12'b0000_0000_0000, id_ir[3:0]};
				else if(id_ir[15:11]==`STORE)
					begin
						reg_B <= {12'b0000_0000_0000,id_ir[3:0]};
						smdr <= gr[id_ir[10:8]];
					end
				else if ((id_ir[15:11] == `BZ) 
						|| (id_ir[15:11] == `BN)
						||(id_ir[15:11] ==`JUMP)
				   ||(id_ir[15:11] ==`ADDI)
				   ||(id_ir[15:11] ==`SUBI)
				   ||(id_ir[15:11] ==`BNZ)
				   ||(id_ir[15:11] ==`BNC)
				   ||(id_ir[15:11] ==`JMPR)
				   ||(id_ir[15:11] ==`BNN)
				   ||(id_ir[15:11] ==`BC))//以上这些指令对应r1<-r1+{val1,val2};
   					reg_B <= {8'b0000_0000, id_ir[7:0]};
			   else if(id_ir[15:11] ==`LDIH)//r1<-r1+{val1,val2,0000_0000};
						reg_B<={id_ir[7:0],8'b0000_0000};
				else
						reg_B<= gr[id_ir[2:0]];
			
			end
			end

endmodule
