module tt_um_example (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

assign uio_out = 8'h00;
assign uio_oe  = 8'h00;

wire _unused = &{ena, clk, rst_n, uio_in};

assign uo_out[0] = ui_in[2] ? ui_in[1] : ui_in[0];
assign uo_out[7:1] = 7'b0;

endmodule
