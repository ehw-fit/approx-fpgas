/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 2.33 %
// MAE = 391168 
// WCE% = 9.33 %
// WCE = 1564673 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 22.85 %
// MSE = 21622.414e7 
// FPGA_POWER = 0.39
// FPGA_DELAY = 8.3
// FPGA_LUT = 19


module mul12u_2TL ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire C_10_10,C_10_7,C_10_8,C_10_9,C_11_10,C_11_6,C_11_7,C_11_8,C_11_9,C_9_10,C_9_8,C_9_9,S_10_10,S_10_11,S_10_7,S_10_8,S_10_9,S_11_10,S_11_11,S_11_6,S_11_7,S_11_8,S_11_9,S_12_10,S_12_11,S_12_5,S_12_6,S_12_7,S_12_8,S_12_9,S_8_10,S_8_11,S_8_9,S_9_10,S_9_11,S_9_8,S_9_9;

  assign S_8_9 = (A[8] & B[9]);
  assign S_8_10 = (A[8] & B[10]);
  assign S_8_11 = (A[8] & B[11]);
  PDKGENHAX1 U326777 (.A(S_8_9), .B((A[9] & B[8])), .YS(S_9_8), .YC(C_9_8));
  PDKGENHAX1 U326778 (.A(S_8_10), .B((A[9] & B[9])), .YS(S_9_9), .YC(C_9_9));
  PDKGENHAX1 U326779 (.A(S_8_11), .B((A[9] & B[10])), .YS(S_9_10), .YC(C_9_10));
  assign S_9_11 = (A[9] & B[11]);
  PDKGENHAX1 U326788 (.A(S_9_8), .B((A[10] & B[7])), .YS(S_10_7), .YC(C_10_7));
  PDKGENFAX1 U326789 (.A(S_9_9), .B(C_9_8), .C((A[10] & B[8])), .YS(S_10_8), .YC(C_10_8));
  PDKGENFAX1 U326790 (.A(S_9_10), .B(C_9_9), .C((A[10] & B[9])), .YS(S_10_9), .YC(C_10_9));
  PDKGENFAX1 U326791 (.A(S_9_11), .B(C_9_10), .C((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  assign S_10_11 = (A[10] & B[11]);
  PDKGENHAX1 U326799 (.A(S_10_7), .B((A[11] & B[6])), .YS(S_11_6), .YC(C_11_6));
  PDKGENFAX1 U326800 (.A(S_10_8), .B(C_10_7), .C((A[11] & B[7])), .YS(S_11_7), .YC(C_11_7));
  PDKGENFAX1 U326801 (.A(S_10_9), .B(C_10_8), .C((A[11] & B[8])), .YS(S_11_8), .YC(C_11_8));
  PDKGENFAX1 U326802 (.A(S_10_10), .B(C_10_9), .C((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  PDKGENFAX1 U326803 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  assign S_11_11 = (A[11] & B[11]);
  assign {S_12_11, S_12_10, S_12_9, S_12_8, S_12_7, S_12_6, S_12_5} = {C_11_10, C_11_9, C_11_8, C_11_7, C_11_6, 1'b0} + {S_11_11, S_11_10, S_11_9, S_11_8, S_11_7, S_11_6};
  assign O = {S_12_11,S_12_10,S_12_9,S_12_8,S_12_7,S_12_6,S_12_5,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

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
