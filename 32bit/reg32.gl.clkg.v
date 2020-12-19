

module reg32
(
  in,
  clk,
  en,
  out
);

  wire [30:0] _00_;
  input clk;
  input en;
  input [31:0] in;
  output [31:0] out;
  wire GCLK;

  sky130_fd_sc_hd__dlclkp_1
  __clkgate_cell__
  (
    .GCLK(GCLK),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _32_
  (
    .CLK(GCLK),
    .D(in[0]),
    .Q(out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _33_
  (
    .CLK(GCLK),
    .D(in[1]),
    .Q(out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _34_
  (
    .CLK(GCLK),
    .D(in[2]),
    .Q(out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _35_
  (
    .CLK(GCLK),
    .D(in[3]),
    .Q(out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _36_
  (
    .CLK(GCLK),
    .D(in[4]),
    .Q(out[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _37_
  (
    .CLK(GCLK),
    .D(in[5]),
    .Q(out[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _38_
  (
    .CLK(GCLK),
    .D(in[6]),
    .Q(out[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _39_
  (
    .CLK(GCLK),
    .D(in[7]),
    .Q(out[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(GCLK),
    .D(in[8]),
    .Q(out[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(GCLK),
    .D(in[9]),
    .Q(out[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _42_
  (
    .CLK(GCLK),
    .D(in[10]),
    .Q(out[10])
  );


  sky130_fd_sc_hd__dfxtp_1
  _43_
  (
    .CLK(GCLK),
    .D(in[11]),
    .Q(out[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _44_
  (
    .CLK(GCLK),
    .D(in[12]),
    .Q(out[12])
  );


  sky130_fd_sc_hd__dfxtp_1
  _45_
  (
    .CLK(GCLK),
    .D(in[13]),
    .Q(out[13])
  );


  sky130_fd_sc_hd__dfxtp_1
  _46_
  (
    .CLK(GCLK),
    .D(in[14]),
    .Q(out[14])
  );


  sky130_fd_sc_hd__dfxtp_1
  _47_
  (
    .CLK(GCLK),
    .D(in[15]),
    .Q(out[15])
  );


  sky130_fd_sc_hd__dfxtp_1
  _48_
  (
    .CLK(GCLK),
    .D(in[16]),
    .Q(out[16])
  );


  sky130_fd_sc_hd__dfxtp_1
  _49_
  (
    .CLK(GCLK),
    .D(in[17]),
    .Q(out[17])
  );


  sky130_fd_sc_hd__dfxtp_1
  _50_
  (
    .CLK(GCLK),
    .D(in[18]),
    .Q(out[18])
  );


  sky130_fd_sc_hd__dfxtp_1
  _51_
  (
    .CLK(GCLK),
    .D(in[19]),
    .Q(out[19])
  );


  sky130_fd_sc_hd__dfxtp_1
  _52_
  (
    .CLK(GCLK),
    .D(in[20]),
    .Q(out[20])
  );


  sky130_fd_sc_hd__dfxtp_1
  _53_
  (
    .CLK(GCLK),
    .D(in[21]),
    .Q(out[21])
  );


  sky130_fd_sc_hd__dfxtp_1
  _54_
  (
    .CLK(GCLK),
    .D(in[22]),
    .Q(out[22])
  );


  sky130_fd_sc_hd__dfxtp_1
  _55_
  (
    .CLK(GCLK),
    .D(in[23]),
    .Q(out[23])
  );


  sky130_fd_sc_hd__dfxtp_1
  _56_
  (
    .CLK(GCLK),
    .D(in[24]),
    .Q(out[24])
  );


  sky130_fd_sc_hd__dfxtp_1
  _57_
  (
    .CLK(GCLK),
    .D(in[25]),
    .Q(out[25])
  );


  sky130_fd_sc_hd__dfxtp_1
  _58_
  (
    .CLK(GCLK),
    .D(in[26]),
    .Q(out[26])
  );


  sky130_fd_sc_hd__dfxtp_1
  _59_
  (
    .CLK(GCLK),
    .D(in[27]),
    .Q(out[27])
  );


  sky130_fd_sc_hd__dfxtp_1
  _60_
  (
    .CLK(GCLK),
    .D(in[28]),
    .Q(out[28])
  );


  sky130_fd_sc_hd__dfxtp_1
  _61_
  (
    .CLK(GCLK),
    .D(in[29]),
    .Q(out[29])
  );


  sky130_fd_sc_hd__dfxtp_1
  _62_
  (
    .CLK(GCLK),
    .D(in[30]),
    .Q(out[30])
  );


endmodule

