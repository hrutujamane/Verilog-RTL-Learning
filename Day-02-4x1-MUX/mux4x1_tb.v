module mux4x1_tb;

    reg  [3:0] in;
    reg  [1:0] sel;
    wire out;

    // Change module name here to test the desired modeling style:
    mux4x1_behavioral dut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        in = 4'b1010;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("time=%0t in=%b sel=%b out=%b",
                 $time, in, sel, out);

        $dumpfile("mux4x1.vcd");
        $dumpvars(0, mux4x1_tb);
    end

endmodule
