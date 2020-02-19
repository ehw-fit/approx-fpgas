/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.63 %
// MAE = 134 
// WCE% = 4.26 %
// WCE = 349 
// WCRE% = 800.00 %
// EP% = 99.82 %
// MRE% = 4.51 %
// MSE = 24520 
// FPGA_POWER = 0.3
// FPGA_DELAY = 6.7
// FPGA_LUT = 3.0


module add12u_0FQ(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire sig_66, sig_67, sig_68, sig_70, sig_71, sig_72;
  wire sig_73, sig_75, sig_76, sig_77, sig_78;
  assign O[3] = 1'b1;
  assign O[6] = 1'b0;
  assign O[0] = 1'b1;
  assign O[4] = B[4];
  assign sig_66 = A[9] ^ B[9];
  assign sig_67 = A[9] & B[9];
  assign sig_68 = sig_66 & A[8];
  assign O[9] = sig_66 ^ A[8];
  assign sig_70 = sig_67 | sig_68;
  assign sig_71 = A[10] ^ B[10];
  assign sig_72 = A[10] & B[10];
  assign sig_73 = sig_71 & sig_70;
  assign O[10] = sig_71 ^ sig_70;
  assign sig_75 = sig_72 | sig_73;
  assign sig_76 = A[11] ^ B[11];
  assign sig_77 = A[11] & B[11];
  assign sig_78 = sig_76 & sig_75;
  assign O[1] = sig_76 ^ sig_75;
  assign O[12] = sig_77 | sig_78;
  assign O[2] = A[8];
  assign O[5] = B[3];
  assign O[7] = A[7];
  assign O[8] = B[8];
  assign O[11] = O[1];
endmodule

