/* ********************************************************************************* */
/* ******************** W R D S   R E S E A R C H   M A C R O S ******************** */
/* ********************************************************************************* */
/* WRDS Macro: FFI17                                                                 */
/* Summary   : Barth, et al. 15 Industry Classification Variable             */
/* Date      : April 14, 2009                                                        */
/* Author    : lEO YANG                                                              */
/* Variables : - SIC_CODE: SIC 4-digit Industry Code                                 */
/* ********************************************************************************* */

%MACRO BARTH15(sic_code);
do; format BARTH15_desc $5.;
if missing(&SIC_Code) then BARTH15=.;
 else if 1000<=&SIC_Code<=1299 then do; BARTH15=1; BARTH15_desc='Mines'; end;
 else if 1400<=&SIC_Code<=1999 then do; BARTH15=1; BARTH15_desc='Mines'; end;
 else if 0100<=&SIC_Code<=0199 then do; BARTH15=2; BARTH15_desc='Food'; end;
 else if 0200<=&SIC_Code<=0299 then do; BARTH15=2; BARTH15_desc='Food'; end;
 else if 0700<=&SIC_Code<=0799 then do; BARTH15=2; BARTH15_desc='Food'; end;
 else if 0900<=&SIC_Code<=0999 then do; BARTH15=2; BARTH15_desc='Food'; end;
 else if 2000<=&SIC_Code<=2111 then do; BARTH15=2; BARTH15_desc='Food '; end;
 else if 2200<=&SIC_Code<=2799 then do; BARTH15=3; BARTH15_desc='TexPP'; end;
 else if 2800<=&SIC_Code<=2824 then do; BARTH15=4; BARTH15_desc='Chemi'; end;
 else if 2840<=&SIC_Code<=2899 then do; BARTH15=4; BARTH15_desc='Chemi'; end;
 else if 2830<=&SIC_Code<=2836 then do; BARTH15=5; BARTH15_desc='Pharm'; end;
 else if 2900<=&SIC_Code<=2999 then do; BARTH15=6; BARTH15_desc='ExInd'; end;
 else if 1300<=&SIC_Code<=1399 then do; BARTH15=6; BARTH15_desc='ExInd'; end;
 else if 0800<=&SIC_Code<=0899 then do; BARTH15=7; BARTH15_desc='Durbl'; end;
 else if 3000<=&SIC_Code<=3569 then do; BARTH15=7; BARTH15_desc='Durbl'; end;
 else if 3580<=&SIC_Code<=3669 then do; BARTH15=7; BARTH15_desc='Durbl'; end;
 else if 3680<=&SIC_Code<=3999 then do; BARTH15=7; BARTH15_desc='Durbl'; end;
 else if 7370<=&SIC_Code<=7379 then do; BARTH15=8; BARTH15_desc='Compu'; end;
 else if 3570<=&SIC_Code<=3579 then do; BARTH15=8; BARTH15_desc='Compu'; end;
 else if 3670<=&SIC_Code<=3679 then do; BARTH15=8; BARTH15_desc='Compu'; end;
 else if 4000<=&SIC_Code<=4899 then do; BARTH15=9; BARTH15_desc='Trans'; end;
 else if 4900<=&SIC_Code<=4999 then do; BARTH15=10; BARTH15_desc='Utils'; end;
 else if 5000<=&SIC_Code<=5999 then do; BARTH15=11; BARTH15_desc='Rtail'; end;
 else if 6000<=&SIC_Code<=6411 then do; BARTH15=12; BARTH15_desc='Finac'; end;
 else if 6500<=&SIC_Code<=6999 then do; BARTH15=13; BARTH15_desc='Insur'; end;
 else if 7000<=&SIC_Code<=7369 then do; BARTH15=14; BARTH15_desc='Servi'; end;
 else if 7380<=&SIC_Code<=8999 then do; BARTH15=14; BARTH15_desc='Servi'; end;
 else if &SIC_Code>=9000		then do; BARTH15=15; BARTH15_desc='Other'; end;
label BARTH15 ="Barth 15 Industries";
label BARTH15_desc ="Barth 15 Industries - Description";
end;

%MEND BARTH15;

