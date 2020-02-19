/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.40 %
// MAE = 33 
// WCE% = 0.96 %
// WCE = 79 
// WCRE% = 100.00 %
// EP% = 99.28 %
// MRE% = 1.11 %
// MSE = 1448 
// FPGA_POWER = 0.34
// FPGA_DELAY = 8.0
// FPGA_LUT = 5.0


module add12u_0GX(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire sig_56, sig_57, sig_58, sig_60, sig_61, sig_62;
  wire sig_63, sig_66, sig_67, sig_68, sig_70, sig_71;
  wire sig_72, sig_75, sig_76, sig_77, sig_78;
  assign O[4] = A[4];
  assign sig_56 = A[7] ^ B[7];
  assign sig_57 = A[7] & B[7];
  assign sig_58 = sig_56 & A[6];
  assign O[7] = sig_56 ^ A[6];
  assign sig_60 = sig_57 | sig_58;
  assign sig_61 = A[8] ^ B[8];
  assign sig_62 = A[8] & B[8];
  assign sig_63 = sig_61 & sig_60;
  assign O[8] = sig_61 ^ sig_60;
  assign O[2] = sig_62 | sig_63;
  assign sig_66 = A[9] ^ B[9];
  assign sig_67 = A[9] & B[9];
  assign sig_68 = sig_66 & O[2];
  assign O[9] = sig_66 ^ O[2];
  assign sig_70 = sig_67 | sig_68;
  assign sig_71 = A[10] ^ B[10];
  assign sig_72 = A[10] & B[10];
  assign O[0] = sig_71 & sig_70;
  assign O[10] = sig_71 ^ sig_70;
  assign sig_75 = sig_72 | O[0];
  assign sig_76 = A[11] ^ B[11];
  assign sig_77 = A[11] & B[11];
  assign sig_78 = sig_76 & sig_75;
  assign O[11] = sig_76 ^ sig_75;
  assign O[12] = sig_77 | sig_78;
  assign O[1] = O[0];
  assign O[3] = A[11];
  assign O[5] = A[5];
  assign O[6] = B[6];
endmodule

