/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 6.48 %
// MAE = 33 
// WCE% = 17.77 %
// WCE = 91 
// WCRE% = 125.00 %
// EP% = 99.22 %
// MRE% = 16.90 %
// MSE = 1520 
// FPGA_POWER = 0.28
// FPGA_DELAY = 5.8
// FPGA_LUT = 2.0


module add8u_06S(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_49, sig_50;
  assign O[0] = 1'b1;
  assign O[2] = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = O[2] & A[6];
  assign O[7] = O[2] ^ A[6];
  assign O[8] = sig_49 | sig_50;
  assign O[1] = B[7];
  assign O[3] = A[2];
  assign O[4] = A[5];
  assign O[5] = B[4];
  assign O[6] = B[6];
endmodule

