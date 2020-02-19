/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 7.80 %
// MAE = 1308672 
// WCE% = 31.20 %
// WCE = 5234689 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 53.70 %
// MSE = 24064.241e8 
// FPGA_POWER = 0.27
// FPGA_DELAY = 6.4
// FPGA_LUT = 4.0


module mul12u_2E5 ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire C_10_10,C_11_10,C_11_9,S_10_10,S_10_11,S_11_10,S_11_11,S_11_9,S_12_10,S_12_11,S_12_8,S_12_9,S_9_11;

  assign S_9_11 = (A[9] & B[11]);
  HAX1 U331525 (.A(S_9_11), .B((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  assign S_10_11 = (A[10] & B[11]);
  HAX1 U331536 (.A(S_10_10), .B((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  FAX1 U331537 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  assign S_11_11 = (A[11] & B[11]);
  assign {S_12_11, S_12_10, S_12_9, S_12_8} = {C_11_10, C_11_9, 1'b0} + {S_11_11, S_11_10, S_11_9};
  assign O = {S_12_11,S_12_10,S_12_9,S_12_8,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

