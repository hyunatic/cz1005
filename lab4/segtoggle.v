`timescale 1ns / 1ps


module segtoggle(
    input [3:0] a,
    input [3:0] b,
    input clk,
    input rst,
    output reg [6:0] seg,
    output tglout
    );

	wire div20;

	reg [21:0] count;
    wire [3:0] selnum;


    always@(posedge(clk))
	   if (rst==1'b0)
		  count <= 22'b0;
	   else
		  count <= count+1'b1;

	assign div20 = count[19];

	assign tglout = div20;
    assign selnum = div20 ? a : b;

// COPY YOUR ALWAYS BLOCK HERE AND USE selnum AS THE CASE CONDITION
    always @ *
	begin
		case(selnum)
			4'b0000 : seg = 7'b0111111;
			4'b0001 : seg = 7'b0000110;
			4'b0010 : seg = 7'b1011011;
			4'b0011 : seg = 7'b1001111;
			4'b0100 : seg = 7'b1100110;
			4'b0101 : seg = 7'b1101101;
			4'b0110 : seg = 7'b1111101;
			4'b0111 : seg = 7'b0000111;
			4'b1000 : seg = 7'b1111111;
		endcase
	end


endmodule