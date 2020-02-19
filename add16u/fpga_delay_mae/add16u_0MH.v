/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 9.90 %
// MAE = 12976 
// WCE% = 34.18 %
// WCE = 44805 
// WCRE% = 6300.00 %
// EP% = 100.00 %
// MRE% = 22.35 %
// MSE = 25358.103e4 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.2
// FPGA_LUT = 2.0


module add16u_0MH(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_103, sig_104, sig_105;
  assign O[4] = B[11];
  assign O[12] = 1'b0;
  assign O[6] = 1'b1;
  assign O[1] = 1'b0;
  assign sig_103 = A[14];
  assign sig_104 = A[15] | B[15];
  assign sig_105 = A[15] & B[15];
  assign O[5] = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[16] = sig_105 | O[5];
  assign O[0] = B[2];
  assign O[2] = A[8];
  assign O[3] = A[7];
  assign O[7] = O[4];
  assign O[8] = B[11];
  assign O[9] = B[13];
  assign O[10] = A[8];
  assign O[11] = B[13];
  assign O[13] = B[10];
  assign O[14] = B[14];
endmodule

