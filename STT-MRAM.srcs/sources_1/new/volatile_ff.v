`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/06 10:25:20
// Design Name: 
// Module Name: volatile_ff
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


module volatile_ff(
    input clk,
    input rst,
    input d,
    output reg q
    );
    
    always@(posedge clk, negedge rst)begin
        if(!rst) 
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
