/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 7.83 %
// MAE = 40 
// WCE% = 16.99 %
// WCE = 87 
// WCRE% = 700.00 %
// EP% = 99.76 %
// MRE% = 20.38 %
// MSE = 2008 
// FPGA_POWER = 0.27
// FPGA_DELAY = 5.9
// FPGA_LUT = 1.0


module add8u_06R(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_48, sig_49, sig_50;
  assign O[3] = B[0];
  assign O[0] = 1'b0;
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & A[6];
  assign O[7] = sig_48 ^ A[6];
  assign O[8] = sig_49 | sig_50;
  assign O[1] = B[2];
  assign O[2] = B[4];
  assign O[4] = A[6];
  assign O[5] = A[5];
  assign O[6] = B[6];
endmodule

