/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.072 %
// MAE = 5.9 
// WCE% = 0.23 %
// WCE = 19 
// WCRE% = 1500.00 %
// EP% = 94.73 %
// MRE% = 0.20 %
// MSE = 53 
// FPGA_POWER = 0.38
// FPGA_DELAY = 7.2
// FPGA_LUT = 12

module add12u_3AF(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_318, n_319, n_790, n_791, n_418, n_45, n_44, n_47, n_250, n_41;
  wire n_40, n_43, n_42, n_149, n_148, n_464, n_465, n_678, n_700, n_30;
  wire n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_815;
  wire n_814, n_396, n_397, n_46, n_499, n_498, n_781, n_780, n_238, n_430;
  wire n_724, n_23, n_22, n_21, n_20, n_27, n_26, n_25, n_24, n_802;
  wire n_8, n_29, n_28, n_9, n_486, n_656, n_127, n_126, n_329, n_328;
  wire n_836, n_340, n_632, n_2, n_18, n_19, n_16, n_17, n_14, n_3;
  wire n_12, n_13, n_10, n_11, n_92, n_93, n_520, n_138, n_139, n_644;
  wire n_824, n_825, n_453, n_452, n_622, n_623, n_588, n_15, n_105, n_104;
  wire n_610, n_690, n_114, n_115, n_295, n_294, n_70, n_71, n_746, n_272;
  wire n_803, n_161, n_160, n_284, n_756, n_757, n_262, n_263, n_4, n_5;
  wire n_6, n_7, n_0, n_1, n_307, n_306, n_666, n_657, n_170, n_171;
  wire n_667, n_476, n_769, n_768;
  assign n_0 = A[0];
  assign n_1 = A[0];
  assign n_2 = A[1];
  assign n_3 = A[1];
  assign n_4 = A[2];
  assign n_5 = A[2];
  assign n_6 = A[3];
  assign n_7 = A[3];
  assign n_8 = A[4];
  assign n_9 = A[4];
  assign n_10 = A[5];
  assign n_11 = A[5];
  assign n_12 = A[6];
  assign n_13 = A[6];
  assign n_14 = A[7];
  assign n_15 = A[7];
  assign n_16 = A[8];
  assign n_17 = A[8];
  assign n_18 = A[9];
  assign n_19 = A[9];
  assign n_20 = A[10];
  assign n_21 = A[10];
  assign n_22 = A[11];
  assign n_23 = A[11];
  assign n_24 = B[0];
  assign n_25 = B[0];
  assign n_26 = B[1];
  assign n_27 = B[1];
  assign n_28 = B[2];
  assign n_29 = B[2];
  assign n_30 = B[3];
  assign n_31 = B[3];
  assign n_32 = B[4];
  assign n_33 = B[4];
  assign n_34 = B[5];
  assign n_35 = B[5];
  assign n_36 = B[6];
  assign n_37 = B[6];
  assign n_38 = B[7];
  assign n_39 = B[7];
  assign n_40 = B[8];
  assign n_41 = B[8];
  assign n_42 = B[9];
  assign n_43 = B[9];
  assign n_44 = B[10];
  assign n_45 = B[10];
  assign n_46 = B[11];
  assign n_47 = B[11];
  HAX1 tmp59(.YS(n_70), .YC(n_71), .A(n_28), .B(n_28));
  HAX1 tmp60(.YS(n_92), .YC(n_93), .A(n_8), .B(n_32));
  HAX1 tmp61(.YS(n_104), .YC(n_105), .A(n_10), .B(n_34));
  HAX1 tmp62(.YS(n_114), .YC(n_115), .A(n_12), .B(n_36));
  HAX1 tmp63(.YS(n_126), .YC(n_127), .A(n_14), .B(n_38));
  HAX1 tmp64(.YS(n_138), .YC(n_139), .A(n_16), .B(n_40));
  HAX1 tmp65(.YS(n_148), .YC(n_149), .A(n_18), .B(n_42));
  HAX1 tmp66(.YS(n_160), .YC(n_161), .A(n_20), .B(n_44));
  HAX1 tmp67(.YS(n_170), .YC(n_171), .A(n_22), .B(n_46));
  assign n_238 = n_8 | n_32;
  assign n_250 = n_114 & n_105;
  assign n_262 = n_114;
  assign n_263 = n_262;
  assign n_272 = n_115 | n_250;
  assign n_284 = n_138 & n_127;
  assign n_294 = n_138 & n_126;
  assign n_295 = n_294;
  assign n_306 = n_139 | n_284;
  assign n_307 = n_306;
  assign n_318 = n_160 & n_149;
  assign n_319 = n_318;
  assign n_328 = n_160;
  assign n_329 = n_328;
  assign n_340 = n_161 | n_319;
  assign n_396 = n_104 & n_238;
  assign n_397 = n_396;
  assign n_418 = n_105 | n_396;
  assign n_430 = n_263 & n_397;
  assign n_452 = n_272 | n_430;
  assign n_453 = n_452;
  assign n_464 = n_148 & n_307;
  assign n_465 = n_464;
  assign n_476 = n_148;
  assign n_486 = n_149 | n_464;
  assign n_498 = n_328 & n_465;
  assign n_499 = n_498;
  assign n_520 = n_340 | n_499;
  assign n_588 = n_418;
  assign n_610 = n_452;
  assign n_622 = n_126 & n_453;
  assign n_623 = n_622;
  assign n_632 = n_127 | n_623;
  assign n_644 = n_295 & n_453;
  assign n_656 = n_306 | n_644;
  assign n_657 = n_656;
  assign n_666 = n_476 & n_644;
  assign n_667 = n_666;
  assign n_678 = n_486 | n_666;
  assign n_690 = n_160 & n_667;
  assign n_700 = n_520 | n_690;
  assign n_724 = n_70;
  assign n_746 = ~n_92;
  HAX1 tmp111(.YS(n_756), .YC(n_757), .A(n_104), .B(n_238));
  HAX1 tmp112(.YS(n_768), .YC(n_769), .A(n_263), .B(n_588));
  HAX1 tmp113(.YS(n_780), .YC(n_781), .A(n_126), .B(n_610));
  HAX1 tmp114(.YS(n_790), .YC(n_791), .A(n_138), .B(n_632));
  HAX1 tmp115(.YS(n_802), .YC(n_803), .A(n_148), .B(n_657));
  HAX1 tmp116(.YS(n_814), .YC(n_815), .A(n_329), .B(n_678));
  HAX1 tmp117(.YS(n_824), .YC(n_825), .A(n_170), .B(n_700));
  assign n_836 = n_171 | n_825;
  assign O[0] = n_32;
  assign O[1] = n_32;
  assign O[2] = n_6;
  assign O[3] = n_724;
  assign O[4] = n_746;
  assign O[5] = n_756;
  assign O[6] = n_768;
  assign O[7] = n_780;
  assign O[8] = n_790;
  assign O[9] = n_802;
  assign O[10] = n_814;
  assign O[11] = n_824;
  assign O[12] = n_836;
endmodule

