/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.88 %
// MAE = 37715968 
// WCE% = 3.51 %
// WCE = 150863873 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 11.81 %
// MSE = 17642.903e11 
// FPGA_POWER = 0.56
// FPGA_DELAY = 10
// FPGA_LUT = 26


module mul16u_G8D ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_10_14,C_11_13,C_11_14,C_12_12,C_12_13,C_12_14,C_13_11,C_13_12,C_13_13,C_13_14,C_14_10,C_14_11,C_14_12,C_14_13,C_14_14,C_15_10,C_15_11,C_15_12,C_15_13,C_15_14,C_15_9,S_10_14,S_10_15,S_11_13,S_11_14,S_11_15,S_12_12,S_12_13,S_12_14,S_12_15,S_13_11,S_13_12,S_13_13,S_13_14,S_13_15,S_14_10,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_15_9,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_8,S_16_9,S_9_15;

  assign S_9_15 = (A[9] & B[15]);
  PDKGENHAX1 U394881 (.A(S_9_15), .B((A[10] & B[14])), .YS(S_10_14), .YC(C_10_14));
  assign S_10_15 = (A[10] & B[15]);
  PDKGENHAX1 U394896 (.A(S_10_14), .B((A[11] & B[13])), .YS(S_11_13), .YC(C_11_13));
  PDKGENFAX1 U394897 (.A(S_10_15), .B(C_10_14), .C((A[11] & B[14])), .YS(S_11_14), .YC(C_11_14));
  assign S_11_15 = (A[11] & B[15]);
  PDKGENHAX1 U394911 (.A(S_11_13), .B((A[12] & B[12])), .YS(S_12_12), .YC(C_12_12));
  PDKGENFAX1 U394912 (.A(S_11_14), .B(C_11_13), .C((A[12] & B[13])), .YS(S_12_13), .YC(C_12_13));
  PDKGENFAX1 U394913 (.A(S_11_15), .B(C_11_14), .C((A[12] & B[14])), .YS(S_12_14), .YC(C_12_14));
  assign S_12_15 = (A[12] & B[15]);
  PDKGENHAX1 U394926 (.A(S_12_12), .B((A[13] & B[11])), .YS(S_13_11), .YC(C_13_11));
  PDKGENFAX1 U394927 (.A(S_12_13), .B(C_12_12), .C((A[13] & B[12])), .YS(S_13_12), .YC(C_13_12));
  PDKGENFAX1 U394928 (.A(S_12_14), .B(C_12_13), .C((A[13] & B[13])), .YS(S_13_13), .YC(C_13_13));
  PDKGENFAX1 U394929 (.A(S_12_15), .B(C_12_14), .C((A[13] & B[14])), .YS(S_13_14), .YC(C_13_14));
  assign S_13_15 = (A[13] & B[15]);
  PDKGENHAX1 U394941 (.A(S_13_11), .B((A[14] & B[10])), .YS(S_14_10), .YC(C_14_10));
  PDKGENFAX1 U394942 (.A(S_13_12), .B(C_13_11), .C((A[14] & B[11])), .YS(S_14_11), .YC(C_14_11));
  PDKGENFAX1 U394943 (.A(S_13_13), .B(C_13_12), .C((A[14] & B[12])), .YS(S_14_12), .YC(C_14_12));
  PDKGENFAX1 U394944 (.A(S_13_14), .B(C_13_13), .C((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  PDKGENFAX1 U394945 (.A(S_13_15), .B(C_13_14), .C((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  PDKGENHAX1 U394956 (.A(S_14_10), .B((A[15] & B[9])), .YS(S_15_9), .YC(C_15_9));
  PDKGENFAX1 U394957 (.A(S_14_11), .B(C_14_10), .C((A[15] & B[10])), .YS(S_15_10), .YC(C_15_10));
  PDKGENFAX1 U394958 (.A(S_14_12), .B(C_14_11), .C((A[15] & B[11])), .YS(S_15_11), .YC(C_15_11));
  PDKGENFAX1 U394959 (.A(S_14_13), .B(C_14_12), .C((A[15] & B[12])), .YS(S_15_12), .YC(C_15_12));
  PDKGENFAX1 U394960 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  PDKGENFAX1 U394961 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign {S_16_15, S_16_14, S_16_13, S_16_12, S_16_11, S_16_10, S_16_9, S_16_8} = {C_15_14, C_15_13, C_15_12, C_15_11, C_15_10, C_15_9, 1'b0} + {S_15_15, S_15_14, S_15_13, S_15_12, S_15_11, S_15_10, S_15_9};
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,S_16_9,S_16_8,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

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
