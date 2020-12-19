

module clk_gate
(
  clk,
  en,
  q
);

  wire _0_;
  wire _1_;
  input clk;
  input en;
  output q;
  wire qd;

  sky130_fd_sc_hd__inv_1
  _2_
  (
    .A(clk),
    .Y(_0_)
  );


  sky130_fd_sc_hd__inv_1
  _3_
  (
    .A(qd),
    .Y(_1_)
  );


  sky130_fd_sc_hd__nor2_1
  _4_
  (
    .A(_0_),
    .B(_1_),
    .Y(q)
  );


  \$_DLATCH_P_ 
  _5_
  (
    .D(en),
    .E(_0_),
    .Q(qd)
  );


endmodule

