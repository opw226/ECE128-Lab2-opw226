`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 02:37:19 PM
// Design Name: 
// Module Name: top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module(i0t, i1t, i2t, i3t, st, segt);
    input [1:0] i0t,i1t,i2t,i3t, st;
    output [6:0] segt;
    wire[1:0] yt;
    wire[3:0] ytt;
    
    assign ytt = {2'b00,yt};
    
    Mux_4_1 uut1(.a(i0t), .b(i1t), .c(i2t), .d(i3t), .s(st), .y(yt));
    
    BCD_7_SEG uut2(.bcd(ytt), .seg(segt));
endmodule

module Mux_4_1(
    input [1:0]a,
    input [1:0]b,
    input [1:0]c,
    input [1:0]d,
    input [1:0]s,
    output reg [1:0]y
    );
    
    always@(*)
    begin
        case(s)
            2'b00 : y = a;
            2'b01 : y = b;
            2'b10 : y = c;
            2'b11 : y = d;
            default : y = 2'bx;
         endcase
    end
endmodule 

module BCD_7_SEG(bcd,seg);
    input [3:0]bcd;
    output [6:0] seg;
    reg [6:0]seg;
    
    
    always@(*)
    begin
        case(bcd)
            0 : seg = 7'b1000000;
            1 : seg = 7'b1111001;
            2 : seg = 7'b0100100;
            3 : seg = 7'b0110000;
            4 : seg = 7'b0011001;
            5 : seg = 7'b0010010;
            6 : seg = 7'b0000010;
            7 : seg = 7'b1111000;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0010000;
            default: seg = 7'b1111111;
        endcase
    end
endmodule


