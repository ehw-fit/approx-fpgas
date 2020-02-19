/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.62 %
// MAE = 133 
// WCE% = 4.59 %
// WCE = 376 
// WCRE% = 300.00 %
// EP% = 99.80 %
// MRE% = 4.53 %
// MSE = 24416 
// FPGA_POWER = 0.31
// FPGA_DELAY = 6.6
// FPGA_LUT = 4.0


module add12u_0AH(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire sig_67, sig_68, sig_70, sig_72, sig_73, sig_75;
  wire sig_76, sig_77, sig_78;
  assign O[2] = 1'b1;
  assign O[6] = 1'b0;
  assign O[3] = A[9] ^ B[9];
  assign sig_67 = A[9] & B[9];
  assign sig_68 = O[3] & A[8];
  assign O[9] = O[3] ^ A[8];
  assign sig_70 = sig_67 | sig_68;
  assign O[0] = A[10] ^ B[10];
  assign sig_72 = A[10] & B[10];
  assign sig_73 = O[0] & sig_70;
  assign O[10] = O[0] ^ sig_70;
  assign sig_75 = sig_72 | sig_73;
  assign sig_76 = A[11] ^ B[11];
  assign sig_77 = A[11] & B[11];
  assign sig_78 = sig_76 & sig_75;
  assign O[11] = sig_76 ^ sig_75;
  assign O[12] = sig_77 | sig_78;
  assign O[1] = A[1];
  assign O[4] = A[10];
  assign O[5] = A[9];
  assign O[7] = B[7];
  assign O[8] = B[8];
endmodule

