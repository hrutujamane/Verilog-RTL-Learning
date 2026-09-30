module mux4x1_dataflow (
    input  wire [3:0] in,
    input  wire [1:0] sel,
    output wire       out
);

    assign out = (~sel[1] & ~sel[0] & in[0]) |
                 (~sel[1] &  sel[0] & in[1]) |
                 ( sel[1] & ~sel[0] & in[2]) |
                 ( sel[1] &  sel[0] & in[3]);

endmodule
