`timescale 1ns/10ps

module test_blink();
    reg clk;
    reg rst;
    wire wr,rd;
    wire o_led;
    
    
    wr_rd_controller ctrl(clk,rst,wr,rd);
    
    blink_new blink0(clk,rst,rd,wr,o_led);
    
    initial begin
        clk <= 1'b0; 
    end
    always #100 clk <= ~clk;
    
    initial begin
         rst <= 1'b0;
         #200 rst <= 1'b1;
         #1000 rst <= 1'b0;
    end
    
    
endmodule