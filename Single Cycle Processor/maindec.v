`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:30 03/14/2016 
// Design Name: 
// Module Name:    maindec 
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
module maindec (input [5:0] op,
						output memtoreg, memwrite, branch, alusrc, regdst,
						output regwrite, jump,
						output [1:0] aluop);

reg [8:0] controls;

assign {regwrite, regdst, alusrc, branch, memwrite,
			memtoreg, jump, aluop} = controls;

always @ (*)
	case (op)
		6'b000000: controls = 9'b110000010;
		6'b100011: controls = 9'b101001000;
		6'b101011: controls = 9'b001010000;
		6'b000100: controls = 9'b000100001;
		6'b001000: controls = 9'b101000000;
		6'b000010: controls = 9'b000000100;
		default : controls = 9'bbxxxxxxxxx;
	endcase

endmodule
