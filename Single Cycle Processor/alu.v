`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:32 03/15/2016 
// Design Name: 
// Module Name:    alu 
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
module alu (ctrl, a, b, result, zero);

input [31:0] ctrl;
input [31:0] a;
input [2:0] b;
output [31:0] result;
output zero;
reg [31:0] result;
reg zero;

always @(a or b or ctrl) begin
	case (ctrl)
		3'b000 : result = a & b;
		3'b001 : result = a | b;
		3'b010 : result = a + b;
		3'b110 : result = a - b;
		3'b111 : if (a < b) result = 32'd1;
					else result = 32'd0;
		default : result = 32'hxxxxxxxx;
	endcase
	
	if (result == 32'd0) zero = 1;
	else zero = 0;
end
endmodule
		
