`timescale 1ns/10ps

module controller_test();

reg clk;
reg rst;
wire wr,rd;

wr_rd_controller cont1(.clk(clk), .rst(rst), .write_mtj(wr), .read_mtj(rd));

initial begin
    clk <= 1'b0; 
end
always #100 clk <= ~clk;

initial begin
     rst <= 1'b1;
     #200 rst <= 1'b0;
     #1000 rst <= 1'b1;
end


endmodule
