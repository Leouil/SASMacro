%macro ffsic(dsetin=,dsetout=&dsetin,sic=dnum,ind=ffind);
 
%put Running...;
data &dsetout;
                set &dsetin;
*1 Agric  Agriculture;
if             0100 le  &sic  le 0199 then &ind = 1;
if             0200 le  &sic  le 0299 then &ind = 1;
if             0700 le  &sic  le 0799 then &ind = 1;
if             0910 le  &sic  le 0919 then &ind = 1;
if             2048 le  &sic  le 2048 then &ind = 1;
*2 Food   Food Products;
if             2000 le  &sic  le 2009 then &ind = 2;
if             2010 le  &sic  le 2019 then &ind = 2;
if             2020 le  &sic  le 2029 then &ind = 2;
if             2030 le  &sic  le 2039 then &ind = 2;
if             2040 le  &sic  le 2046 then &ind = 2;
if             2050 le  &sic  le 2059 then &ind = 2;
if             2060 le  &sic  le 2063 then &ind = 2;
if             2070 le  &sic  le 2079 then &ind = 2;
if             2090 le  &sic  le 2092 then &ind = 2;
if             2095 le  &sic  le 2095 then &ind = 2;
if             2098 le  &sic  le 2099 then &ind = 2;
*3 Soda   Candy & Soda;
if             2064 le  &sic  le 2068 then &ind = 3;
if             2086 le  &sic  le 2086 then &ind = 3;
if             2087 le  &sic  le 2087 then &ind = 3;
if             2096 le  &sic  le 2096 then &ind = 3;
if             2097 le  &sic  le 2097 then &ind = 3;
*4 Beer   Beer & Liquor;
if             2080 le  &sic  le 2080 then &ind = 4;
if             2082 le  &sic  le 2082 then &ind = 4;
if             2083 le  &sic  le 2083 then &ind = 4;
if             2084 le  &sic  le 2084 then &ind = 4;
if             2085 le  &sic  le 2085 then &ind = 4;
*5 Smoke  Tobacco Products;
if             2100 le  &sic  le 2199 then &ind = 5;
*6 Toys   Recreation;
if             0920 le  &sic  le 0999 then &ind = 6;
if             0900 le  &sic  le 0900 then &ind = 6;
if             3650 le  &sic  le 3651 then &ind = 6;
if             3652 le  &sic  le 3652 then &ind = 6;
if             3732 le  &sic  le 3732 then &ind = 6;
if             3930 le  &sic  le 3931 then &ind = 6;
if             3940 le  &sic  le 3949 then &ind = 6;
*7 Fun    Entertainment;
if             7800 le  &sic  le 7829 then &ind = 7;
if                                 7830 le  &sic  le 7833 then &ind = 7;
if                             7840 le  &sic  le 7841 then &ind = 7;
if                 7900 le  &sic  le 7900 then &ind = 7;
if             7910 le  &sic  le 7911 then &ind = 7;
if             7920 le  &sic  le 7929 then &ind = 7;
if             7930 le  &sic  le 7933 then &ind = 7;
if             7940 le  &sic  le 7949 then &ind = 7;
if             7980 le  &sic  le 7980 then &ind = 7;
if          7990 le  &sic  le 7999 then &ind = 7;
*8 Books  Printing and Publishin;
if          2700 le  &sic  le 2709 then &ind = 8;
if          2710 le  &sic  le 2719 then &ind = 8;
if          2720 le  &sic  le 2729 then &ind = 8;
if          2730 le  &sic  le 2739 then &ind = 8;
if          2740 le  &sic  le 2749 then &ind = 8;
if          2770 le  &sic  le 2771 then &ind = 8;
if          2780 le  &sic  le 2789 then &ind = 8;
if          2790 le  &sic  le 2799 then &ind = 8;
*9 Hshld  Consumer Goods;
if          2047 le  &sic  le 2047 then &ind = 9;
if          2391 le  &sic  le 2392 then &ind = 9;
if          2510 le  &sic  le 2519 then &ind = 9;
if          2590 le  &sic  le 2599 then &ind = 9;
if          2840 le  &sic  le 2843 then &ind = 9;
if          2844 le  &sic  le 2844 then &ind = 9;
if          3160 le  &sic  le 3161 then &ind = 9;
if          3170 le  &sic  le 3171 then &ind = 9;
if          3172 le  &sic  le 3172 then &ind = 9;
if          3190 le  &sic  le 3199 then &ind = 9;
if          3229 le  &sic  le 3229 then &ind = 9;
if          3260 le  &sic  le 3260 then &ind = 9;
if          3262 le  &sic  le 3263 then &ind = 9;
if          3269 le  &sic  le 3269 then &ind = 9;
if          3230 le  &sic  le 3231 then &ind = 9;
if          3630 le  &sic  le 3639 then &ind = 9;
if          3750 le  &sic  le 3751 then &ind = 9;
if          3800 le  &sic  le 3800 then &ind = 9;
if          3860 le  &sic  le 3861 then &ind = 9;
if          3870 le  &sic  le 3873 then &ind = 9;
if          3910 le  &sic  le 3911 then &ind = 9;
if          3914 le  &sic  le 3914 then &ind = 9;
if          3915 le  &sic  le 3915 then &ind = 9;
if          3960 le  &sic  le 3962 then &ind = 9;
if          3991 le  &sic  le 3991 then &ind = 9;
if          3995 le  &sic  le 3995 then &ind = 9;
*10 Clths  Apparel;
if          2300 le  &sic  le 2390 then &ind = 10;
if          3020 le  &sic  le 3021 then &ind = 10;
if          3100 le  &sic  le 3111 then &ind = 10;
if          3130 le  &sic  le 3131 then &ind = 10;
if          3140 le  &sic  le 3149 then &ind = 10;
if          3150 le  &sic  le 3151 then &ind = 10;
if          3963 le  &sic  le 3965 then &ind = 10;
*11 Hlth   Healthcare;
if          8000 le  &sic  le 8099 then &ind = 11;
*12 MedEq  Medical Equipment;
if          3693 le  &sic  le 3693 then &ind = 12;
if          3840 le  &sic  le 3849 then &ind = 12;
if          3850 le  &sic  le 3851 then &ind = 12;
*13 Drugs  Pharmaceutical Product;
if          2830 le  &sic  le 2830 then &ind = 13;
if          2831 le  &sic  le 2831 then &ind = 13;
if          2833 le  &sic  le 2833 then &ind = 13;
if          2834 le  &sic  le 2834 then &ind = 13;
if          2835 le  &sic  le 2835 then &ind = 13;
if          2836 le  &sic  le 2836 then &ind = 13;
*14 Chems  Chemicals;
if          2800 le  &sic  le 2809 then &ind = 14;
if          2810 le  &sic  le 2819 then &ind = 14;
if          2820 le  &sic  le 2829 then &ind = 14;
if          2850 le  &sic  le 2859 then &ind = 14;
if          2860 le  &sic  le 2869 then &ind = 14;
if          2870 le  &sic  le 2879 then &ind = 14;
if          2890 le  &sic  le 2899 then &ind = 14;
*15 Rubbr  Rubber and Plastic Pro;
if          3031 le  &sic  le 3031 then &ind = 15;
if          3041 le  &sic  le 3041 then &ind = 15;
if          3050 le  &sic  le 3053 then &ind = 15;
if          3060 le  &sic  le 3069 then &ind = 15;
if          3070 le  &sic  le 3079 then &ind = 15;
if          3080 le  &sic  le 3089 then &ind = 15;
if          3090 le  &sic  le 3099 then &ind = 15;
*16 Txtls  Textiles;
if          2200 le  &sic  le 2269 then &ind = 16;
if          2270 le  &sic  le 2279 then &ind = 16;
if          2280 le  &sic  le 2284 then &ind = 16;
if          2290 le  &sic  le 2295 then &ind = 16;
if          2297 le  &sic  le 2297 then &ind = 16;
if          2298 le  &sic  le 2298 then &ind = 16;
if          2299 le  &sic  le 2299 then &ind = 16;
if          2393 le  &sic  le 2395 then &ind = 16;
if          2397 le  &sic  le 2399 then &ind = 16;
*17 BldMt  Construction Materials;
if          0800 le  &sic  le 0899 then &ind = 17;
if          2400 le  &sic  le 2439 then &ind = 17;
if          2450 le  &sic  le 2459 then &ind = 17;
if          2490 le  &sic  le 2499 then &ind = 17;
if          2660 le  &sic  le 2661 then &ind = 17;
if          2950 le  &sic  le 2952 then &ind = 17;
if          3200 le  &sic  le 3200 then &ind = 17;
if          3210 le  &sic  le 3211 then &ind = 17;
if          3240 le  &sic  le 3241 then &ind = 17;
if          3250 le  &sic  le 3259 then &ind = 17;
if          3261 le  &sic  le 3261 then &ind = 17;
if          3264 le  &sic  le 3264 then &ind = 17;
if          3270 le  &sic  le 3275 then &ind = 17;
if          3280 le  &sic  le 3281 then &ind = 17;
if          3290 le  &sic  le 3293 then &ind = 17;
if          3295 le  &sic  le 3299 then &ind = 17;
if          3420 le  &sic  le 3429 then &ind = 17;
if          3430 le  &sic  le 3433 then &ind = 17;
if          3440 le  &sic  le 3441 then &ind = 17;
if          3442 le  &sic  le 3442 then &ind = 17;
if          3446 le  &sic  le 3446 then &ind = 17;
if          3448 le  &sic  le 3448 then &ind = 17;
if          3449 le  &sic  le 3449 then &ind = 17;
if          3450 le  &sic  le 3451 then &ind = 17;
if          3452 le  &sic  le 3452 then &ind = 17;
if          3490 le  &sic  le 3499 then &ind = 17;
if          3996 le  &sic  le 3996 then &ind = 17;
*18 Cnstr  Construction;
if          1500 le  &sic  le 1511 then &ind = 18;
if          1520 le  &sic  le 1529 then &ind = 18;
if          1530 le  &sic  le 1539 then &ind = 18;
if          1540 le  &sic  le 1549 then &ind = 18;
if          1600 le  &sic  le 1699 then &ind = 18;
if          1700 le  &sic  le 1799 then &ind = 18;
*19 Steel  Steel Works Etc;
if          3300 le  &sic  le 3300 then &ind = 19;
if          3310 le  &sic  le 3317 then &ind = 19;
if          3320 le  &sic  le 3325 then &ind = 19;
if          3330 le  &sic  le 3339 then &ind = 19;
if          3340 le  &sic  le 3341 then &ind = 19;
if          3350 le  &sic  le 3357 then &ind = 19;
if          3360 le  &sic  le 3369 then &ind = 19;
if          3370 le  &sic  le 3379 then &ind = 19;
if          3390 le  &sic  le 3399 then &ind = 19;
*20 FabPr  Fabricated Products;
if          3400 le  &sic  le 3400 then &ind = 20;
if          3443 le  &sic  le 3443 then &ind = 20;
if          3444 le  &sic  le 3444 then &ind = 20;
if          3460 le  &sic  le 3469 then &ind = 20;
if          3470 le  &sic  le 3479 then &ind = 20;
*21 Mach   Machinery;
if          3510 le  &sic  le 3519 then &ind = 21;
if          3520 le  &sic  le 3529 then &ind = 21;
if          3530 le  &sic  le 3530 then &ind = 21;
if          3531 le  &sic  le 3531 then &ind = 21;
if          3532 le  &sic  le 3532 then &ind = 21;
if          3533 le  &sic  le 3533 then &ind = 21;
if          3534 le  &sic  le 3534 then &ind = 21;
if          3535 le  &sic  le 3535 then &ind = 21;
if          3536 le  &sic  le 3536 then &ind = 21;
if          3538 le  &sic  le 3538 then &ind = 21;
if          3540 le  &sic  le 3549 then &ind = 21;
if          3550 le  &sic  le 3559 then &ind = 21;
if          3560 le  &sic  le 3569 then &ind = 21;
if          3580 le  &sic  le 3580 then &ind = 21;
if          3581 le  &sic  le 3581 then &ind = 21;
if          3582 le  &sic  le 3582 then &ind = 21;
if          3585 le  &sic  le 3585 then &ind = 21;
if          3586 le  &sic  le 3586 then &ind = 21;
if          3589 le  &sic  le 3589 then &ind = 21;
if          3590 le  &sic  le 3599 then &ind = 21;
*22 ElcEq  Electrical Equipment;
if          3600 le  &sic  le 3600 then &ind = 22;
if          3610 le  &sic  le 3613 then &ind = 22;
if          3620 le  &sic  le 3621 then &ind = 22;
if          3623 le  &sic  le 3629 then &ind = 22;
if          3640 le  &sic  le 3644 then &ind = 22;
if          3645 le  &sic  le 3645 then &ind = 22;
if          3646 le  &sic  le 3646 then &ind = 22;
if          3648 le  &sic  le 3649 then &ind = 22;
if          3660 le  &sic  le 3660 then &ind = 22;
if          3690 le  &sic  le 3690 then &ind = 22;
if          3691 le  &sic  le 3692 then &ind = 22;
if          3699 le  &sic  le 3699 then &ind = 22;
*23 Autos  Automobiles and Truc;
if          2296 le  &sic  le 2296 then &ind = 23;
if          2396 le  &sic  le 2396 then &ind = 23;
if          3010 le  &sic  le 3011 then &ind = 23;
if          3537 le  &sic  le 3537 then &ind = 23;
if          3647 le  &sic  le 3647 then &ind = 23;
if          3694 le  &sic  le 3694 then &ind = 23;
if          3700 le  &sic  le 3700 then &ind = 23;
if          3710 le  &sic  le 3710 then &ind = 23;
if          3711 le  &sic  le 3711 then &ind = 23;
if          3713 le  &sic  le 3713 then &ind = 23;
if          3714 le  &sic  le 3714 then &ind = 23;
if          3715 le  &sic  le 3715 then &ind = 23;
if          3716 le  &sic  le 3716 then &ind = 23;
if          3792 le  &sic  le 3792 then &ind = 23;
if          3790 le  &sic  le 3791 then &ind = 23;
if          3799 le  &sic  le 3799 then &ind = 23;
*24 Aero   Aircraft;
if          3720 le  &sic  le 3720 then &ind = 24;
if          3721 le  &sic  le 3721 then &ind = 24;
if          3723 le  &sic  le 3724 then &ind = 24;
if          3725 le  &sic  le 3725 then &ind = 24;
if          3728 le  &sic  le 3729 then &ind = 24;
*25 Ships  Shipbuilding, Railroad;
if          3730 le  &sic  le 3731 then &ind = 25;
if          3740 le  &sic  le 3743 then &ind = 25;
*26 Guns   Defense;
if          3760 le  &sic  le 3769 then &ind = 26;
if          3795 le  &sic  le 3795 then &ind = 26;
if          3480 le  &sic  le 3489 then &ind = 26;
*27 Gold   Precious Metals;
if          1040 le  &sic  le 1049 then &ind = 27;
*28 Mines  Non-Metall;
if          1000 le  &sic  le 1009 then &ind = 28;
if          1010 le  &sic  le 1019 then &ind = 28;
if          1020 le  &sic  le 1029 then &ind = 28;
if          1030 le  &sic  le 1039 then &ind = 28;
if          1050 le  &sic  le 1059 then &ind = 28;
if          1060 le  &sic  le 1069 then &ind = 28;
if          1070 le  &sic  le 1079 then &ind = 28;
if          1080 le  &sic  le 1089 then &ind = 28;
if          1090 le  &sic  le 1099 then &ind = 28;
if          1100 le  &sic  le 1119 then &ind = 28;
if          1400 le  &sic  le 1499 then &ind = 28;
*29 Coal   Coal;
if          1200 le  &sic  le 1299 then &ind = 29;
*30 Oil    Petroleum and Natural gas;
if          1300 le  &sic  le 1300 then &ind = 30;
if          1310 le  &sic  le 1319 then &ind = 30;
if          1320 le  &sic  le 1329 then &ind = 30;
if          1330 le  &sic  le 1339 then &ind = 30;
if          1370 le  &sic  le 1379 then &ind = 30;
if          1380 le  &sic  le 1380 then &ind = 30;
if          1381 le  &sic  le 1381 then &ind = 30;
if          1382 le  &sic  le 1382 then &ind = 30;
if          1389 le  &sic  le 1389 then &ind = 30;
if          2900 le  &sic  le 2912 then &ind = 30;
if          2990 le  &sic  le 2999 then &ind = 30;
*31 Util   Utilities;
if          4900 le  &sic  le 4900 then &ind = 31;
if          4910 le  &sic  le 4911 then &ind = 31;
if          4920 le  &sic  le 4922 then &ind = 31;
if          4923 le  &sic  le 4923 then &ind = 31;
if          4924 le  &sic  le 4925 then &ind = 31;
if          4930 le  &sic  le 4931 then &ind = 31;
if          4932 le  &sic  le 4932 then &ind = 31;
if          4939 le  &sic  le 4939 then &ind = 31;
if          4940 le  &sic  le 4942 then &ind = 31;
*32 Telcm  Communication;
if          4800 le  &sic  le 4800 then &ind = 32;
if          4810 le  &sic  le 4813 then &ind = 32;
if          4820 le  &sic  le 4822 then &ind = 32;
if          4830 le  &sic  le 4839 then &ind = 32;
if          4840 le  &sic  le 4841 then &ind = 32;
if          4880 le  &sic  le 4889 then &ind = 32;
if          4890 le  &sic  le 4890 then &ind = 32;
if          4891 le  &sic  le 4891 then &ind = 32;
if          4892 le  &sic  le 4892 then &ind = 32;
if          4899 le  &sic  le 4899 then &ind = 32;
*33 PerSv  Personal Services;
if          7020 le  &sic  le 7021 then &ind = 33;
if          7030 le  &sic  le 7033 then &ind = 33;
if          7200 le  &sic  le 7200 then &ind = 33;
if          7210 le  &sic  le 7212 then &ind = 33;
if          7214 le  &sic  le 7214 then &ind = 33;
if          7215 le  &sic  le 7216 then &ind = 33;
if          7217 le  &sic  le 7217 then &ind = 33;
if          7219 le  &sic  le 7219 then &ind = 33;
if          7220 le  &sic  le 7221 then &ind = 33;
if          7230 le  &sic  le 7231 then &ind = 33;
if          7240 le  &sic  le 7241 then &ind = 33;
if          7250 le  &sic  le 7251 then &ind = 33;
if          7260 le  &sic  le 7269 then &ind = 33;
if          7270 le  &sic  le 7290 then &ind = 33;
if          7291 le  &sic  le 7291 then &ind = 33;
if          7292 le  &sic  le 7299 then &ind = 33;
if          7395 le  &sic  le 7395 then &ind = 33;
if          7500 le  &sic  le 7500 then &ind = 33;
if          7520 le  &sic  le 7529 then &ind = 33;
if          7530 le  &sic  le 7539 then &ind = 33;
if          7540 le  &sic  le 7549 then &ind = 33;
if          7600 le  &sic  le 7600 then &ind = 33;
if          7620 le  &sic  le 7620 then &ind = 33;
if          7622 le  &sic  le 7622 then &ind = 33;
if          7623 le  &sic  le 7623 then &ind = 33;
if          7629 le  &sic  le 7629 then &ind = 33;
if          7630 le  &sic  le 7631 then &ind = 33;
if          7640 le  &sic  le 7641 then &ind = 33;
if          7690 le  &sic  le 7699 then &ind = 33;
if          8100 le  &sic  le 8199 then &ind = 33;
if          8200 le  &sic  le 8299 then &ind = 33;
if          8300 le  &sic  le 8399 then &ind = 33;
if          8400 le  &sic  le 8499 then &ind = 33;
if          8600 le  &sic  le 8699 then &ind = 33;
if          8800 le  &sic  le 8899 then &ind = 33;
*34 BusSv  Business Services;
if          2750 le  &sic  le 2759 then &ind = 34;
if          3993 le  &sic  le 3993 then &ind = 34;
if          7218 le  &sic  le 7218 then &ind = 34;
if          7300 le  &sic  le 7300 then &ind = 34;
if          7310 le  &sic  le 7319 then &ind = 34;
if          7320 le  &sic  le 7329 then &ind = 34;
if          7330 le  &sic  le 7339 then &ind = 34;
if          7340 le  &sic  le 7342 then &ind = 34;
if          7349 le  &sic  le 7349 then &ind = 34;
if          7350 le  &sic  le 7351 then &ind = 34;
if          7352 le  &sic  le 7352 then &ind = 34;
if          7353 le  &sic  le 7353 then &ind = 34;
if          7359 le  &sic  le 7359 then &ind = 34;
if          7360 le  &sic  le 7369 then &ind = 34;
if          7370 le  &sic  le 7372 then &ind = 34;
if          7374 le  &sic  le 7374 then &ind = 34;
if          7375 le  &sic  le 7375 then &ind = 34;
if          7376 le  &sic  le 7376 then &ind = 34;
if          7377 le  &sic  le 7377 then &ind = 34;
if          7378 le  &sic  le 7378 then &ind = 34;
if          7379 le  &sic  le 7379 then &ind = 34;
if          7380 le  &sic  le 7380 then &ind = 34;
if          7381 le  &sic  le 7382 then &ind = 34;
if          7383 le  &sic  le 7383 then &ind = 34;
if          7384 le  &sic  le 7384 then &ind = 34;
if          7385 le  &sic  le 7385 then &ind = 34;
if          7389 le  &sic  le 7390 then &ind = 34;
if          7391 le  &sic  le 7391 then &ind = 34;
if          7392 le  &sic  le 7392 then &ind = 34;
if          7393 le  &sic  le 7393 then &ind = 34;
if          7394 le  &sic  le 7394 then &ind = 34;
if          7396 le  &sic  le 7396 then &ind = 34;
if          7397 le  &sic  le 7397 then &ind = 34;
if          7399 le  &sic  le 7399 then &ind = 34;
if          7510 le  &sic  le 7519 then &ind = 34;
if          8700 le  &sic  le 8700 then &ind = 34;
if          8710 le  &sic  le 8713 then &ind = 34;
if          8720 le  &sic  le 8721 then &ind = 34;
if          8730 le  &sic  le 8734 then &ind = 34;
if          8740 le  &sic  le 8748 then &ind = 34;
if          8900 le  &sic  le 8910 then &ind = 34;
if          8911 le  &sic  le 8911 then &ind = 34;
if          8920 le  &sic  le 8999 then &ind = 34;
*35 Comps  Computers;
if          3570 le  &sic  le 3579 then &ind = 35;
if          3680 le  &sic  le 3680 then &ind = 35;
if          3681 le  &sic  le 3681 then &ind = 35;
if          3682 le  &sic  le 3682 then &ind = 35;
if          3683 le  &sic  le 3683 then &ind = 35;
if          3684 le  &sic  le 3684 then &ind = 35;
if          3685 le  &sic  le 3685 then &ind = 35;
if          3686 le  &sic  le 3686 then &ind = 35;
if          3687 le  &sic  le 3687 then &ind = 35;
if          3688 le  &sic  le 3688 then &ind = 35;
if          3689 le  &sic  le 3689 then &ind = 35;
if          3695 le  &sic  le 3695 then &ind = 35;
if          7373 le  &sic  le 7373 then &ind = 35;
*36 Chips  Electronic Equipment;
if          3622 le  &sic  le 3622 then &ind = 36;
if          3661 le  &sic  le 3661 then &ind = 36;
if          3662 le  &sic  le 3662 then &ind = 36;
if          3663 le  &sic  le 3663 then &ind = 36;
if          3664 le  &sic  le 3664 then &ind = 36;
if          3665 le  &sic  le 3665 then &ind = 36;
if          3666 le  &sic  le 3666 then &ind = 36;
if          3669 le  &sic  le 3669 then &ind = 36;
if          3670 le  &sic  le 3679 then &ind = 36;
if          3810 le  &sic  le 3810 then &ind = 36;
if          3812 le  &sic  le 3812 then &ind = 36;
*37 LabEq  Measuring and Control;
if          3811 le  &sic  le 3811 then &ind = 37;
if          3820 le  &sic  le 3820 then &ind = 37;
if          3821 le  &sic  le 3821 then &ind = 37;
if          3822 le  &sic  le 3822 then &ind = 37;
if          3823 le  &sic  le 3823 then &ind = 37;
if          3824 le  &sic  le 3824 then &ind = 37;
if          3825 le  &sic  le 3825 then &ind = 37;
if          3826 le  &sic  le 3826 then &ind = 37;
if          3827 le  &sic  le 3827 then &ind = 37;
if          3829 le  &sic  le 3829 then &ind = 37;
if          3830 le  &sic  le 3839 then &ind = 37;
*38 Paper  Business Supplies;
if          2520 le  &sic  le 2549 then &ind = 38;
if          2600 le  &sic  le 2639 then &ind = 38;
if          2670 le  &sic  le 2699 then &ind = 38;
if          2760 le  &sic  le 2761 then &ind = 38;
if          3950 le  &sic  le 3955 then &ind = 38;
*39 Boxes  Shipping Containers;
if          2440 le  &sic  le 2449 then &ind = 39;
if          2640 le  &sic  le 2659 then &ind = 39;
if          3220 le  &sic  le 3221 then &ind = 39;
if          3410 le  &sic  le 3412 then &ind = 39;
*40 Trans  Transportation;
if          4000 le  &sic  le 4013 then &ind = 40;
if          4040 le  &sic  le 4049 then &ind = 40;
if          4100 le  &sic  le 4100 then &ind = 40;
if          4110 le  &sic  le 4119 then &ind = 40;
if          4120 le  &sic  le 4121 then &ind = 40;
if          4130 le  &sic  le 4131 then &ind = 40;
if          4140 le  &sic  le 4142 then &ind = 40;
if          4150 le  &sic  le 4151 then &ind = 40;
if          4170 le  &sic  le 4173 then &ind = 40;
if          4190 le  &sic  le 4199 then &ind = 40;
if          4200 le  &sic  le 4200 then &ind = 40;
if          4210 le  &sic  le 4219 then &ind = 40;
if          4220 le  &sic  le 4229 then &ind = 40;
if          4230 le  &sic  le 4231 then &ind = 40;
if          4240 le  &sic  le 4249 then &ind = 40;
if          4400 le  &sic  le 4499 then &ind = 40;
if          4500 le  &sic  le 4599 then &ind = 40;
if          4600 le  &sic  le 4699 then &ind = 40;
if          4700 le  &sic  le 4700 then &ind = 40;
if          4710 le  &sic  le 4712 then &ind = 40;
if          4720 le  &sic  le 4729 then &ind = 40;
if          4730 le  &sic  le 4739 then &ind = 40;
if          4740 le  &sic  le 4749 then &ind = 40;
if          4780 le  &sic  le 4780 then &ind = 40;
if          4782 le  &sic  le 4782 then &ind = 40;
if          4783 le  &sic  le 4783 then &ind = 40;
if          4784 le  &sic  le 4784 then &ind = 40;
if          4785 le  &sic  le 4785 then &ind = 40;
if          4789 le  &sic  le 4789 then &ind = 40;
*41 Whlsl  Wholesale;
if          5000 le  &sic  le 5000 then &ind = 41;
if          5010 le  &sic  le 5015 then &ind = 41;
if          5020 le  &sic  le 5023 then &ind = 41;
if          5030 le  &sic  le 5039 then &ind = 41;
if          5040 le  &sic  le 5042 then &ind = 41;
if          5043 le  &sic  le 5043 then &ind = 41;
if          5044 le  &sic  le 5044 then &ind = 41;
if          5045 le  &sic  le 5045 then &ind = 41;
if          5046 le  &sic  le 5046 then &ind = 41;
if          5047 le  &sic  le 5047 then &ind = 41;
if          5048 le  &sic  le 5048 then &ind = 41;
if          5049 le  &sic  le 5049 then &ind = 41;
if          5050 le  &sic  le 5059 then &ind = 41;
if          5060 le  &sic  le 5060 then &ind = 41;
if          5063 le  &sic  le 5063 then &ind = 41;
if          5064 le  &sic  le 5064 then &ind = 41;
if          5065 le  &sic  le 5065 then &ind = 41;
if          5070 le  &sic  le 5078 then &ind = 41;
if          5080 le  &sic  le 5080 then &ind = 41;
if          5081 le  &sic  le 5081 then &ind = 41;
if          5082 le  &sic  le 5082 then &ind = 41;
if          5083 le  &sic  le 5083 then &ind = 41;
if          5084 le  &sic  le 5084 then &ind = 41;
if          5085 le  &sic  le 5085 then &ind = 41;
if          5086 le  &sic  le 5087 then &ind = 41;
if          5088 le  &sic  le 5088 then &ind = 41;
if          5090 le  &sic  le 5090 then &ind = 41;
if          5091 le  &sic  le 5092 then &ind = 41;
if          5093 le  &sic  le 5093 then &ind = 41;
if          5094 le  &sic  le 5094 then &ind = 41;
if          5099 le  &sic  le 5099 then &ind = 41;
if          5100 le  &sic  le 5100 then &ind = 41;
if          5110 le  &sic  le 5113 then &ind = 41;
if          5120 le  &sic  le 5122 then &ind = 41;
if          5130 le  &sic  le 5139 then &ind = 41;
if          5140 le  &sic  le 5149 then &ind = 41;
if          5150 le  &sic  le 5159 then &ind = 41;
if          5160 le  &sic  le 5169 then &ind = 41;
if          5170 le  &sic  le 5172 then &ind = 41;
if          5180 le  &sic  le 5182 then &ind = 41;
if          5190 le  &sic  le 5199 then &ind = 41;
*42 Rtail  Retail;
if          5200 le  &sic  le 5200 then &ind = 42;
if          5210 le  &sic  le 5219 then &ind = 42;
if          5220 le  &sic  le 5229 then &ind = 42;
if          5230 le  &sic  le 5231 then &ind = 42;
if          5250 le  &sic  le 5251 then &ind = 42;
if          5260 le  &sic  le 5261 then &ind = 42;
if          5270 le  &sic  le 5271 then &ind = 42;
if          5300 le  &sic  le 5300 then &ind = 42;
if          5310 le  &sic  le 5311 then &ind = 42;
if          5320 le  &sic  le 5320 then &ind = 42;
if          5330 le  &sic  le 5331 then &ind = 42;
if          5334 le  &sic  le 5334 then &ind = 42;
if          5340 le  &sic  le 5349 then &ind = 42;
if          5390 le  &sic  le 5399 then &ind = 42;
if          5400 le  &sic  le 5400 then &ind = 42;
if          5410 le  &sic  le 5411 then &ind = 42;
if          5412 le  &sic  le 5412 then &ind = 42;
if          5420 le  &sic  le 5429 then &ind = 42;
if          5430 le  &sic  le 5439 then &ind = 42;
if          5440 le  &sic  le 5449 then &ind = 42;
if          5450 le  &sic  le 5459 then &ind = 42;
if          5460 le  &sic  le 5469 then &ind = 42;
if          5490 le  &sic  le 5499 then &ind = 42;
if          5500 le  &sic  le 5500 then &ind = 42;
if          5510 le  &sic  le 5529 then &ind = 42;
if          5530 le  &sic  le 5539 then &ind = 42;
if          5540 le  &sic  le 5549 then &ind = 42;
if          5550 le  &sic  le 5559 then &ind = 42;
if          5560 le  &sic  le 5569 then &ind = 42;
if          5570 le  &sic  le 5579 then &ind = 42;
if          5590 le  &sic  le 5599 then &ind = 42;
if          5600 le  &sic  le 5699 then &ind = 42;
if          5700 le  &sic  le 5700 then &ind = 42;
if          5710 le  &sic  le 5719 then &ind = 42;
if          5720 le  &sic  le 5722 then &ind = 42;
if          5730 le  &sic  le 5733 then &ind = 42;
if          5734 le  &sic  le 5734 then &ind = 42;
if          5735 le  &sic  le 5735 then &ind = 42;
if          5736 le  &sic  le 5736 then &ind = 42;
if          5750 le  &sic  le 5799 then &ind = 42;
if          5900 le  &sic  le 5900 then &ind = 42;
if          5910 le  &sic  le 5912 then &ind = 42;
if          5920 le  &sic  le 5929 then &ind = 42;
if          5930 le  &sic  le 5932 then &ind = 42;
if          5940 le  &sic  le 5940 then &ind = 42;
if          5941 le  &sic  le 5941 then &ind = 42;
if          5942 le  &sic  le 5942 then &ind = 42;
if          5943 le  &sic  le 5943 then &ind = 42;
if          5944 le  &sic  le 5944 then &ind = 42;
if          5945 le  &sic  le 5945 then &ind = 42;
if          5946 le  &sic  le 5946 then &ind = 42;
if          5947 le  &sic  le 5947 then &ind = 42;
if          5948 le  &sic  le 5948 then &ind = 42;
if          5949 le  &sic  le 5949 then &ind = 42;
if          5950 le  &sic  le 5959 then &ind = 42;
if          5960 le  &sic  le 5969 then &ind = 42;
if          5970 le  &sic  le 5979 then &ind = 42;
if          5980 le  &sic  le 5989 then &ind = 42;
if          5990 le  &sic  le 5990 then &ind = 42;
if          5992 le  &sic  le 5992 then &ind = 42;
if          5993 le  &sic  le 5993 then &ind = 42;
if          5994 le  &sic  le 5994 then &ind = 42;
if          5995 le  &sic  le 5995 then &ind = 42;
if          5999 le  &sic  le 5999 then &ind = 42;
*43 Meals  Restaraunts, Hotels, M;
if          5800 le  &sic  le 5819 then &ind = 43;
if          5820 le  &sic  le 5829 then &ind = 43;
if          5890 le  &sic  le 5899 then &ind = 43;
if          7000 le  &sic  le 7000 then &ind = 43;
if          7010 le  &sic  le 7019 then &ind = 43;
if          7040 le  &sic  le 7049 then &ind = 43;
if          7213 le  &sic  le 7213 then &ind = 43;
*44 Banks  Banking;
if          6000 le  &sic  le 6000 then &ind = 44;
if          6010 le  &sic  le 6019 then &ind = 44;
if          6020 le  &sic  le 6020 then &ind = 44;
if          6021 le  &sic  le 6021 then &ind = 44;
if          6022 le  &sic  le 6022 then &ind = 44;
if          6023 le  &sic  le 6024 then &ind = 44;
if          6025 le  &sic  le 6025 then &ind = 44;
if          6026 le  &sic  le 6026 then &ind = 44;
if          6027 le  &sic  le 6027 then &ind = 44;
if          6028 le  &sic  le 6029 then &ind = 44;
if          6030 le  &sic  le 6036 then &ind = 44;
if          6040 le  &sic  le 6059 then &ind = 44;
if          6060 le  &sic  le 6062 then &ind = 44;
if          6080 le  &sic  le 6082 then &ind = 44;
if          6090 le  &sic  le 6099 then &ind = 44;
if          6100 le  &sic  le 6100 then &ind = 44;
if          6110 le  &sic  le 6111 then &ind = 44;
if          6112 le  &sic  le 6113 then &ind = 44;
if          6120 le  &sic  le 6129 then &ind = 44;
if          6130 le  &sic  le 6139 then &ind = 44;
if          6140 le  &sic  le 6149 then &ind = 44;
if          6150 le  &sic  le 6159 then &ind = 44;
if          6160 le  &sic  le 6169 then &ind = 44;
if          6170 le  &sic  le 6179 then &ind = 44;
if          6190 le  &sic  le 6199 then &ind = 44;
*45 Insur  Insurance;
if          6300 le  &sic  le 6300 then &ind = 45;
if          6310 le  &sic  le 6319 then &ind = 45;
if          6320 le  &sic  le 6329 then &ind = 45;
if          6330 le  &sic  le 6331 then &ind = 45;
if          6350 le  &sic  le 6351 then &ind = 45;
if          6360 le  &sic  le 6361 then &ind = 45;
if          6370 le  &sic  le 6379 then &ind = 45;
if          6390 le  &sic  le 6399 then &ind = 45;
if          6400 le  &sic  le 6411 then &ind = 45;
*46 Rlest  Real Estate;
if          6500 le  &sic  le 6500 then &ind = 46;
if          6510 le  &sic  le 6510 then &ind = 46;
if          6512 le  &sic  le 6512 then &ind = 46;
if          6513 le  &sic  le 6513 then &ind = 46;
if          6514 le  &sic  le 6514 then &ind = 46;
if          6515 le  &sic  le 6515 then &ind = 46;
if          6517 le  &sic  le 6519 then &ind = 46;
if          6520 le  &sic  le 6529 then &ind = 46;
if          6530 le  &sic  le 6531 then &ind = 46;
if          6532 le  &sic  le 6532 then &ind = 46;
if          6540 le  &sic  le 6541 then &ind = 46;
if          6550 le  &sic  le 6553 then &ind = 46;
if          6590 le  &sic  le 6599 then &ind = 46;
if          6610 le  &sic  le 6611 then &ind = 46;
*47 Fin    Trading;
if          6200 le  &sic  le 6299 then &ind = 47;
if          6700 le  &sic  le 6700 then &ind = 47;
if          6710 le  &sic  le 6719 then &ind = 47;
if          6720 le  &sic  le 6722 then &ind = 47;
if          6723 le  &sic  le 6723 then &ind = 47;
if          6724 le  &sic  le 6724 then &ind = 47;
if          6725 le  &sic  le 6726 then &ind = 47;
if          6730 le  &sic  le 6733 then &ind = 47;
if          6740 le  &sic  le 6779 then &ind = 47;
if          6790 le  &sic  le 6791 then &ind = 47;
if          6792 le  &sic  le 6792 then &ind = 47;
if          6793 le  &sic  le 6793 then &ind = 47;
if          6794 le  &sic  le 6794 then &ind = 47;
if          6795 le  &sic  le 6795 then &ind = 47;
if          6798 le  &sic  le 6798 then &ind = 47;
if          6799 le  &sic  le 6799 then &ind = 47;
*48 Other  Miscellaneous (also in;
if          3990 le  &sic  le 3990 then &ind = 48;
if          3992 le  &sic  le 3994 then &ind = 48;
if          3997 le  &sic  le 3999 then &ind = 48;
if          4950 le  &sic  le 4959 then &ind = 48;
if          4960 le  &sic  le 4961 then &ind = 48;
if          4970 le  &sic  le 4971 then &ind = 48;
if          4990 le  &sic  le 4991 then &ind = 48;
if          9900 le  &sic  le 9999 then &ind = 48;
*if missing(&ind) then &ind=48;
run;
%put Exiting...;
%mend;