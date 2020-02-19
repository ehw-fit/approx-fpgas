/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 5.86 %
// MAE = 251625472 
// WCE% = 23.43 %
// WCE = 1006501889 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 43.16 %
// MSE = 91115.598e12 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.8
// FPGA_LUT = 5.0


module mul16u_HDT ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_14_13,C_14_14,C_15_13,C_15_14,S_13_13,S_13_14,S_13_15,S_14_12,S_14_13,S_14_14,S_14_15,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15;

  assign S_13_13 = (A[13] & B[13]);
  assign S_13_14 = (A[13] & B[14]);
  assign S_13_15 = (A[13] & B[15]);
  assign S_14_12 = S_13_13;
  PDKGENHAX1 U25318 (.A(S_13_14), .B((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  PDKGENHAX1 U25319 (.A(S_13_15), .B((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  assign S_15_11 = S_14_12;
  assign S_15_12 = S_14_13;
  PDKGENFAX1 U25334 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  PDKGENFAX1 U25335 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign S_16_10 = S_15_11;
  assign S_16_11 = S_15_12;
  assign S_16_12 = S_15_13;
  assign {S_16_15, S_16_14, S_16_13} = {C_15_14, C_15_13} + {S_15_15, S_15_14};
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

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
