/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.18 %
// MAE = 16 
// WCE% = 8.20 %
// WCE = 42 
// WCRE% = 100.00 %
// EP% = 98.83 %
// MRE% = 8.79 %
// MSE = 351 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.2
// FPGA_LUT = 2.0


module add8u_05J(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_43, sig_44, sig_45, sig_47, sig_48, sig_49;
  wire sig_50;
  assign sig_43 = A[6] ^ B[6];
  assign sig_44 = A[6] & B[6];
  assign sig_45 = sig_43 & B[5];
  assign O[6] = sig_43 ^ B[5];
  assign sig_47 = sig_44 | sig_45;
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & sig_47;
  assign O[7] = sig_48 ^ sig_47;
  assign O[8] = sig_49 | sig_50;
  assign O[0] = B[6];
  assign O[1] = A[0];
  assign O[2] = B[4];
  assign O[3] = A[7];
  assign O[4] = A[4];
  assign O[5] = A[5];
endmodule

