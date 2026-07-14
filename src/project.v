module tt_um_example (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // Bidirectional inputs
    output wire [7:0] uio_out,  // Bidirectional outputs
    output wire [7:0] uio_oe,   // Bidirectional output enable

    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

    // Không sử dụng các chân này
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

    // Tránh cảnh báo "unused"
    wire _unused = &{ena, clk, rst_n, uio_in};

    // Gán tên cho các đầu vào
    wire A   = ui_in[0];
    wire B   = ui_in[1];
    wire SEL = ui_in[2];

    // MUX 2:1
    assign uo_out[0] = SEL ? B : A;

    // Các output còn lại bằng 0
    assign uo_out[7:1] = 7'b0000000;

endmodule
