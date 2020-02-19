/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.82 %
// MAE = 4.2 
// WCE% = 2.15 %
// WCE = 11 
// WCRE% = 700.00 %
// EP% = 93.75 %
// MRE% = 2.28 %
// MSE = 24 
// FPGA_POWER = 0.31
// FPGA_DELAY = 6.6
// FPGA_LUT = 6.0


module add8u_01E(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_29, sig_32, sig_33, sig_34, sig_35, sig_37;
  wire sig_38, sig_39, sig_40, sig_42, sig_43, sig_44;
  wire sig_45, sig_47, sig_49, sig_50;
  assign O[3] = 1'b1;
  assign sig_29 = A[3] & B[3];
  assign sig_32 = sig_29;
  assign sig_33 = A[4] ^ B[4];
  assign sig_34 = A[4] & B[4];
  assign sig_35 = sig_33 & sig_32;
  assign O[4] = sig_33 ^ sig_32;
  assign sig_37 = sig_34 | sig_35;
  assign sig_38 = A[5] ^ B[5];
  assign sig_39 = A[5] & B[5];
  assign sig_40 = sig_38 & sig_37;
  assign O[5] = sig_38 ^ sig_37;
  assign sig_42 = sig_39 | sig_40;
  assign sig_43 = A[6] ^ B[6];
  assign sig_44 = A[6] & B[6];
  assign sig_45 = sig_43 & sig_42;
  assign O[6] = sig_43 ^ sig_42;
  assign sig_47 = sig_44 | sig_45;
  assign O[0] = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = O[0] & sig_47;
  assign O[7] = O[0] ^ sig_47;
  assign O[8] = sig_49 | sig_50;
  assign O[1] = A[5];
  assign O[2] = B[2];
endmodule

