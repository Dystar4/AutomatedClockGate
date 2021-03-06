/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module reg16(in, clk, en, out);
  wire [15:0] _00_;
  input clk;
  input en;
  input [15:0] in;
  output [15:0] out;
  sky130_fd_sc_hd__mux2_2 _01_ (
    .A0(out[14]),
    .A1(in[14]),
    .S(en),
    .X(_00_[14])
  );
  sky130_fd_sc_hd__mux2_2 _02_ (
    .A0(out[13]),
    .A1(in[13]),
    .S(en),
    .X(_00_[13])
  );
  sky130_fd_sc_hd__mux2_2 _03_ (
    .A0(out[12]),
    .A1(in[12]),
    .S(en),
    .X(_00_[12])
  );
  sky130_fd_sc_hd__mux2_2 _04_ (
    .A0(out[11]),
    .A1(in[11]),
    .S(en),
    .X(_00_[11])
  );
  sky130_fd_sc_hd__mux2_2 _05_ (
    .A0(out[10]),
    .A1(in[10]),
    .S(en),
    .X(_00_[10])
  );
  sky130_fd_sc_hd__mux2_2 _06_ (
    .A0(out[9]),
    .A1(in[9]),
    .S(en),
    .X(_00_[9])
  );
  sky130_fd_sc_hd__mux2_2 _07_ (
    .A0(out[8]),
    .A1(in[8]),
    .S(en),
    .X(_00_[8])
  );
  sky130_fd_sc_hd__mux2_2 _08_ (
    .A0(out[7]),
    .A1(in[7]),
    .S(en),
    .X(_00_[7])
  );
  sky130_fd_sc_hd__mux2_2 _09_ (
    .A0(out[6]),
    .A1(in[6]),
    .S(en),
    .X(_00_[6])
  );
  sky130_fd_sc_hd__mux2_2 _10_ (
    .A0(out[5]),
    .A1(in[5]),
    .S(en),
    .X(_00_[5])
  );
  sky130_fd_sc_hd__mux2_2 _11_ (
    .A0(out[4]),
    .A1(in[4]),
    .S(en),
    .X(_00_[4])
  );
  sky130_fd_sc_hd__mux2_2 _12_ (
    .A0(out[3]),
    .A1(in[3]),
    .S(en),
    .X(_00_[3])
  );
  sky130_fd_sc_hd__mux2_2 _13_ (
    .A0(out[2]),
    .A1(in[2]),
    .S(en),
    .X(_00_[2])
  );
  sky130_fd_sc_hd__mux2_2 _14_ (
    .A0(out[1]),
    .A1(in[1]),
    .S(en),
    .X(_00_[1])
  );
  sky130_fd_sc_hd__mux2_2 _15_ (
    .A0(out[0]),
    .A1(in[0]),
    .S(en),
    .X(_00_[0])
  );
  sky130_fd_sc_hd__mux2_2 _16_ (
    .A0(out[15]),
    .A1(in[15]),
    .S(en),
    .X(_00_[15])
  );
  sky130_fd_sc_hd__dfxtp_1 _17_ (
    .CLK(clk),
    .D(_00_[0]),
    .Q(out[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _18_ (
    .CLK(clk),
    .D(_00_[1]),
    .Q(out[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _19_ (
    .CLK(clk),
    .D(_00_[2]),
    .Q(out[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _20_ (
    .CLK(clk),
    .D(_00_[3]),
    .Q(out[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _21_ (
    .CLK(clk),
    .D(_00_[4]),
    .Q(out[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _22_ (
    .CLK(clk),
    .D(_00_[5]),
    .Q(out[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _23_ (
    .CLK(clk),
    .D(_00_[6]),
    .Q(out[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _24_ (
    .CLK(clk),
    .D(_00_[7]),
    .Q(out[7])
  );
  sky130_fd_sc_hd__dfxtp_1 _25_ (
    .CLK(clk),
    .D(_00_[8]),
    .Q(out[8])
  );
  sky130_fd_sc_hd__dfxtp_1 _26_ (
    .CLK(clk),
    .D(_00_[9]),
    .Q(out[9])
  );
  sky130_fd_sc_hd__dfxtp_1 _27_ (
    .CLK(clk),
    .D(_00_[10]),
    .Q(out[10])
  );
  sky130_fd_sc_hd__dfxtp_1 _28_ (
    .CLK(clk),
    .D(_00_[11]),
    .Q(out[11])
  );
  sky130_fd_sc_hd__dfxtp_1 _29_ (
    .CLK(clk),
    .D(_00_[12]),
    .Q(out[12])
  );
  sky130_fd_sc_hd__dfxtp_1 _30_ (
    .CLK(clk),
    .D(_00_[13]),
    .Q(out[13])
  );
  sky130_fd_sc_hd__dfxtp_1 _31_ (
    .CLK(clk),
    .D(_00_[14]),
    .Q(out[14])
  );
  sky130_fd_sc_hd__dfxtp_1 _32_ (
    .CLK(clk),
    .D(_00_[15]),
    .Q(out[15])
  );
endmodule
