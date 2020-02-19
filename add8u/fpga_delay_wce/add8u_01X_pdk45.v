/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.93 %
// MAE = 9.9 
// WCE% = 6.45 %
// WCE = 33 
// WCRE% = 3100.00 %
// EP% = 97.02 %
// MRE% = 5.96 %
// MSE = 148 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.0
// FPGA_LUT = 3.0


module add8u_01X(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_42, sig_43, sig_44, sig_45, sig_47, sig_48;
  wire sig_49, sig_50;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;
  assign O[5] = !(B[5] ^ A[5]);
  assign sig_42 = A[5] | B[5];
  assign sig_43 = A[6] ^ B[6];
  assign sig_44 = A[6] & B[6];
  assign sig_45 = sig_43 & sig_42;
  assign O[6] = sig_43 ^ sig_42;
  assign sig_47 = sig_44 | sig_45;
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & sig_47;
  assign O[7] = sig_48 ^ sig_47;
  assign O[8] = sig_49 | sig_50;
  assign O[0] = A[5];
  assign O[1] = B[4];
  assign O[2] = A[4];
endmodule

