/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.34 %
// MAE = 22 
// WCE% = 14.26 %
// WCE = 73 
// WCRE% = 7300.00 %
// EP% = 98.61 %
// MRE% = 14.04 %
// MSE = 744 
// FPGA_POWER = 0.27
// FPGA_DELAY = 6.1
// FPGA_LUT = 2.0


module add8u_0BN(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_47, sig_48, sig_49, sig_50;
  assign O[4] = 1'b0;
  assign O[6] = !(B[6] ^ A[6]);
  assign O[3] = A[0];
  assign O[1] = A[0];
  assign O[2] = 1'b0;
  assign sig_47 = A[6] | B[6];
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & sig_47;
  assign O[7] = sig_48 ^ sig_47;
  assign O[8] = sig_49 | sig_50;
  assign O[0] = B[1];
  assign O[5] = O[2];
endmodule

