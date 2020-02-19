/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.03 %
// MAE = 129990656 
// WCE% = 12.11 %
// WCE = 519962625 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 26.79 %
// MSE = 23887.935e12 
// FPGA_POWER = 0.36
// FPGA_DELAY = 8.0
// FPGA_LUT = 15


module mul16u_HEN ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_13_12,C_13_13,C_13_14,C_14_12,C_14_13,C_14_14,C_15_12,C_15_13,C_15_14,C_16_12,C_16_13,C_16_14,S_12_12,S_12_13,S_12_14,S_12_15,S_13_11,S_13_12,S_13_13,S_13_14,S_13_15,S_14_10,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_15_9,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_8,S_16_9;

  assign S_12_12 = (A[12] & B[12]);
  assign S_12_13 = (A[12] & B[13]);
  assign S_12_14 = (A[12] & B[14]);
  assign S_12_15 = (A[12] & B[15]);
  assign S_13_11 = S_12_12;
  HAX1 U11645 (.A(S_12_13), .B((A[13] & B[12])), .YS(S_13_12), .YC(C_13_12));
  HAX1 U11646 (.A(S_12_14), .B((A[13] & B[13])), .YS(S_13_13), .YC(C_13_13));
  HAX1 U11647 (.A(S_12_15), .B((A[13] & B[14])), .YS(S_13_14), .YC(C_13_14));
  assign S_13_15 = (A[13] & B[15]);
  assign S_14_10 = S_13_11;
  assign S_14_11 = S_13_12;
  FAX1 U11661 (.A(S_13_13), .B(C_13_12), .C((A[14] & B[12])), .YS(S_14_12), .YC(C_14_12));
  FAX1 U11662 (.A(S_13_14), .B(C_13_13), .C((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  FAX1 U11663 (.A(S_13_15), .B(C_13_14), .C((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  assign S_15_9 = S_14_10;
  assign S_15_10 = S_14_11;
  assign S_15_11 = S_14_12;
  FAX1 U11677 (.A(S_14_13), .B(C_14_12), .C((A[15] & B[12])), .YS(S_15_12), .YC(C_15_12));
  FAX1 U11678 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  FAX1 U11679 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign S_16_8 = S_15_9;
  assign S_16_9 = S_15_10;
  assign S_16_10 = S_15_11;
  assign S_16_11 = S_15_12;
  HAX1 U11693 (.A(S_15_13), .B(C_15_12), .YS(S_16_12), .YC(C_16_12));
  FAX1 U11694 (.A(S_15_14), .B(C_16_12), .C(C_15_13), .YS(S_16_13), .YC(C_16_13));
  FAX1 U11695 (.A(S_15_15), .B(C_16_13), .C(C_15_14), .YS(S_16_14), .YC(C_16_14));
  assign S_16_15 = C_16_14;
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,S_16_9,S_16_8,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

