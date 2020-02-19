/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.62 %
// MAE = 8.3 
// WCE% = 4.30 %
// WCE = 22 
// WCRE% = 300.00 %
// EP% = 96.92 %
// MRE% = 4.49 %
// MSE = 95 
// FPGA_POWER = 0.3
// FPGA_DELAY = 6.7
// FPGA_LUT = 3.0


module add8u_01U(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_38, sig_39, sig_40, sig_42, sig_43, sig_44;
  wire sig_45, sig_47, sig_48, sig_49, sig_50;
  assign sig_38 = A[5] ^ B[5];
  assign sig_39 = A[5] & B[5];
  assign sig_40 = sig_38 & A[4];
  assign O[5] = sig_38 ^ A[4];
  assign sig_42 = sig_39 | sig_40;
  assign sig_43 = A[6] ^ B[6];
  assign sig_44 = A[6] & B[6];
  assign sig_45 = sig_43 & sig_42;
  assign O[1] = sig_43 ^ sig_42;
  assign sig_47 = sig_44 | sig_45;
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & sig_47;
  assign O[7] = sig_48 ^ sig_47;
  assign O[0] = sig_49 | sig_50;
  assign O[2] = A[0];
  assign O[3] = A[3];
  assign O[4] = B[4];
  assign O[6] = O[1];
  assign O[8] = O[0];
endmodule

