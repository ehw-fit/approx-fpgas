/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 2.34 %
// MAE = 100630528 
// WCE% = 9.37 %
// WCE = 402522113 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 22.94 %
// MSE = 14285.02e12 
// FPGA_POWER = 0.39
// FPGA_DELAY = 8.6
// FPGA_LUT = 19


module mul16u_GAM ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_13_12,C_13_13,C_13_14,C_14_11,C_14_12,C_14_13,C_14_14,C_15_10,C_15_11,C_15_12,C_15_13,C_15_14,C_16_10,C_16_11,C_16_12,C_16_13,C_16_14,S_12_13,S_12_14,S_12_15,S_13_12,S_13_13,S_13_14,S_13_15,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_9;

  assign S_12_13 = (A[12] & B[13]);
  assign S_12_14 = (A[12] & B[14]);
  assign S_12_15 = (A[12] & B[15]);
  PDKGENHAX1 U241101 (.A(S_12_13), .B((A[13] & B[12])), .YS(S_13_12), .YC(C_13_12));
  PDKGENHAX1 U241102 (.A(S_12_14), .B((A[13] & B[13])), .YS(S_13_13), .YC(C_13_13));
  PDKGENHAX1 U241103 (.A(S_12_15), .B((A[13] & B[14])), .YS(S_13_14), .YC(C_13_14));
  assign S_13_15 = (A[13] & B[15]);
  PDKGENHAX1 U241116 (.A(S_13_12), .B((A[14] & B[11])), .YS(S_14_11), .YC(C_14_11));
  PDKGENFAX1 U241117 (.A(S_13_13), .B(C_13_12), .C((A[14] & B[12])), .YS(S_14_12), .YC(C_14_12));
  PDKGENFAX1 U241118 (.A(S_13_14), .B(C_13_13), .C((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  PDKGENFAX1 U241119 (.A(S_13_15), .B(C_13_14), .C((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  PDKGENHAX1 U241131 (.A(S_14_11), .B((A[15] & B[10])), .YS(S_15_10), .YC(C_15_10));
  PDKGENFAX1 U241132 (.A(S_14_12), .B(C_14_11), .C((A[15] & B[11])), .YS(S_15_11), .YC(C_15_11));
  PDKGENFAX1 U241133 (.A(S_14_13), .B(C_14_12), .C((A[15] & B[12])), .YS(S_15_12), .YC(C_15_12));
  PDKGENFAX1 U241134 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  PDKGENFAX1 U241135 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign S_16_9 = S_15_10;
  PDKGENHAX1 U241147 (.A(S_15_11), .B(C_15_10), .YS(S_16_10), .YC(C_16_10));
  PDKGENFAX1 U241148 (.A(S_15_12), .B(C_16_10), .C(C_15_11), .YS(S_16_11), .YC(C_16_11));
  PDKGENFAX1 U241149 (.A(S_15_13), .B(C_16_11), .C(C_15_12), .YS(S_16_12), .YC(C_16_12));
  PDKGENFAX1 U241150 (.A(S_15_14), .B(C_16_12), .C(C_15_13), .YS(S_16_13), .YC(C_16_13));
  PDKGENFAX1 U241151 (.A(S_15_15), .B(C_16_13), .C(C_15_14), .YS(S_16_14), .YC(C_16_14));
  assign S_16_15 = C_16_14;
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,S_16_9,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

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
