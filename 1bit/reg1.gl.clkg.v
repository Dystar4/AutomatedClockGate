

module reg1
(
  in,
  clk,
  en,
  out
);

  wire _0_;
  input clk;
  input en;
  input in;
  output out;
  wire GCLK;

  sky130_fd_sc_hd__dlclkp_1
  __clkgate_cell__
  (
    .GCLK(GCLK),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _2_
  (
    .CLK(GCLK),
    .D(in),
    .Q(out)
  );


endmodule

