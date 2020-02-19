/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.55 %
// MAE = 2.8 
// WCE% = 1.76 %
// WCE = 9.0 
// WCRE% = 700.00 %
// EP% = 89.26 %
// MRE% = 1.59 %
// MSE = 12 
// FPGA_POWER = 0.32
// FPGA_DELAY = 7.5
// FPGA_LUT = 5.0


module add8u_001(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire sig_28, sig_29, sig_30, sig_32, sig_33, sig_34;
  wire sig_37, sig_38, sig_39, sig_40, sig_42, sig_43;
  wire sig_44, sig_45, sig_47, sig_48, sig_49, sig_50;
  assign O[2] = 1'b0;
  assign sig_28 = A[3] ^ B[3];
  assign sig_29 = A[3] & B[3];
  assign sig_30 = sig_28 & B[2];
  assign O[3] = !(sig_28 & B[2]);
  assign sig_32 = sig_29 | sig_30;
  assign sig_33 = A[4] ^ B[4];
  assign sig_34 = A[4] & B[4];
  assign O[0] = sig_33 & sig_32;
  assign O[4] = sig_33 ^ sig_32;
  assign sig_37 = sig_34 | O[0];
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
  assign sig_48 = A[7] ^ B[7];
  assign sig_49 = A[7] & B[7];
  assign sig_50 = sig_48 & sig_47;
  assign O[7] = sig_48 ^ sig_47;
  assign O[8] = sig_49 | sig_50;
  assign O[1] = A[2];
endmodule

