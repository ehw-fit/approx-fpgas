/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.62 %
// MAE = 8.3 
// WCE% = 4.49 %
// WCE = 23 
// WCRE% = 1900.00 %
// EP% = 96.88 %
// MRE% = 4.54 %
// MSE = 99 
// FPGA_POWER = 0.29
// FPGA_DELAY = 6.9
// FPGA_LUT = 4.0

module add8u_2RD(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_25, n_195, n_21, n_20, n_43, n_42, n_80, n_64, n_60, n_109;
  wire n_203, n_175, n_126, n_105, n_181, n_8, n_9, n_4, n_5, n_6;
  wire n_7, n_0, n_1, n_2, n_3, n_35, n_14, n_15, n_12, n_13;
  wire n_10, n_11, n_171, n_113, n_77, n_56, n_73, n_207, n_211, n_134;
  assign n_0 = A[0];
  assign n_1 = A[1];
  assign n_2 = A[2];
  assign n_3 = A[3];
  assign n_4 = A[4];
  assign n_5 = A[5];
  assign n_6 = A[6];
  assign n_7 = A[7];
  assign n_8 = B[0];
  assign n_9 = B[1];
  assign n_10 = B[2];
  assign n_11 = B[3];
  assign n_12 = B[4];
  assign n_13 = B[5];
  assign n_14 = B[6];
  assign n_15 = B[7];
  assign n_20 = ~(n_4 & n_3);
  assign n_21 = n_6 & n_14;
  assign n_25 = ~(n_13 ^ n_13);
  assign n_35 = ~(n_12 & n_11);
  assign n_42 = ~(n_35 | n_20);
  assign n_43 = n_13 | n_5;
  assign n_56 = n_5 ^ n_13;
  assign n_60 = n_5 & n_13;
  assign n_64 = n_6 ^ n_14;
  assign n_73 = n_7 ^ n_15;
  assign n_77 = n_7 & n_15;
  assign n_80 = n_7 | n_15;
  assign n_105 = n_64 & n_60;
  assign n_109 = n_64 & n_43;
  assign n_113 = n_21 | n_105;
  assign n_126 = n_109 & n_42;
  assign n_134 = n_113 | n_126;
  assign n_171 = n_43 & n_42;
  assign n_175 = n_60 | n_171;
  assign n_181 = n_64 ^ n_175;
  assign n_195 = n_56 ^ n_42;
  assign n_203 = n_73 ^ n_134;
  assign n_207 = n_80 & n_134;
  assign n_211 = n_77 | n_207;
  assign O[0] = n_12;
  assign O[1] = n_12;
  assign O[2] = n_25;
  assign O[3] = n_4;
  assign O[4] = n_25;
  assign O[5] = n_195;
  assign O[6] = n_181;
  assign O[7] = n_203;
  assign O[8] = n_211;
endmodule

