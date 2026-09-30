module AND_GATE_tb;

    reg A;
    reg B;
    wire out;

    AND_GATE_design uut (
        .A(A),
        .B(B),
        .out(out)
    );

    initial begin
        A = 1'b0; B = 1'b0; #10;
        A = 1'b0; B = 1'b1; #10;
        A = 1'b1; B = 1'b0; #10;
        A = 1'b1; B = 1'b1; #10;
        $finish;
    end

    initial begin
        $monitor("time=%0t A=%b B=%b out=%b", $time, A, B, out);
    end

    initial begin
        $dumpfile("dump_and_gate.vcd");
        $dumpvars(0, AND_GATE_tb);
    end

endmodule
