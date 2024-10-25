`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:02:43 PM
// Design Name: 
// Module Name: BCD_SEG_7_TB
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


module BCD_7_SEG_TB;

    reg[3:0] num;
    wire[6:0] out;
    
    
    integer i;
    BCD_7_SEG uut3(num, out);
    
    initial begin
        for(i=0; i<7; i=i+1)
        begin
             #10 num = i;
        end
    #10 $stop;
    end
   
endmodule

module top_module_tb;
    wire[6:0] outt;
    reg [1:0] i0t,i1t,i2t,i3t,st;
    
    top_module uut2(i0t,i1t,i2t,i3t,st, outt);
    

        initial begin
            i0t = 2'b00; i1t = 2'b01; i2t = 2'b10; i3t = 2'b11;
            st = 2'b00; 
            #10; st = 2'b01; 
            #10; st = 2'b10; 
            #10; st = 2'b11;
            
            #10 i0t = 2'b10;
            #10 st = 2'b00;
            #10 st = 2'b01;
            #10 i1t = 2'b01;

            
            #10 i0t = 2'b11; 
            i1t = 2'b01;
            i2t = 2'b00;
            i3t = 2'b10;
            
            st = 2'b00; #10;
            st = 2'b01; #10;
            st = 2'b10; #10;
            st = 2'b11; #10;
        #10;
        $stop;
     end
endmodule
            

    