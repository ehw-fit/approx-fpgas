/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.00 %
// MAE = 0 
// WCE% = 0.00 %
// WCE = 0 
// WCRE% = 0.00 %
// EP% = 0.00 %
// MRE% = 0.00 %
// MSE = 0 
// FPGA_POWER = 0.36
// FPGA_DELAY = 7.2
// FPGA_LUT = 11

module add8u_3LC(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_199, n_194, n_118, n_37, n_21, n_46, n_26, n_43, n_151, n_48;
  wire n_161, n_80, n_86, n_145, n_64, n_63, n_140, n_129, n_205, n_102;
  wire n_107, n_183, n_188, n_8, n_9, n_4, n_5, n_6, n_7, n_0;
  wire n_1, n_2, n_3, n_32, n_35, n_19, n_16, n_14, n_15, n_12;
  wire n_13, n_10, n_11, n_172, n_97, n_59, n_91, n_53, n_178, n_113;
  wire n_70, n_156, n_210, n_75, n_124, n_134;
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
  assign n_16 = n_0 ^ n_8;
  assign n_19 = n_11 | n_3;
  assign n_21 = n_0 & n_8;
  assign n_26 = n_1 ^ n_9;
  assign n_32 = n_1 & n_9;
  assign n_35 = n_6 | n_14;
  assign n_37 = n_26 & n_21;
  assign n_43 = n_26 ^ n_21;
  assign n_46 = n_10 | n_2;
  assign n_48 = n_32 | n_37;
  assign n_53 = n_2 ^ n_10;
  assign n_59 = n_2 & n_10;
  assign n_63 = n_14 & n_6;
  assign n_64 = n_46 & n_48;
  assign n_70 = n_53 ^ n_48;
  assign n_75 = n_59 | n_64;
  assign n_80 = n_3 ^ n_11;
  assign n_86 = n_3 & n_11;
  assign n_91 = n_19 & n_75;
  assign n_97 = n_80 ^ n_75;
  assign n_102 = n_86 | n_91;
  assign n_107 = n_4 ^ n_12;
  assign n_113 = n_4 & n_12;
  assign n_118 = n_107 & n_102;
  assign n_124 = n_107 ^ n_102;
  assign n_129 = n_113 | n_118;
  assign n_134 = n_5 ^ n_13;
  assign n_140 = n_5 & n_13;
  assign n_145 = n_134 & n_129;
  assign n_151 = n_134 ^ n_129;
  assign n_156 = n_140 | n_145;
  assign n_161 = n_6 ^ n_14;
  assign n_172 = n_35 & n_156;
  assign n_178 = n_161 ^ n_156;
  assign n_183 = n_63 | n_172;
  assign n_188 = n_7 ^ n_15;
  assign n_194 = n_7 & n_15;
  assign n_199 = n_188 & n_183;
  assign n_205 = n_188 ^ n_183;
  assign n_210 = n_194 | n_199;
  assign O[0] = n_16;
  assign O[1] = n_43;
  assign O[2] = n_70;
  assign O[3] = n_97;
  assign O[4] = n_124;
  assign O[5] = n_151;
  assign O[6] = n_178;
  assign O[7] = n_205;
  assign O[8] = n_210;
endmodule

