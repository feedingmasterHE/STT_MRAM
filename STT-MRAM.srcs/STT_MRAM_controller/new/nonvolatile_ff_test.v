`timescale 1ns/10ps

module nonvolatile_ff_test();

reg clk;
reg rst;
reg d;
wire wr,rd,q;
// initialize the clk signal
initial begin
    clk <= 1'b0; 
end
always #100 clk <= ~clk;

// initialize the reset signal
initial begin
     rst <= 1'b1;
     #200 rst <= 1'b0;
     #1000 rst <= 1'b1;
end

// initialize the input signal
initial begin
    d <= 1'b1; 
    #90000 d<=1'b0;
end


wr_rd_controller controller1(.clk(clk),.rst(rst), .write_mtj(wr), .read_mtj(rd));
nonvolatile_ff ff1(.clk(clk),.rst(rst),.d(d),.write_mtj(wr),.read_mtj(rd),.q(q));

endmodule
