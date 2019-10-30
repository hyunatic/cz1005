module vaddflow(input [3:0] a,input [3:0] b, output [7:0] seg, output oflow);
    assign [4:0] w1;
    vsevenseg(a,seg);

    assign oflow = seg[7:6];
endmodule