`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:34 10/29/2019 
// Design Name: 
// Module Name:    vcount 
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
module vcount(
    input clk,
	 //3 bit number
    input rst,
    input pause,decrement,
	 output reg [2:0] q
    );

always@(posedge clk)
begin 
	if(pause)
		q<=q;
	else if(!rst)
		q <= 3'b000;
	else if(!decrement)
		q <= q + 1'b1;
	else
		q <= q - 1'b1;
end
	  
endmodule
