`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:56 03/14/2016 
// Design Name: 
// Module Name:    aludec 
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
module aludec (input [5:0] funct,
						input [1:0] aluop,
						output reg [2:0] alucontrol);
						
always @ (*)
	case (aluop)
		2'b00 : alucontrol = 3'b010;
		2'b01 : alucontrol = 3'b110;
		default:
			case (funct)
				6'b100000 : alucontrol = 3'b010;
				6'b100010 : alucontrol = 3'b110;
				6'b100100 : alucontrol = 3'b000;
				6'b100101 : alucontrol = 3'b001;
				6'b101010 : alucontrol = 3'b111;
				default : alucontrol = 3'bxxx;
			endcase
	endcase
	
endmodule
