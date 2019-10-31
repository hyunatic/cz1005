`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:44 10/29/2019 
// Design Name: 
// Module Name:    vconvert 
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
module vconvert(
    input [2:0] inNumber,
    output reg[3:0] outNumber
    );
always @ *
	case(inNumber)
		3'b000 : outNumber = 4'b1100;
		3'b001 : outNumber = 4'b0000;
		3'b010 : outNumber = 4'b1111;
		3'b011 : outNumber = 4'b1111;
		3'b100 : outNumber = 4'b1110;
		3'b101 : outNumber = 4'b1110;
		3'b110 : outNumber = 4'b1001;
		3'b111 : outNumber = 4'b0011;
	endcase

endmodule
