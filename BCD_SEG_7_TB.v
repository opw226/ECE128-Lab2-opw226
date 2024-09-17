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

    reg[3:0] bcdt;
    wire[6:0] segt;
    
    
    integer i;
    BCD_7_SEG uut3(bcdt, segt);
    
    initial begin
        for(i=0; i<4; i=i+1)
        begin
             bcdt = i;
             #10;
        end
     end
   
endmodule
