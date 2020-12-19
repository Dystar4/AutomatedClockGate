

module reg16
(
  in,
  clk,
  en,
  out
);

  wire [15:0] _00_;
  input clk;
  input en;
  input [15:0] in;
  output [15:0] out;
  wire GCLK;

  sky130_fd_sc_hd__dlclkp_1
  __clkgate_cell__
  (
    .GCLK(GCLK),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _17_
  (
    .CLK(GCLK),
    .D(in[0]),
    .Q(out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _18_
  (
    .CLK(GCLK),
    .D(in[1]),
    .Q(out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _19_
  (
    .CLK(GCLK),
    .D(in[2]),
    .Q(out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _20_
  (
    .CLK(GCLK),
    .D(in[3]),
    .Q(out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _21_
  (
    .CLK(GCLK),
    .D(in[4]),
    .Q(out[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _22_
  (
    .CLK(GCLK),
    .D(in[5]),
    .Q(out[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _23_
  (
    .CLK(GCLK),
    .D(in[6]),
    .Q(out[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _24_
  (
    .CLK(GCLK),
    .D(in[7]),
    .Q(out[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _25_
  (
    .CLK(GCLK),
    .D(in[8]),
    .Q(out[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _26_
  (
    .CLK(GCLK),
    .D(in[9]),
    .Q(out[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _27_
  (
    .CLK(GCLK),
    .D(in[10]),
    .Q(out[10])
  );


  sky130_fd_sc_hd__dfxtp_1
  _28_
  (
    .CLK(GCLK),
    .D(in[11]),
    .Q(out[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _29_
  (
    .CLK(GCLK),
    .D(in[12]),
    .Q(out[12])
  );


  sky130_fd_sc_hd__dfxtp_1
  _30_
  (
    .CLK(GCLK),
    .D(in[13]),
    .Q(out[13])
  );


  sky130_fd_sc_hd__dfxtp_1
  _31_
  (
    .CLK(GCLK),
    .D(in[14]),
    .Q(out[14])
  );


  sky130_fd_sc_hd__dfxtp_1
  _32_
  (
    .CLK(GCLK),
    .D(in[15]),
    .Q(out[15])
  );


endmodule

