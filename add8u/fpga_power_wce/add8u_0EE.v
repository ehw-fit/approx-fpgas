/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.098 %
// MAE = 0.5 
// WCE% = 0.20 %
// WCE = 1.0 
// WCRE% = 100.00 %
// EP% = 50.00 %
// MRE% = 0.27 %
// MSE = 0.5 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.8
// FPGA_LUT = 7.0

module add8u_0EE(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_196, n_190, n_155, n_22, n_47, n_41, n_98, n_25, n_127, n_28;
  wire n_200, n_162, n_85, n_149, n_89, n_63, n_60, n_193, n_203, n_206;
  wire n_209, n_101, n_120, n_104, n_171, n_158, n_8, n_9, n_184, n_4;
  wire n_5, n_6, n_7, n_0, n_1, n_2, n_3, n_31, n_117, n_35;
  wire n_111, n_38, n_165, n_14, n_15, n_12, n_13, n_10, n_11, n_114;
  wire n_95, n_92, n_79, n_174, n_44, n_50, n_56, n_57, n_54, n_212;
  wire n_136, n_177;
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
  assign n_22 = n_1 ^ n_9;
  assign n_25 = n_1 & n_9;
  assign n_28 = n_2 ^ n_10;
  assign n_31 = n_2 & n_10;
  assign n_35 = n_3 ^ n_11;
  assign n_38 = n_3 & n_11;
  assign n_41 = n_4 ^ n_12;
  assign n_44 = n_4 & n_12;
  assign n_47 = n_5 ^ n_13;
  assign n_50 = n_5 & n_13;
  assign n_54 = n_6 ^ n_14;
  assign n_56 = n_7 | n_15;
  assign n_57 = n_6 & n_14;
  assign n_60 = n_7 ^ n_15;
  assign n_63 = n_7 & n_15;
  assign n_79 = n_28 & n_25;
  assign n_85 = n_35 & n_31;
  assign n_89 = n_35 & n_79;
  assign n_92 = n_38 | n_85;
  assign n_95 = n_41 & n_92;
  assign n_98 = n_41 & n_89;
  assign n_101 = n_44 | n_95;
  assign n_104 = n_47 & n_44;
  assign n_111 = n_50 | n_104;
  assign n_114 = n_54 & n_50;
  assign n_117 = n_54 & n_47;
  assign n_120 = n_57 | n_114;
  assign n_127 = n_31 | n_79;
  assign n_136 = ~(n_92 | n_89);
  assign n_149 = n_47 & n_95;
  assign n_155 = n_111 | n_149;
  assign n_158 = n_117 & n_101;
  assign n_162 = n_117 & n_98;
  assign n_165 = n_120 | n_158;
  assign n_171 = n_101 | n_98;
  assign n_174 = n_47 & n_98;
  assign n_177 = ~(n_155 | n_174);
  assign n_184 = n_165 | n_162;
  assign n_190 = n_28 ^ n_25;
  assign n_193 = n_35 ^ n_127;
  assign n_196 = ~(n_41 ^ n_136);
  assign n_200 = n_47 ^ n_171;
  assign n_203 = ~(n_54 ^ n_177);
  assign n_206 = n_60 ^ n_184;
  assign n_209 = n_56 & n_184;
  assign n_212 = n_63 | n_209;
  assign O[0] = n_0;
  assign O[1] = n_22;
  assign O[2] = n_190;
  assign O[3] = n_193;
  assign O[4] = n_196;
  assign O[5] = n_200;
  assign O[6] = n_203;
  assign O[7] = n_206;
  assign O[8] = n_212;
endmodule

