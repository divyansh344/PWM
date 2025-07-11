`timescale 1ns / 1ps
module testbench;
reg clk, rst; wire out;

pwm dut(.clk(clk), .rst(rst), .out(out));

initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end

initial begin
    rst = 1'b0;
end

initial begin
    $dumpfile ("pwm.vcd");
    $dumpvars(0, testbench);
    $monitor($time, " clk = %b, rst = %b, out = %b", clk, rst, out);
end

initial begin
    #10000 $finish;
end

endmodule

