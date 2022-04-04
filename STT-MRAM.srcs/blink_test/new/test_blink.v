`timescale 1ns/10ps

module test_blink();
    reg clk;
    reg rst;
    wire wr,rd;
    wire o_led;
    
    
    //originale test
    //blink blink1(clk,rst,o_led);
    
    //teilweise Ersetzung test   
    wr_rd_controller ctrl(clk,rst,wr,rd);
    blink_new3 blink0(clk,rst,rd,wr,o_led);
    //vollständige Ersetzung test
    //blink_new blink1(clk,rst,rd,wr,o_led);
    
    
    initial begin
        clk <= 1'b0; 
    end
    always #100 clk <= ~clk;
    
    initial begin
         rst <= 1'b0;
         #600 rst<= 1'b1;
         #600 rst<= 1'b0;
    end
    
    
endmodule