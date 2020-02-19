/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.69 %
// MAE = 6144 
// WCE% = 9.49 %
// WCE = 12444 
// WCRE% = 9500.00 %
// EP% = 100.00 %
// MRE% = 12.64 %
// MSE = 43382.861e3 
// FPGA_POWER = 0.3
// FPGA_DELAY = 6.4
// FPGA_LUT = 2.0


module add16u_0KC(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_99, sig_101, sig_103, sig_104, sig_105, sig_106;
  assign O[13] = A[13];
  assign O[0] = 1'b0;
  assign O[5] = 1'b1;
  assign O[8] = A[10];
  assign O[6] = 1'b1;
  assign O[10] = A[12];
  assign O[9] = B[13];
  assign O[7] = 1'b0;
  assign sig_99 = A[14] ^ B[14];
  assign O[3] = A[14] & B[14];
  assign sig_101 = sig_99 & B[12];
  assign O[14] = sig_99 ^ B[12];
  assign sig_103 = O[3] | sig_101;
  assign sig_104 = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[1] = sig_105 | sig_106;
  assign O[2] = B[1];
  assign O[4] = B[1];
  assign O[11] = B[13];
  assign O[12] = B[13];
  assign O[16] = O[1];
endmodule

