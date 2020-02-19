/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.18 %
// MAE = 30720 
// WCE% = 0.73 %
// WCE = 122881 
// WCRE% = 100.00 %
// EP% = 99.90 %
// MRE% = 3.29 %
// MSE = 12148.233e5 
// FPGA_POWER = 1.0
// FPGA_DELAY = 11
// FPGA_LUT = 55


module mul12u_2XA ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire C_10_10,C_10_3,C_10_4,C_10_5,C_10_6,C_10_7,C_10_8,C_10_9,C_11_10,C_11_2,C_11_3,C_11_4,C_11_5,C_11_6,C_11_7,C_11_8,C_11_9,C_5_10,C_5_8,C_5_9,C_6_10,C_6_7,C_6_8,C_6_9,C_7_10,C_7_6,C_7_7,C_7_8,C_7_9,C_8_10,C_8_5,C_8_6,C_8_7,C_8_8,C_8_9,C_9_10,C_9_4,C_9_5,C_9_6,C_9_7,C_9_8,C_9_9,S_10_10,S_10_11,S_10_3,S_10_4,S_10_5,S_10_6,S_10_7,S_10_8,S_10_9,S_11_10,S_11_11,S_11_2,S_11_3,S_11_4,S_11_5,S_11_6,S_11_7,S_11_8,S_11_9,S_12_1,S_12_10,S_12_11,S_12_2,S_12_3,S_12_4,S_12_5,S_12_6,S_12_7,S_12_8,S_12_9,S_4_10,S_4_11,S_4_9,S_5_10,S_5_11,S_5_8,S_5_9,S_6_10,S_6_11,S_6_7,S_6_8,S_6_9,S_7_10,S_7_11,S_7_6,S_7_7,S_7_8,S_7_9,S_8_10,S_8_11,S_8_5,S_8_6,S_8_7,S_8_8,S_8_9,S_9_10,S_9_11,S_9_4,S_9_5,S_9_6,S_9_7,S_9_8,S_9_9;

  assign S_4_9 = (A[4] & B[9]);
  assign S_4_10 = (A[4] & B[10]);
  assign S_4_11 = (A[4] & B[11]);
  PDKGENHAX1 U307341 (.A(S_4_9), .B((A[5] & B[8])), .YS(S_5_8), .YC(C_5_8));
  PDKGENHAX1 U307342 (.A(S_4_10), .B((A[5] & B[9])), .YS(S_5_9), .YC(C_5_9));
  PDKGENHAX1 U307343 (.A(S_4_11), .B((A[5] & B[10])), .YS(S_5_10), .YC(C_5_10));
  assign S_5_11 = (A[5] & B[11]);
  PDKGENHAX1 U307352 (.A(S_5_8), .B((A[6] & B[7])), .YS(S_6_7), .YC(C_6_7));
  PDKGENFAX1 U307353 (.A(S_5_9), .B(C_5_8), .C((A[6] & B[8])), .YS(S_6_8), .YC(C_6_8));
  PDKGENFAX1 U307354 (.A(S_5_10), .B(C_5_9), .C((A[6] & B[9])), .YS(S_6_9), .YC(C_6_9));
  PDKGENFAX1 U307355 (.A(S_5_11), .B(C_5_10), .C((A[6] & B[10])), .YS(S_6_10), .YC(C_6_10));
  assign S_6_11 = (A[6] & B[11]);
  PDKGENHAX1 U307363 (.A(S_6_7), .B((A[7] & B[6])), .YS(S_7_6), .YC(C_7_6));
  PDKGENFAX1 U307364 (.A(S_6_8), .B(C_6_7), .C((A[7] & B[7])), .YS(S_7_7), .YC(C_7_7));
  PDKGENFAX1 U307365 (.A(S_6_9), .B(C_6_8), .C((A[7] & B[8])), .YS(S_7_8), .YC(C_7_8));
  PDKGENFAX1 U307366 (.A(S_6_10), .B(C_6_9), .C((A[7] & B[9])), .YS(S_7_9), .YC(C_7_9));
  PDKGENFAX1 U307367 (.A(S_6_11), .B(C_6_10), .C((A[7] & B[10])), .YS(S_7_10), .YC(C_7_10));
  assign S_7_11 = (A[7] & B[11]);
  PDKGENHAX1 U307374 (.A(S_7_6), .B((A[8] & B[5])), .YS(S_8_5), .YC(C_8_5));
  PDKGENFAX1 U307375 (.A(S_7_7), .B(C_7_6), .C((A[8] & B[6])), .YS(S_8_6), .YC(C_8_6));
  PDKGENFAX1 U307376 (.A(S_7_8), .B(C_7_7), .C((A[8] & B[7])), .YS(S_8_7), .YC(C_8_7));
  PDKGENFAX1 U307377 (.A(S_7_9), .B(C_7_8), .C((A[8] & B[8])), .YS(S_8_8), .YC(C_8_8));
  PDKGENFAX1 U307378 (.A(S_7_10), .B(C_7_9), .C((A[8] & B[9])), .YS(S_8_9), .YC(C_8_9));
  PDKGENFAX1 U307379 (.A(S_7_11), .B(C_7_10), .C((A[8] & B[10])), .YS(S_8_10), .YC(C_8_10));
  assign S_8_11 = (A[8] & B[11]);
  PDKGENHAX1 U307385 (.A(S_8_5), .B((A[9] & B[4])), .YS(S_9_4), .YC(C_9_4));
  PDKGENFAX1 U307386 (.A(S_8_6), .B(C_8_5), .C((A[9] & B[5])), .YS(S_9_5), .YC(C_9_5));
  PDKGENFAX1 U307387 (.A(S_8_7), .B(C_8_6), .C((A[9] & B[6])), .YS(S_9_6), .YC(C_9_6));
  PDKGENFAX1 U307388 (.A(S_8_8), .B(C_8_7), .C((A[9] & B[7])), .YS(S_9_7), .YC(C_9_7));
  PDKGENFAX1 U307389 (.A(S_8_9), .B(C_8_8), .C((A[9] & B[8])), .YS(S_9_8), .YC(C_9_8));
  PDKGENFAX1 U307390 (.A(S_8_10), .B(C_8_9), .C((A[9] & B[9])), .YS(S_9_9), .YC(C_9_9));
  PDKGENFAX1 U307391 (.A(S_8_11), .B(C_8_10), .C((A[9] & B[10])), .YS(S_9_10), .YC(C_9_10));
  assign S_9_11 = (A[9] & B[11]);
  PDKGENHAX1 U307396 (.A(S_9_4), .B((A[10] & B[3])), .YS(S_10_3), .YC(C_10_3));
  PDKGENFAX1 U307397 (.A(S_9_5), .B(C_9_4), .C((A[10] & B[4])), .YS(S_10_4), .YC(C_10_4));
  PDKGENFAX1 U307398 (.A(S_9_6), .B(C_9_5), .C((A[10] & B[5])), .YS(S_10_5), .YC(C_10_5));
  PDKGENFAX1 U307399 (.A(S_9_7), .B(C_9_6), .C((A[10] & B[6])), .YS(S_10_6), .YC(C_10_6));
  PDKGENFAX1 U307400 (.A(S_9_8), .B(C_9_7), .C((A[10] & B[7])), .YS(S_10_7), .YC(C_10_7));
  PDKGENFAX1 U307401 (.A(S_9_9), .B(C_9_8), .C((A[10] & B[8])), .YS(S_10_8), .YC(C_10_8));
  PDKGENFAX1 U307402 (.A(S_9_10), .B(C_9_9), .C((A[10] & B[9])), .YS(S_10_9), .YC(C_10_9));
  PDKGENFAX1 U307403 (.A(S_9_11), .B(C_9_10), .C((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  assign S_10_11 = (A[10] & B[11]);
  PDKGENHAX1 U307407 (.A(S_10_3), .B((A[11] & B[2])), .YS(S_11_2), .YC(C_11_2));
  PDKGENFAX1 U307408 (.A(S_10_4), .B(C_10_3), .C((A[11] & B[3])), .YS(S_11_3), .YC(C_11_3));
  PDKGENFAX1 U307409 (.A(S_10_5), .B(C_10_4), .C((A[11] & B[4])), .YS(S_11_4), .YC(C_11_4));
  PDKGENFAX1 U307410 (.A(S_10_6), .B(C_10_5), .C((A[11] & B[5])), .YS(S_11_5), .YC(C_11_5));
  PDKGENFAX1 U307411 (.A(S_10_7), .B(C_10_6), .C((A[11] & B[6])), .YS(S_11_6), .YC(C_11_6));
  PDKGENFAX1 U307412 (.A(S_10_8), .B(C_10_7), .C((A[11] & B[7])), .YS(S_11_7), .YC(C_11_7));
  PDKGENFAX1 U307413 (.A(S_10_9), .B(C_10_8), .C((A[11] & B[8])), .YS(S_11_8), .YC(C_11_8));
  PDKGENFAX1 U307414 (.A(S_10_10), .B(C_10_9), .C((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  PDKGENFAX1 U307415 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  assign S_11_11 = (A[11] & B[11]);
  assign {S_12_11, S_12_10, S_12_9, S_12_8, S_12_7, S_12_6, S_12_5, S_12_4, S_12_3, S_12_2, S_12_1} = {C_11_10, C_11_9, C_11_8, C_11_7, C_11_6, C_11_5, C_11_4, C_11_3, C_11_2, 1'b0} + {S_11_11, S_11_10, S_11_9, S_11_8, S_11_7, S_11_6, S_11_5, S_11_4, S_11_3, S_11_2};
  assign O = {S_12_11,S_12_10,S_12_9,S_12_8,S_12_7,S_12_6,S_12_5,S_12_4,S_12_3,S_12_2,S_12_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule
/* mod */
module PDKGENFAX1( input A, input B, input C, output YS, output YC );
    assign YS = (A ^ B) ^ C;
    assign YC = (A & B) | (B & C) | (A & C);
endmodule
