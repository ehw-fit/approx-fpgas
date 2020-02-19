/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 4.43 %
// MAE = 23 
// WCE% = 14.84 %
// WCE = 76 
// WCRE% = 4700.00 %
// EP% = 98.65 %
// MRE% = 12.37 %
// MSE = 775 
// FPGA_POWER = 0.28
// FPGA_DELAY = 6.0
// FPGA_LUT = 3.0


module add8u_0AX(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_44, sig_47, sig_49, sig_50;
  assign O[2] = 1'b0;
  assign O[5] = 1'b1;
  assign O[4] = 1'b1;
  assign O[6] = B[6] ^ A[6];
  assign sig_44 = A[6] & B[6];
  assign sig_47 = sig_44;
  assign O[3] = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = O[3] & sig_47;
  assign O[7] = O[3] ^ sig_47;
  assign O[0] = sig_49 | sig_50;
  assign O[1] = A[4];
  assign O[8] = O[0];
endmodule

