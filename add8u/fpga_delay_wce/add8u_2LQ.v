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
// FPGA_POWER = 0.35
// FPGA_DELAY = 7.0
// FPGA_LUT = 11

module add8u_2LQ(A, B, O);
  input [7:0] A, B;
  output [8:0] O;
  wire n_43, n_188, n_196, n_210, n_191, n_155, n_21, n_46, n_40, n_25;
  wire n_24, n_117, n_48, n_199, n_81, n_163, n_84, n_87, n_68, n_89;
  wire n_65, n_144, n_142, n_202, n_128, n_207, n_103, n_100, n_106, n_161;
  wire n_180, n_8, n_9, n_185, n_4, n_5, n_6, n_7, n_0, n_1;
  wire n_2, n_3, n_125, n_95, n_35, n_37, n_17, n_14, n_15, n_12;
  wire n_13, n_10, n_11, n_98, n_59, n_92, n_79, n_174, n_53, n_76;
  wire n_51, n_70, n_57, n_54, n_73, n_213, n_139, n_177, n_152, n_131;
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
  assign n_17 = n_14 | n_6;
  assign n_21 = n_1 ^ n_9;
  assign n_24 = n_1 & n_9;
  assign n_25 = ~(n_4 ^ n_12);
  assign n_35 = n_2 ^ n_10;
  assign n_37 = n_2 & n_10;
  assign n_40 = n_35 & n_24;
  assign n_43 = n_35 ^ n_24;
  assign n_46 = n_37 | n_40;
  assign n_48 = n_3 ^ n_11;
  assign n_51 = n_3 & n_11;
  assign n_53 = n_13 | n_5;
  assign n_54 = n_48 & n_46;
  assign n_57 = n_48 ^ n_46;
  assign n_59 = n_51 | n_54;
  assign n_65 = n_4 & n_12;
  assign n_68 = n_5 ^ n_13;
  assign n_70 = n_5 & n_13;
  assign n_73 = n_53 & n_65;
  assign n_76 = n_68 ^ n_65;
  assign n_79 = n_70 | n_73;
  assign n_81 = n_6 ^ n_14;
  assign n_84 = n_6 & n_14;
  assign n_87 = n_17 & n_79;
  assign n_89 = n_81 ^ n_79;
  assign n_92 = n_84 | n_87;
  assign n_95 = n_7 ^ n_15;
  assign n_98 = n_7 & n_15;
  assign n_100 = n_95 & n_92;
  assign n_103 = n_95 ^ n_92;
  assign n_106 = ~(n_98 | n_100);
  assign n_117 = n_4 | n_12;
  assign n_125 = n_53 & n_117;
  assign n_128 = n_68 ^ n_117;
  assign n_131 = n_70 | n_125;
  assign n_139 = n_81 & n_131;
  assign n_142 = n_81 ^ n_131;
  assign n_144 = n_84 | n_139;
  assign n_152 = n_95 & n_139;
  assign n_155 = n_95 ^ n_144;
  assign n_161 = ~n_59;
  assign n_163 = n_25 ^ n_161;
  assign n_174 = n_76 & n_161;
  assign n_177 = n_128 & n_59;
  assign n_180 = n_174 | n_177;
  assign n_185 = n_89 & n_161;
  assign n_188 = n_142 & n_59;
  assign n_191 = n_185 | n_188;
  assign n_196 = n_103 & n_161;
  assign n_199 = n_155 & n_59;
  assign n_202 = n_196 | n_199;
  assign n_207 = ~n_106;
  assign n_210 = n_152 & n_59;
  assign n_213 = n_207 | n_210;
  assign O[0] = n_0;
  assign O[1] = n_21;
  assign O[2] = n_43;
  assign O[3] = n_57;
  assign O[4] = n_163;
  assign O[5] = n_180;
  assign O[6] = n_191;
  assign O[7] = n_202;
  assign O[8] = n_213;
endmodule

