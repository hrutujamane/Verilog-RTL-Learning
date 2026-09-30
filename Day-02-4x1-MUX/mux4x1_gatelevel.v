module mux4x1_gatelevel (
    input  wire [3:0] in,
    input  wire [1:0] sel,
    output wire       out
);

    wire nsel0, nsel1;
    wire w0, w1, w2, w3;

    not (nsel0, sel[0]);
    not (nsel1, sel[1]);

    and (w0, in[0], nsel1, nsel0);
    and (w1, in[1], nsel1, sel[0]);
    and (w2, in[2], sel[1], nsel0);
    and (w3, in[3], sel[1], sel[0]);

    or (out, w0, w1, w2, w3);

endmodule
