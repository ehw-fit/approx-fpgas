/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.87 %
// MAE = 2456 
// WCE% = 6.19 %
// WCE = 8114 
// WCRE% = 3900.00 %
// EP% = 99.99 %
// MRE% = 5.21 %
// MSE = 89278.596e2 
// FPGA_POWER = 0.32
// FPGA_DELAY = 6.8
// FPGA_LUT = 3.0


module add16u_0LT(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_94, sig_95, sig_96, sig_98, sig_99, sig_100;
  wire sig_103, sig_104, sig_105, sig_106;
  assign O[1] = A[9];
  assign O[11] = 1'b0;
  assign O[9] = 1'b0;
  assign O[5] = 1'b1;
  assign sig_94 = A[13] ^ B[13];
  assign sig_95 = A[13] & B[13];
  assign sig_96 = sig_94 & A[12];
  assign O[13] = sig_94 ^ A[12];
  assign sig_98 = sig_95 | sig_96;
  assign sig_99 = A[14] ^ B[14];
  assign sig_100 = A[14] & B[14];
  assign O[6] = sig_99 & sig_98;
  assign O[14] = sig_99 ^ sig_98;
  assign sig_103 = sig_100 | O[6];
  assign sig_104 = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[2] = sig_105 | sig_106;
  assign O[0] = B[4];
  assign O[3] = B[0];
  assign O[4] = B[2];
  assign O[7] = A[2];
  assign O[8] = B[14];
  assign O[10] = B[5];
  assign O[12] = B[12];
  assign O[16] = O[2];
endmodule

