/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.16 %
// MAE = 6782976 
// WCE% = 0.63 %
// WCE = 27131905 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 3.06 %
// MSE = 55158.891e9 
// FPGA_POWER = 1.1
// FPGA_DELAY = 12
// FPGA_LUT = 66


module mul16u_H6P ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_10_11,C_10_12,C_10_13,C_10_14,C_11_10,C_11_11,C_11_12,C_11_13,C_11_14,C_12_10,C_12_11,C_12_12,C_12_13,C_12_14,C_12_9,C_13_10,C_13_11,C_13_12,C_13_13,C_13_14,C_13_8,C_13_9,C_14_10,C_14_11,C_14_12,C_14_13,C_14_14,C_14_7,C_14_8,C_14_9,C_15_10,C_15_11,C_15_12,C_15_13,C_15_14,C_15_6,C_15_7,C_15_8,C_15_9,C_8_13,C_8_14,C_9_12,C_9_13,C_9_14,S_10_11,S_10_12,S_10_13,S_10_14,S_10_15,S_11_10,S_11_11,S_11_12,S_11_13,S_11_14,S_11_15,S_12_10,S_12_11,S_12_12,S_12_13,S_12_14,S_12_15,S_12_9,S_13_10,S_13_11,S_13_12,S_13_13,S_13_14,S_13_15,S_13_8,S_13_9,S_14_10,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_14_7,S_14_8,S_14_9,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_15_6,S_15_7,S_15_8,S_15_9,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_5,S_16_6,S_16_7,S_16_8,S_16_9,S_7_14,S_7_15,S_8_13,S_8_14,S_8_15,S_9_12,S_9_13,S_9_14,S_9_15;

  assign S_7_14 = (A[7] & B[14]);
  assign S_7_15 = (A[7] & B[15]);
  PDKGENHAX1 U444180 (.A(S_7_14), .B((A[8] & B[13])), .YS(S_8_13), .YC(C_8_13));
  PDKGENHAX1 U444181 (.A(S_7_15), .B((A[8] & B[14])), .YS(S_8_14), .YC(C_8_14));
  assign S_8_15 = (A[8] & B[15]);
  PDKGENHAX1 U444195 (.A(S_8_13), .B((A[9] & B[12])), .YS(S_9_12), .YC(C_9_12));
  PDKGENFAX1 U444196 (.A(S_8_14), .B(C_8_13), .C((A[9] & B[13])), .YS(S_9_13), .YC(C_9_13));
  PDKGENFAX1 U444197 (.A(S_8_15), .B(C_8_14), .C((A[9] & B[14])), .YS(S_9_14), .YC(C_9_14));
  assign S_9_15 = (A[9] & B[15]);
  PDKGENHAX1 U444210 (.A(S_9_12), .B((A[10] & B[11])), .YS(S_10_11), .YC(C_10_11));
  PDKGENFAX1 U444211 (.A(S_9_13), .B(C_9_12), .C((A[10] & B[12])), .YS(S_10_12), .YC(C_10_12));
  PDKGENFAX1 U444212 (.A(S_9_14), .B(C_9_13), .C((A[10] & B[13])), .YS(S_10_13), .YC(C_10_13));
  PDKGENFAX1 U444213 (.A(S_9_15), .B(C_9_14), .C((A[10] & B[14])), .YS(S_10_14), .YC(C_10_14));
  assign S_10_15 = (A[10] & B[15]);
  PDKGENHAX1 U444225 (.A(S_10_11), .B((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  PDKGENFAX1 U444226 (.A(S_10_12), .B(C_10_11), .C((A[11] & B[11])), .YS(S_11_11), .YC(C_11_11));
  PDKGENFAX1 U444227 (.A(S_10_13), .B(C_10_12), .C((A[11] & B[12])), .YS(S_11_12), .YC(C_11_12));
  PDKGENFAX1 U444228 (.A(S_10_14), .B(C_10_13), .C((A[11] & B[13])), .YS(S_11_13), .YC(C_11_13));
  PDKGENFAX1 U444229 (.A(S_10_15), .B(C_10_14), .C((A[11] & B[14])), .YS(S_11_14), .YC(C_11_14));
  assign S_11_15 = (A[11] & B[15]);
  PDKGENHAX1 U444240 (.A(S_11_10), .B((A[12] & B[9])), .YS(S_12_9), .YC(C_12_9));
  PDKGENFAX1 U444241 (.A(S_11_11), .B(C_11_10), .C((A[12] & B[10])), .YS(S_12_10), .YC(C_12_10));
  PDKGENFAX1 U444242 (.A(S_11_12), .B(C_11_11), .C((A[12] & B[11])), .YS(S_12_11), .YC(C_12_11));
  PDKGENFAX1 U444243 (.A(S_11_13), .B(C_11_12), .C((A[12] & B[12])), .YS(S_12_12), .YC(C_12_12));
  PDKGENFAX1 U444244 (.A(S_11_14), .B(C_11_13), .C((A[12] & B[13])), .YS(S_12_13), .YC(C_12_13));
  PDKGENFAX1 U444245 (.A(S_11_15), .B(C_11_14), .C((A[12] & B[14])), .YS(S_12_14), .YC(C_12_14));
  assign S_12_15 = (A[12] & B[15]);
  PDKGENHAX1 U444255 (.A(S_12_9), .B((A[13] & B[8])), .YS(S_13_8), .YC(C_13_8));
  PDKGENFAX1 U444256 (.A(S_12_10), .B(C_12_9), .C((A[13] & B[9])), .YS(S_13_9), .YC(C_13_9));
  PDKGENFAX1 U444257 (.A(S_12_11), .B(C_12_10), .C((A[13] & B[10])), .YS(S_13_10), .YC(C_13_10));
  PDKGENFAX1 U444258 (.A(S_12_12), .B(C_12_11), .C((A[13] & B[11])), .YS(S_13_11), .YC(C_13_11));
  PDKGENFAX1 U444259 (.A(S_12_13), .B(C_12_12), .C((A[13] & B[12])), .YS(S_13_12), .YC(C_13_12));
  PDKGENFAX1 U444260 (.A(S_12_14), .B(C_12_13), .C((A[13] & B[13])), .YS(S_13_13), .YC(C_13_13));
  PDKGENFAX1 U444261 (.A(S_12_15), .B(C_12_14), .C((A[13] & B[14])), .YS(S_13_14), .YC(C_13_14));
  assign S_13_15 = (A[13] & B[15]);
  PDKGENHAX1 U444270 (.A(S_13_8), .B((A[14] & B[7])), .YS(S_14_7), .YC(C_14_7));
  PDKGENFAX1 U444271 (.A(S_13_9), .B(C_13_8), .C((A[14] & B[8])), .YS(S_14_8), .YC(C_14_8));
  PDKGENFAX1 U444272 (.A(S_13_10), .B(C_13_9), .C((A[14] & B[9])), .YS(S_14_9), .YC(C_14_9));
  PDKGENFAX1 U444273 (.A(S_13_11), .B(C_13_10), .C((A[14] & B[10])), .YS(S_14_10), .YC(C_14_10));
  PDKGENFAX1 U444274 (.A(S_13_12), .B(C_13_11), .C((A[14] & B[11])), .YS(S_14_11), .YC(C_14_11));
  PDKGENFAX1 U444275 (.A(S_13_13), .B(C_13_12), .C((A[14] & B[12])), .YS(S_14_12), .YC(C_14_12));
  PDKGENFAX1 U444276 (.A(S_13_14), .B(C_13_13), .C((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  PDKGENFAX1 U444277 (.A(S_13_15), .B(C_13_14), .C((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  PDKGENHAX1 U444285 (.A(S_14_7), .B((A[15] & B[6])), .YS(S_15_6), .YC(C_15_6));
  PDKGENFAX1 U444286 (.A(S_14_8), .B(C_14_7), .C((A[15] & B[7])), .YS(S_15_7), .YC(C_15_7));
  PDKGENFAX1 U444287 (.A(S_14_9), .B(C_14_8), .C((A[15] & B[8])), .YS(S_15_8), .YC(C_15_8));
  PDKGENFAX1 U444288 (.A(S_14_10), .B(C_14_9), .C((A[15] & B[9])), .YS(S_15_9), .YC(C_15_9));
  PDKGENFAX1 U444289 (.A(S_14_11), .B(C_14_10), .C((A[15] & B[10])), .YS(S_15_10), .YC(C_15_10));
  PDKGENFAX1 U444290 (.A(S_14_12), .B(C_14_11), .C((A[15] & B[11])), .YS(S_15_11), .YC(C_15_11));
  PDKGENFAX1 U444291 (.A(S_14_13), .B(C_14_12), .C((A[15] & B[12])), .YS(S_15_12), .YC(C_15_12));
  PDKGENFAX1 U444292 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  PDKGENFAX1 U444293 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign {S_16_15, S_16_14, S_16_13, S_16_12, S_16_11, S_16_10, S_16_9, S_16_8, S_16_7, S_16_6, S_16_5} = {C_15_14, C_15_13, C_15_12, C_15_11, C_15_10, C_15_9, C_15_8, C_15_7, C_15_6, 1'b0} + {S_15_15, S_15_14, S_15_13, S_15_12, S_15_11, S_15_10, S_15_9, S_15_8, S_15_7, S_15_6};
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,S_16_9,S_16_8,S_16_7,S_16_6,S_16_5,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

/* mod */
module PDKGENFAX1( input A, input B, input C, output YS, output YC );
    assign YS = (A ^ B) ^ C;
    assign YC = (A & B) | (B & C) | (A & C);
endmodule
/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule
