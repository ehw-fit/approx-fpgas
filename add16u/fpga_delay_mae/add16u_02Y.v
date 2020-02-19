/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.20 %
// MAE = 261 
// WCE% = 0.46 %
// WCE = 607 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 0.55 %
// MSE = 83236 
// FPGA_POWER = 0.37
// FPGA_DELAY = 7.4
// FPGA_LUT = 8.0


module add16u_02Y(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_75, sig_78, sig_79, sig_80, sig_83, sig_84;
  wire sig_85, sig_86, sig_89, sig_90, sig_91, sig_93;
  wire sig_95, sig_96, sig_98, sig_99, sig_100, sig_101;
  wire sig_103, sig_104, sig_105, sig_106;
  assign O[9] = 1'b0;
  assign sig_75 = A[9] | B[9];
  assign sig_78 = sig_75;
  assign sig_79 = A[10] ^ B[10];
  assign sig_80 = A[10] & B[10];
  assign O[5] = sig_79 & sig_78;
  assign O[10] = sig_79 ^ sig_78;
  assign sig_83 = sig_80 | O[5];
  assign sig_84 = A[11] ^ B[11];
  assign sig_85 = A[11] & B[11];
  assign sig_86 = sig_84 & sig_83;
  assign O[11] = sig_84 ^ sig_83;
  assign O[3] = sig_85 | sig_86;
  assign sig_89 = A[12] ^ B[12];
  assign sig_90 = A[12] & B[12];
  assign sig_91 = sig_89 & O[3];
  assign O[12] = sig_89 ^ O[3];
  assign sig_93 = sig_90 | sig_91;
  assign O[0] = A[13] ^ B[13];
  assign sig_95 = A[13] & B[13];
  assign sig_96 = O[0] & sig_93;
  assign O[13] = O[0] ^ sig_93;
  assign sig_98 = sig_95 | sig_96;
  assign sig_99 = A[14] ^ B[14];
  assign sig_100 = A[14] & B[14];
  assign sig_101 = sig_99 & sig_98;
  assign O[2] = sig_99 ^ sig_98;
  assign sig_103 = sig_100 | sig_101;
  assign sig_104 = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[16] = sig_105 | sig_106;
  assign O[1] = B[13];
  assign O[4] = O[0];
  assign O[6] = B[5];
  assign O[7] = B[8];
  assign O[8] = A[8];
  assign O[14] = O[2];
endmodule

