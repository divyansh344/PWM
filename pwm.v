`timescale 1ns / 1ps

module pwm(clk, rst, out);
input clk, rst;
output reg out;

parameter period = 100;
integer count = 0;
integer ton = 0;
reg ncyc = 0;
reg mode = 0;

always @ (posedge clk) begin
    if (rst) begin
        count <= 0;
        ton <= 0;
        out <= 0;
        ncyc <= 0;
        mode = 0;
    end
    else begin
        if (count <= ton) begin
            out <= 1'b1;
            count <= count + 1;
            ncyc <= 1'b0;
        end

        else if (count < period) begin
            out <= 1'b0;
            count <= count + 1;
            ncyc <= 1'b0;
        end

        else begin
            count <= 0;
            ncyc <= 1'b1;
        end
    end
end

always @ (posedge clk) begin
    if (!rst) begin
        if (ncyc) begin
            if ((ton < period) & !mode )
            ton <= ton + 5;
            else if (!mode & (ton == period)) begin
            mode <= 1;
            ton <= ton - 5; end

            else if (mode & (ton < period) & (ton > 0))
            ton <= ton - 5;
            else if (mode & (ton == 0))
            mode = 0;
        end
    end
end

endmodule


            
            
            
            

                
            



