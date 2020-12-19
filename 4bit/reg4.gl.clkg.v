

module reg4
(
  in,
  clk,
  en,
  out
);

  wire [3:0] _0_;
  input clk;
  input en;
  input [3:0] in;
  output [3:0] out;
  wire GCLK;

  sky130_fd_sc_hd__dlclkp_1
  __clkgate_cell__
  (
    .GCLK(GCLK),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(GCLK),
    .D(in[0]),
    .Q(out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _6_
  (
    .CLK(GCLK),
    .D(in[1]),
    .Q(out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _7_
  (
    .CLK(GCLK),
    .D(in[2]),
    .Q(out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _8_
  (
    .CLK(GCLK),
    .D(in[3]),
    .Q(out[3])
  );


endmodule

