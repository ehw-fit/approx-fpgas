/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.039 %
// MAE = 0.2 
// WCE% = 0.20 %
// WCE = 1.0 
// WCRE% = 50.00 %
// EP% = 25.00 %
// MRE% = 0.14 %
// MSE = 0.2 
// FPGA_POWER = 0.34
// FPGA_DELAY = 7.4
// FPGA_LUT = 12


module add8u_5K5(A, B, O);
  input [7:0] A;
  input [7:0] B;
  output [8:0] O;
  wire [2031:0] N;
  assign N[0] = A[0];
  assign N[1] = A[0];
  assign N[2] = A[1];
  assign N[3] = A[1];
  assign N[4] = A[2];
  assign N[5] = A[2];
  assign N[6] = A[3];
  assign N[7] = A[3];
  assign N[8] = A[4];
  assign N[9] = A[4];
  assign N[10] = A[5];
  assign N[11] = A[5];
  assign N[12] = A[6];
  assign N[13] = A[6];
  assign N[14] = A[7];
  assign N[15] = A[7];
  assign N[16] = B[0];
  assign N[17] = B[0];
  assign N[18] = B[1];
  assign N[19] = B[1];
  assign N[20] = B[2];
  assign N[21] = B[2];
  assign N[22] = B[3];
  assign N[23] = B[3];
  assign N[24] = B[4];
  assign N[25] = B[4];
  assign N[26] = B[5];
  assign N[27] = B[5];
  assign N[28] = B[6];
  assign N[29] = B[6];
  assign N[30] = B[7];
  assign N[31] = B[7];
  PDKGENOR2X1 n32(.A(N[0]), .B(N[16]), .Y(N[32]));
  PDKGENHAX1 n40(.A(N[2]), .B(N[18]), .YS(N[40]), .YC(N[41]));
  PDKGENHAX1 n50(.A(N[4]), .B(N[20]), .YS(N[50]), .YC(N[51]));
  PDKGENHAX1 n58(.A(N[6]), .B(N[22]), .YS(N[58]), .YC(N[59]));
  PDKGENHAX1 n68(.A(N[8]), .B(N[24]), .YS(N[68]), .YC(N[69]));
  PDKGENHAX1 n78(.A(N[10]), .B(N[26]), .YS(N[78]), .YC(N[79]));
  PDKGENHAX1 n86(.A(N[12]), .B(N[28]), .YS(N[86]), .YC(N[87]));
  PDKGENOR2X1 n88(.A(N[24]), .B(N[8]), .Y(N[88]));
  PDKGENHAX1 n96(.A(N[14]), .B(N[30]), .YS(N[96]), .YC(N[97]));
  PDKGENAND2X1 n106(.A(N[50]), .B(N[41]), .Y(N[106]));
  PDKGENAND2X1 n110(.A(N[10]), .B(N[26]), .Y(N[110]));
  assign N[111] = N[110];
  PDKGENOR2X1 n124(.A(N[51]), .B(N[106]), .Y(N[124]));
  assign N[125] = N[124];
  PDKGENAND2X1 n134(.A(N[88]), .B(N[59]), .Y(N[134]));
  PDKGENAND2X1 n142(.A(N[68]), .B(N[58]), .Y(N[142]));
  assign N[143] = N[142];
  PDKGENOR2X1 n152(.A(N[69]), .B(N[134]), .Y(N[152]));
  PDKGENAND2X1 n162(.A(N[86]), .B(N[110]), .Y(N[162]));
  PDKGENAND2X1 n170(.A(N[86]), .B(N[78]), .Y(N[170]));
  PDKGENOR2X1 n180(.A(N[87]), .B(N[162]), .Y(N[180]));
  PDKGENBUFX2 n198(.A(N[125]), .Y(N[198]));
  assign N[199] = N[198];
  PDKGENAND2X1 n208(.A(N[143]), .B(N[125]), .Y(N[208]));
  PDKGENOR2X1 n226(.A(N[152]), .B(N[208]), .Y(N[226]));
  assign N[227] = N[226];
  PDKGENAND2X1 n236(.A(N[170]), .B(N[152]), .Y(N[236]));
  PDKGENAND2X1 n244(.A(N[170]), .B(N[208]), .Y(N[244]));
  assign N[245] = N[244];
  PDKGENOR2X1 n254(.A(N[180]), .B(N[236]), .Y(N[254]));
  PDKGENOR2X1 n292(.A(N[254]), .B(N[245]), .Y(N[292]));
  assign N[293] = N[292];
  PDKGENAND2X1 n320(.A(N[58]), .B(N[199]), .Y(N[320]));
  PDKGENOR2X1 n328(.A(N[59]), .B(N[320]), .Y(N[328]));
  assign N[329] = N[328];
  PDKGENAND2X1 n338(.A(N[78]), .B(N[227]), .Y(N[338]));
  PDKGENOR2X1 n348(.A(N[111]), .B(N[338]), .Y(N[348]));
  PDKGENHAX1 n366(.A(N[50]), .B(N[41]), .YS(N[366]), .YC(N[367]));
  PDKGENHAX1 n376(.A(N[58]), .B(N[198]), .YS(N[376]), .YC(N[377]));
  PDKGENHAX1 n384(.A(N[68]), .B(N[329]), .YS(N[384]), .YC(N[385]));
  PDKGENHAX1 n394(.A(N[78]), .B(N[226]), .YS(N[394]), .YC(N[395]));
  PDKGENHAX1 n404(.A(N[86]), .B(N[348]), .YS(N[404]), .YC(N[405]));
  PDKGENHAX1 n412(.A(N[96]), .B(N[293]), .YS(N[412]), .YC(N[413]));
  PDKGENOR2X1 n422(.A(N[97]), .B(N[413]), .Y(N[422]));
  assign O[0] = N[32];
  assign O[1] = N[40];
  assign O[2] = N[366];
  assign O[3] = N[376];
  assign O[4] = N[384];
  assign O[5] = N[394];
  assign O[6] = N[404];
  assign O[7] = N[412];
  assign O[8] = N[422];
endmodule


/* mod */
module PDKGENBUFX2(input A, output Y );
     assign Y = A;
endmodule
/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule
/* mod */
module PDKGENAND2X1(input A, input B, output Y );
     assign Y = A & B;
endmodule
/* mod */
module PDKGENOR2X1(input A, input B, output Y );
     assign Y = A | B;
endmodule
