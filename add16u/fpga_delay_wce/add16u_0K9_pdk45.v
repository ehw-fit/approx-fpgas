/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.24 %
// MAE = 4252 
// WCE% = 9.06 %
// WCE = 11881 
// WCRE% = 300.00 %
// EP% = 99.99 %
// MRE% = 8.89 %
// MSE = 24918.624e3 
// FPGA_POWER = 0.32
// FPGA_DELAY = 6.4
// FPGA_LUT = 3.0


module add16u_0K9(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_100, sig_101, sig_103, sig_105, sig_106;
  assign O[13] = B[13];
  assign O[5] = A[4];
  assign O[8] = 1'b0;
  assign O[6] = A[14] ^ B[14];
  assign sig_100 = A[14] & B[14];
  assign sig_101 = O[6] & A[13];
  assign O[14] = O[6] ^ A[13];
  assign sig_103 = sig_100 | sig_101;
  assign O[2] = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = O[2] & sig_103;
  assign O[1] = O[2] ^ sig_103;
  assign O[16] = sig_105 | sig_106;
  assign O[0] = B[11];
  assign O[3] = B[13];
  assign O[4] = A[2];
  assign O[7] = A[11];
  assign O[9] = O[6];
  assign O[10] = A[8];
  assign O[11] = A[15];
  assign O[12] = B[12];
  assign O[15] = O[1];
endmodule

