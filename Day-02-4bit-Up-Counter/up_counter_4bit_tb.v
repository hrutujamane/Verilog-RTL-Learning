module up_counter_4bit_tb;

    reg clk;
    reg reset;
    wire [3:0] count;

    up_counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1;
        #10;
        reset = 0;

        #160;
        $finish;
    end

    initial begin
        $monitor("time=%0t reset=%b clk=%b count=%b",
                 $time, reset, clk, count);

        $dumpfile("up_counter_4bit.vcd");
        $dumpvars(0, up_counter_4bit_tb);
    end

endmodule
