`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:08 10/29/2019 
// Design Name: 
// Module Name:    vCombine 
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
module vCombine(

	input clk_in,
	//3 bit number
	input rst,sel,pause,decrement,
	output [6:0] seg
    );
	 
	 wire [2:0] w1;
	 wire [3:0] w2,w3;
	 wire [23:0] clk_out;
	
	clkgen clk(.clk_in(clk_in),.clk_out(clk_out));
	vcount count(.clk(clk_out),.rst(rst),.pause(pause),.decrement(decrement),.q(w1));
	vconvert convert(.inNumber(w1),.outNumber(w2));
	assign w3=(sel)? w2:w1;
	vsevenseg u1(.a(w3),.seg(seg));
endmodule
