module counter (clk,
    rst,
    count);
 input clk;
 input rst;
 output [3:0] count;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;

 sky130_fd_sc_hd__nor2_2 _09_ (.A(count[0]),
    .B(rst),
    .Y(_00_));
 sky130_fd_sc_hd__a21oi_2 _10_ (.A1(count[0]),
    .A2(count[1]),
    .B1(rst),
    .Y(_04_));
 sky130_fd_sc_hd__o21a_2 _11_ (.A1(count[0]),
    .A2(count[1]),
    .B1(_04_),
    .X(_01_));
 sky130_fd_sc_hd__a21oi_2 _12_ (.A1(count[0]),
    .A2(count[1]),
    .B1(count[2]),
    .Y(_05_));
 sky130_fd_sc_hd__a31o_2 _13_ (.A1(count[0]),
    .A2(count[1]),
    .A3(count[2]),
    .B1(rst),
    .X(_06_));
 sky130_fd_sc_hd__nor2_2 _14_ (.A(_05_),
    .B(_06_),
    .Y(_02_));
 sky130_fd_sc_hd__a31o_2 _15_ (.A1(count[0]),
    .A2(count[1]),
    .A3(count[2]),
    .B1(count[3]),
    .X(_07_));
 sky130_fd_sc_hd__a41o_2 _16_ (.A1(count[0]),
    .A2(count[1]),
    .A3(count[2]),
    .A4(count[3]),
    .B1(rst),
    .X(_08_));
 sky130_fd_sc_hd__and2b_2 _17_ (.A_N(_08_),
    .B(_07_),
    .X(_03_));
 sky130_fd_sc_hd__dfxtp_2 _18_ (.CLK(clk),
    .D(_00_),
    .Q(count[0]));
 sky130_fd_sc_hd__dfxtp_2 _19_ (.CLK(clk),
    .D(_01_),
    .Q(count[1]));
 sky130_fd_sc_hd__dfxtp_2 _20_ (.CLK(clk),
    .D(_02_),
    .Q(count[2]));
 sky130_fd_sc_hd__dfxtp_2 _21_ (.CLK(clk),
    .D(_03_),
    .Q(count[3]));
endmodule
