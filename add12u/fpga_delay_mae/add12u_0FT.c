/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.0024 %
// MAE = 0.2 
// WCE% = 0.049 %
// WCE = 4.0 
// WCRE% = 200.00 %
// EP% = 6.25 %
// MRE% = 0.0085 %
// MSE = 1.0 
// FPGA_POWER = 0.44
// FPGA_DELAY = 9.1
// FPGA_LUT = 16
#include <stdint.h>
#include <stdlib.h>

uint64_t add12u_0FT(uint64_t a, uint64_t b) {
  int wa[12];
  int wb[12];
  uint64_t y = 0;
  wa[0] = (a >> 0) & 0x01;
  wb[0] = (b >> 0) & 0x01;
  wa[1] = (a >> 1) & 0x01;
  wb[1] = (b >> 1) & 0x01;
  wa[2] = (a >> 2) & 0x01;
  wb[2] = (b >> 2) & 0x01;
  wa[3] = (a >> 3) & 0x01;
  wb[3] = (b >> 3) & 0x01;
  wa[4] = (a >> 4) & 0x01;
  wb[4] = (b >> 4) & 0x01;
  wa[5] = (a >> 5) & 0x01;
  wb[5] = (b >> 5) & 0x01;
  wa[6] = (a >> 6) & 0x01;
  wb[6] = (b >> 6) & 0x01;
  wa[7] = (a >> 7) & 0x01;
  wb[7] = (b >> 7) & 0x01;
  wa[8] = (a >> 8) & 0x01;
  wb[8] = (b >> 8) & 0x01;
  wa[9] = (a >> 9) & 0x01;
  wb[9] = (b >> 9) & 0x01;
  wa[10] = (a >> 10) & 0x01;
  wb[10] = (b >> 10) & 0x01;
  wa[11] = (a >> 11) & 0x01;
  wb[11] = (b >> 11) & 0x01;
  int sig_24 = wa[0] ^ wb[0];
  int sig_25 = wa[0] & wb[0];
  int sig_26 = wa[1] ^ wb[1];
  int sig_27 = wa[1] & wb[1];
  int sig_28 = wb[0] & wa[0];
  int sig_29 = sig_26 ^ sig_25;
  int sig_30 = sig_27 | sig_28;
  int sig_31 = wa[2] ^ wb[2];
  int sig_32 = wa[2] & wb[2];
  int sig_33 = sig_31 & sig_30;
  int sig_34 = sig_31 ^ sig_30;
  int sig_35 = sig_32 | sig_33;
  int sig_36 = wa[3] ^ wb[3];
  int sig_37 = wa[3] & wb[3];
  int sig_38 = sig_36 & sig_35;
  int sig_39 = sig_36 ^ sig_35;
  int sig_40 = sig_37 | sig_38;
  int sig_41 = wa[4] ^ wb[4];
  int sig_42 = wa[4] & wb[4];
  int sig_43 = sig_41 & sig_40;
  int sig_44 = sig_41 ^ sig_40;
  int sig_45 = sig_42 | sig_43;
  int sig_46 = wa[5] ^ wb[5];
  int sig_47 = wa[5] & wb[5];
  int sig_48 = sig_46 & sig_45;
  int sig_49 = sig_46 ^ sig_45;
  int sig_50 = sig_47 | sig_48;
  int sig_51 = wa[6] ^ wb[6];
  int sig_52 = wa[6] & wb[6];
  int sig_53 = sig_51 & sig_50;
  int sig_54 = sig_51 ^ sig_50;
  int sig_55 = sig_52 | sig_53;
  int sig_56 = wa[7] ^ wb[7];
  int sig_57 = wa[7] & wb[7];
  int sig_58 = sig_56 & sig_55;
  int sig_59 = sig_56 ^ sig_55;
  int sig_60 = sig_57 | sig_58;
  int sig_61 = wa[8] ^ wb[8];
  int sig_62 = wa[8] & wb[8];
  int sig_63 = sig_61 & sig_60;
  int sig_64 = sig_61 ^ sig_60;
  int sig_65 = sig_62 | sig_63;
  int sig_66 = wa[9] ^ wb[9];
  int sig_67 = wa[9] & wb[9];
  int sig_68 = sig_66 & sig_65;
  int sig_69 = sig_66 ^ sig_65;
  int sig_70 = sig_67 | sig_68;
  int sig_71 = wa[10] ^ wb[10];
  int sig_72 = wa[10] & wb[10];
  int sig_73 = sig_71 & sig_70;
  int sig_74 = sig_71 ^ sig_70;
  int sig_75 = sig_72 | sig_73;
  int sig_76 = wa[11] ^ wb[11];
  int sig_77 = wa[11] & wb[11];
  int sig_78 = sig_76 & sig_75;
  int sig_79 = sig_76 ^ sig_75;
  int sig_80 = sig_77 | sig_78;
  y |=  (sig_24 & 0x01) << 0; // default output
  y |=  (sig_29 & 0x01) << 1; // default output
  y |=  (sig_34 & 0x01) << 2; // default output
  y |=  (sig_39 & 0x01) << 3; // default output
  y |=  (sig_44 & 0x01) << 4; // default output
  y |=  (sig_49 & 0x01) << 5; // default output
  y |=  (sig_54 & 0x01) << 6; // default output
  y |=  (sig_59 & 0x01) << 7; // default output
  y |=  (sig_64 & 0x01) << 8; // default output
  y |=  (sig_69 & 0x01) << 9; // default output
  y |=  (sig_74 & 0x01) << 10; // default output
  y |=  (sig_79 & 0x01) << 11; // default output
  y |=  (sig_80 & 0x01) << 12; // default output
   return y;
}
