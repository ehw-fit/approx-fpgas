/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 3.25 %
// MAE = 266 
// WCE% = 9.11 %
// WCE = 746 
// WCRE% = 100.00 %
// EP% = 99.91 %
// MRE% = 9.07 %
// MSE = 97656 
// FPGA_POWER = 0.3
// FPGA_DELAY = 6.3
// FPGA_LUT = 2.0


module add12u_00J(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire sig_72, sig_73, sig_75, sig_76, sig_77, sig_78;
  assign O[5] = 1'b0;
  assign O[0] = A[10] ^ B[10];
  assign sig_72 = A[10] & B[10];
  assign sig_73 = O[0] & B[9];
  assign O[10] = O[0] ^ B[9];
  assign sig_75 = sig_72 | sig_73;
  assign sig_76 = A[11] ^ B[11];
  assign sig_77 = A[11] & B[11];
  assign sig_78 = sig_76 & sig_75;
  assign O[7] = sig_76 ^ sig_75;
  assign O[12] = sig_77 | sig_78;
  assign O[1] = A[9];
  assign O[2] = A[8];
  assign O[3] = A[9];
  assign O[4] = A[4];
  assign O[6] = B[10];
  assign O[8] = B[8];
  assign O[9] = A[9];
  assign O[11] = O[7];
endmodule

