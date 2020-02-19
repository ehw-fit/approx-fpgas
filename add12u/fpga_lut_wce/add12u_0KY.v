/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.78 %
// MAE = 64 
// WCE% = 1.56 %
// WCE = 128 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 2.15 %
// MSE = 4968 
// FPGA_POWER = 0.32
// FPGA_DELAY = 6.7
// FPGA_LUT = 4.0

module add12u_0KY(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire n_415, n_414, n_36, n_42, n_37, n_314, n_315, n_23, n_22, n_21;
  wire n_20, n_27, n_26, n_25, n_24, n_29, n_28, n_348, n_381, n_380;
  wire n_349, n_39, n_38, n_8, n_9, n_4, n_5, n_6, n_7, n_0;
  wire n_1, n_2, n_3, n_30, n_31, n_32, n_33, n_34, n_35, n_18;
  wire n_19, n_16, n_17, n_14, n_15, n_12, n_13, n_10, n_11, n_45;
  wire n_44, n_43, n_47, n_46, n_41, n_40;
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
  PDKGENFAX1 tmp59(.YS(n_314), .YC(n_315), .A(n_16), .B(n_40), .C(n_14));
  PDKGENFAX1 tmp60(.YS(n_348), .YC(n_349), .A(n_18), .B(n_42), .C(n_315));
  PDKGENFAX1 tmp61(.YS(n_380), .YC(n_381), .A(n_20), .B(n_44), .C(n_349));
  PDKGENFAX1 tmp62(.YS(n_414), .YC(n_415), .A(n_22), .B(n_46), .C(n_381));
  assign O[0] = n_36;
  assign O[1] = n_2;
  assign O[2] = n_36;
  assign O[3] = n_6;
  assign O[4] = n_36;
  assign O[5] = n_34;
  assign O[6] = n_12;
  assign O[7] = n_38;
  assign O[8] = n_314;
  assign O[9] = n_348;
  assign O[10] = n_380;
  assign O[11] = n_414;
  assign O[12] = n_415;
endmodule

/* mod */
module PDKGENFAX1( input A, input B, input C, output YS, output YC );
    assign YS = (A ^ B) ^ C;
    assign YC = (A & B) | (B & C) | (A & C);
endmodule
