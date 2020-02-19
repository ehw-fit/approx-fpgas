/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.26 %
// MAE = 210944 
// WCE% = 5.03 %
// WCE = 843777 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 14.56 %
// MSE = 60863.622e6 
// FPGA_POWER = 0.47
// FPGA_DELAY = 9.1
// FPGA_LUT = 20


module mul12u_2QA ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire C_10_10,C_10_6,C_10_7,C_10_8,C_10_9,C_11_10,C_11_5,C_11_6,C_11_7,C_11_8,C_11_9,C_8_10,C_8_8,C_8_9,C_9_10,C_9_7,C_9_8,C_9_9,S_10_10,S_10_11,S_10_6,S_10_7,S_10_8,S_10_9,S_11_10,S_11_11,S_11_5,S_11_6,S_11_7,S_11_8,S_11_9,S_12_10,S_12_11,S_12_4,S_12_5,S_12_6,S_12_7,S_12_8,S_12_9,S_7_10,S_7_11,S_7_9,S_8_10,S_8_11,S_8_8,S_8_9,S_9_10,S_9_11,S_9_7,S_9_8,S_9_9;

  assign S_7_9 = (A[7] & B[9]);
  assign S_7_10 = (A[7] & B[10]);
  assign S_7_11 = (A[7] & B[11]);
  HAX1 U322347 (.A(S_7_9), .B((A[8] & B[8])), .YS(S_8_8), .YC(C_8_8));
  HAX1 U322348 (.A(S_7_10), .B((A[8] & B[9])), .YS(S_8_9), .YC(C_8_9));
  HAX1 U322349 (.A(S_7_11), .B((A[8] & B[10])), .YS(S_8_10), .YC(C_8_10));
  assign S_8_11 = (A[8] & B[11]);
  HAX1 U322358 (.A(S_8_8), .B((A[9] & B[7])), .YS(S_9_7), .YC(C_9_7));
  FAX1 U322359 (.A(S_8_9), .B(C_8_8), .C((A[9] & B[8])), .YS(S_9_8), .YC(C_9_8));
  FAX1 U322360 (.A(S_8_10), .B(C_8_9), .C((A[9] & B[9])), .YS(S_9_9), .YC(C_9_9));
  FAX1 U322361 (.A(S_8_11), .B(C_8_10), .C((A[9] & B[10])), .YS(S_9_10), .YC(C_9_10));
  assign S_9_11 = (A[9] & B[11]);
  HAX1 U322369 (.A(S_9_7), .B((A[10] & B[6])), .YS(S_10_6), .YC(C_10_6));
  FAX1 U322370 (.A(S_9_8), .B(C_9_7), .C((A[10] & B[7])), .YS(S_10_7), .YC(C_10_7));
  FAX1 U322371 (.A(S_9_9), .B(C_9_8), .C((A[10] & B[8])), .YS(S_10_8), .YC(C_10_8));
  FAX1 U322372 (.A(S_9_10), .B(C_9_9), .C((A[10] & B[9])), .YS(S_10_9), .YC(C_10_9));
  FAX1 U322373 (.A(S_9_11), .B(C_9_10), .C((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  assign S_10_11 = (A[10] & B[11]);
  HAX1 U322380 (.A(S_10_6), .B((A[11] & B[5])), .YS(S_11_5), .YC(C_11_5));
  FAX1 U322381 (.A(S_10_7), .B(C_10_6), .C((A[11] & B[6])), .YS(S_11_6), .YC(C_11_6));
  FAX1 U322382 (.A(S_10_8), .B(C_10_7), .C((A[11] & B[7])), .YS(S_11_7), .YC(C_11_7));
  FAX1 U322383 (.A(S_10_9), .B(C_10_8), .C((A[11] & B[8])), .YS(S_11_8), .YC(C_11_8));
  FAX1 U322384 (.A(S_10_10), .B(C_10_9), .C((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  FAX1 U322385 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  assign S_11_11 = (A[11] & B[11]);
  assign {S_12_11, S_12_10, S_12_9, S_12_8, S_12_7, S_12_6, S_12_5, S_12_4} = {C_11_10, C_11_9, C_11_8, C_11_7, C_11_6, C_11_5, 1'b0} + {S_11_11, S_11_10, S_11_9, S_11_8, S_11_7, S_11_6, S_11_5};
  assign O = {S_12_11,S_12_10,S_12_9,S_12_8,S_12_7,S_12_6,S_12_5,S_12_4,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

