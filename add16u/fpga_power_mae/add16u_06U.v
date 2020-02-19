/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.82 %
// MAE = 1074 
// WCE% = 2.09 %
// WCE = 2735 
// WCRE% = 125.00 %
// EP% = 99.98 %
// MRE% = 2.26 %
// MSE = 15742.73e2 
// FPGA_POWER = 0.34
// FPGA_DELAY = 6.8
// FPGA_LUT = 5.0


module add16u_06U(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_89, sig_90, sig_91, sig_93, sig_95, sig_96;
  wire sig_99, sig_100, sig_101, sig_103, sig_104, sig_105;
  wire sig_106;
  assign O[1] = 1'b1;
  assign sig_89 = A[12] ^ B[12];
  assign sig_90 = A[12] & B[12];
  assign sig_91 = sig_89 & A[11];
  assign O[12] = sig_89 ^ A[11];
  assign sig_93 = sig_90 | sig_91;
  assign O[5] = A[13] ^ B[13];
  assign sig_95 = A[13] & B[13];
  assign sig_96 = O[5] & sig_93;
  assign O[13] = O[5] ^ sig_93;
  assign O[2] = sig_95 | sig_96;
  assign sig_99 = A[14] ^ B[14];
  assign sig_100 = A[14] & B[14];
  assign sig_101 = sig_99 & O[2];
  assign O[0] = sig_99 ^ O[2];
  assign sig_103 = sig_100 | sig_101;
  assign sig_104 = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[16] = sig_105 | sig_106;
  assign O[3] = A[4];
  assign O[4] = B[3];
  assign O[6] = A[8];
  assign O[7] = O[2];
  assign O[8] = B[8];
  assign O[9] = B[12];
  assign O[10] = B[10];
  assign O[11] = B[11];
  assign O[14] = O[0];
endmodule

