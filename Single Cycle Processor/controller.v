`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:16 03/14/2016 
// Design Name: 
// Module Name:    controller 
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
module controller (input [5:0] op, funct,
							input zero,
							output memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump,
							output [2:0] alucontrol);

wire [1:0] aluop;
wire branch;

maindec md (op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
aludec ad (funct, aluop, alucontrol);
assign pcsrc = branch & zero;

endmodule
