/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.28 %
// MAE = 718848 
// WCE% = 17.14 %
// WCE = 2875393 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 34.95 %
// MSE = 76007.139e7 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.3
// FPGA_LUT = 17


module mul12u_2PD ( A, B, O );
  input [11:0] A;
  input [11:0] B;
  output [23:0] O;

  wire C_10_10,C_10_8,C_10_9,C_11_10,C_11_7,C_11_8,C_11_9,C_12_10,C_12_7,C_12_8,C_12_9,S_10_10,S_10_11,S_10_8,S_10_9,S_11_10,S_11_11,S_11_7,S_11_8,S_11_9,S_12_10,S_12_11,S_12_6,S_12_7,S_12_8,S_12_9,S_9_10,S_9_11,S_9_9;

  assign S_9_9 = (A[9] & B[9]);
  assign S_9_10 = (A[9] & B[10]);
  assign S_9_11 = (A[9] & B[11]);
  PDKGENHAX1 U65577 (.A(S_9_9), .B((A[10] & B[8])), .YS(S_10_8), .YC(C_10_8));
  PDKGENHAX1 U65578 (.A(S_9_10), .B((A[10] & B[9])), .YS(S_10_9), .YC(C_10_9));
  PDKGENHAX1 U65579 (.A(S_9_11), .B((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  assign S_10_11 = (A[10] & B[11]);
  PDKGENHAX1 U65588 (.A(S_10_8), .B((A[11] & B[7])), .YS(S_11_7), .YC(C_11_7));
  PDKGENFAX1 U65589 (.A(S_10_9), .B(C_10_8), .C((A[11] & B[8])), .YS(S_11_8), .YC(C_11_8));
  PDKGENFAX1 U65590 (.A(S_10_10), .B(C_10_9), .C((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  PDKGENFAX1 U65591 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  assign S_11_11 = (A[11] & B[11]);
  assign S_12_6 = S_11_7;
  PDKGENHAX1 U65600 (.A(S_11_8), .B(C_11_7), .YS(S_12_7), .YC(C_12_7));
  PDKGENFAX1 U65601 (.A(S_11_9), .B(C_12_7), .C(C_11_8), .YS(S_12_8), .YC(C_12_8));
  PDKGENFAX1 U65602 (.A(S_11_10), .B(C_12_8), .C(C_11_9), .YS(S_12_9), .YC(C_12_9));
  PDKGENFAX1 U65603 (.A(S_11_11), .B(C_12_9), .C(C_11_10), .YS(S_12_10), .YC(C_12_10));
  assign S_12_11 = C_12_10;
  assign O = {S_12_11,S_12_10,S_12_9,S_12_8,S_12_7,S_12_6,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

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
