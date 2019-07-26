options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLS_100Adownload.dat' lrecl=147 missover DSD DLM=' ' print;
input
  E7022901
  E7022902
  E7022903
  E7022904
  E7022905
  E7022906
  E7022907
  E7022908
  E7022909
  E7022910
  E7022911
  E7022912
  R0000100
  R0536300
  R0536401
  R0536402
  R1235800
  R1482600
  R9829600
  T3145000
  T3145300
  T3162400
  T4406000
  T4565600
  T6141700
  T6141800
  T6141900
  T6209600
  T6209800
  Z0370900
  Z0371000
  Z0371100
  Z0371200
  Z0371300
  Z0371400
  Z0371500
  Z0371510
  Z0371511
  Z0371512
  Z9084900
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label E7022901 = "2009 MAR: COHABIT STAT MO L1";
  label E7022902 = "2009 MAR: COHABIT STAT MO L2";
  label E7022903 = "2009 MAR: COHABIT STAT MO L3";
  label E7022904 = "2009 MAR: COHABIT STAT MO L4";
  label E7022905 = "2009 MAR: COHABIT STAT MO L5";
  label E7022906 = "2009 MAR: COHABIT STAT MO L6";
  label E7022907 = "2009 MAR: COHABIT STAT MO L7";
  label E7022908 = "2009 MAR: COHABIT STAT MO L8";
  label E7022909 = "2009 MAR: COHABIT STAT MO L9";
  label E7022910 = "2009 MAR: COHABIT STAT MO L10";
  label E7022911 = "2009 MAR: COHABIT STAT MO L11";
  label E7022912 = "2009 MAR: COHABIT STAT MO L12";
  label R0000100 = "PUBID - YTH ID CODE 1997";
  label R0536300 = "KEY!SEX (SYMBOL) 1997";
  label R0536401 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0536402 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R1235800 = "CV_SAMPLE_TYPE 1997";
  label R1482600 = "KEY!RACE_ETHNICITY (SYMBOL) 1997";
  label R9829600 = "ASVAB_MATH_VERBAL_SCORE_PCT 1999";
  label T3145000 = "TIMES/WK R EXERCISE 30+ MIN 2008";
  label T3145300 = "HRS/NIGHT R SLEEPS 2008";
  label T3162400 = "HOW R RATES HIS CURRENT LIFE 2008";
  label T4406000 = "TTL INC WAGES, SALARY PAST YR 2009";
  label T4565600 = "HRS/NIGHT R SLEEPS 2009";
  label T6141700 = "R'S HEIGHT - FEET 2010";
  label T6141800 = "R'S HEIGHT - INCHES 2010";
  label T6141900 = "R'S WEIGHT - POUNDS 2010";
  label T6209600 = "HRS/WK R USES A COMPUTER 2010";
  label T6209800 = "HRS/NIGHT R SLEEPS 2010";
  label Z0370900 = "CUMPARTNERS, CURRENT (ROS ITEM) L1";
  label Z0371000 = "CUMPARTNERS, CURRENT (ROS ITEM) L2";
  label Z0371100 = "CUMPARTNERS, CURRENT (ROS ITEM) L3";
  label Z0371200 = "CUMPARTNERS, CURRENT (ROS ITEM) L4";
  label Z0371300 = "CUMPARTNERS, CURRENT (ROS ITEM) L5";
  label Z0371400 = "CUMPARTNERS, CURRENT (ROS ITEM) L6";
  label Z0371500 = "CUMPARTNERS, CURRENT (ROS ITEM) L7";
  label Z0371510 = "CUMPARTNERS, CURRENT (ROS ITEM) L8";
  label Z0371511 = "CUMPARTNERS, CURRENT (ROS ITEM) L9";
  label Z0371512 = "CUMPARTNERS, CURRENT (ROS ITEM) L10";
  label Z9084900 = "CVC_HS_LEFT_HGC";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  E7022901 = 'MAR_COHABITATION_2009.01_XRND'n
  E7022902 = 'MAR_COHABITATION_2009.02_XRND'n
  E7022903 = 'MAR_COHABITATION_2009.03_XRND'n
  E7022904 = 'MAR_COHABITATION_2009.04_XRND'n
  E7022905 = 'MAR_COHABITATION_2009.05_XRND'n
  E7022906 = 'MAR_COHABITATION_2009.06_XRND'n
  E7022907 = 'MAR_COHABITATION_2009.07_XRND'n
  E7022908 = 'MAR_COHABITATION_2009.08_XRND'n
  E7022909 = 'MAR_COHABITATION_2009.09_XRND'n
  E7022910 = 'MAR_COHABITATION_2009.10_XRND'n
  E7022911 = 'MAR_COHABITATION_2009.11_XRND'n
  E7022912 = 'MAR_COHABITATION_2009.12_XRND'n
  R0000100 = 'PUBID_1997'n
  R0536300 = 'KEY!SEX_1997'n
  R0536401 = 'KEY!BDATE_M_1997'n
  R0536402 = 'KEY!BDATE_Y_1997'n
  R1235800 = 'CV_SAMPLE_TYPE_1997'n
  R1482600 = 'KEY!RACE_ETHNICITY_1997'n
  R9829600 = 'ASVAB_MATH_VERBAL_SCORE_PCT_1999'n
  T3145000 = 'YHEA-600_2008'n
  T3145300 = 'YHEA-650_2008'n
  T3162400 = 'YTEL-55_2008'n
  T4406000 = 'YINC-1700_2009'n
  T4565600 = 'YHEA-650_2009'n
  T6141700 = 'YSAQ-000A000001_2010'n
  T6141800 = 'YSAQ-000A000002_2010'n
  T6141900 = 'YSAQ-000B_2010'n
  T6209600 = 'YHEA-610_2010'n
  T6209800 = 'YHEA-650_2010'n
  Z0370900 = 'CUMPARTNERS_CURRENT.01_XRND'n
  Z0371000 = 'CUMPARTNERS_CURRENT.02_XRND'n
  Z0371100 = 'CUMPARTNERS_CURRENT.03_XRND'n
  Z0371200 = 'CUMPARTNERS_CURRENT.04_XRND'n
  Z0371300 = 'CUMPARTNERS_CURRENT.05_XRND'n
  Z0371400 = 'CUMPARTNERS_CURRENT.06_XRND'n
  Z0371500 = 'CUMPARTNERS_CURRENT.07_XRND'n
  Z0371510 = 'CUMPARTNERS_CURRENT.08_XRND'n
  Z0371511 = 'CUMPARTNERS_CURRENT.09_XRND'n
  Z0371512 = 'CUMPARTNERS_CURRENT.10_XRND'n
  Z9084900 = 'CVC_HS_LEFT_HGC_XRND'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx0f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx1f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx2f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx3f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx4f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx5f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx6f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx7f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx8f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx9f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx10f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx11f
  101='Cohabiting with partner 1'
  102='Cohabiting with partner 2'
  103='Cohabiting with partner 3'
  104='Cohabiting with partner 4'
  105='Cohabiting with partner 5'
  106='Cohabiting with partner 6'
  107='Cohabiting with partner 7'
  108='Cohabiting with partner 8'
  109='Cohabiting with partner 9'
  110='Cohabiting with partner 10'
  201='Cohabiting with spouse 1'
  202='Cohabiting with spouse 2'
  203='Cohabiting with spouse 3'
  204='Cohabiting with spouse 4'
  205='Cohabiting with spouse 5'
  206='Cohabiting with spouse 6'
  207='Cohabiting with spouse 7'
  208='Cohabiting with spouse 8'
  209='Cohabiting with spouse 9'
  210='Cohabiting with spouse 10'
;
value vx12f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
;
value vx13f
  0='No Information'
  1='Male'
  2='Female'
;
value vx14f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx16f
  0='Oversample'
  1='Cross-sectional'
;
value vx17f
  1='Black'
  2='Hispanic'
  3='Mixed Race (Non-Hispanic)'
  4='Non-Black / Non-Hispanic'
;
value vx18f
  0='0'
  1-999='1 TO 999: .001-.999'
  1000-19999='1000 TO 19999: 1.000-19.999'
  20000-39999='20000 TO 39999: 20.000-39.999'
  40000-59999='40000 TO 59999: 40.000-59.999'
  60000-79999='60000 TO 79999: 60.000-79.999'
  80000-100000='80000 TO 100000: 80.000-100.000'
;
value vx19f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
;
value vx20f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx21f
  1='1 EXTREMELY DISSATISFIED'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10 EXTREMELY SATISIFIED'
;
value vx22f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx23f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx24f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
;
value vx25f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10'
  11='11'
  12='12'
;
value vx26f
  0='0'
  1-24='1 TO 24'
  25-49='25 TO 49'
  50-74='50 TO 74'
  75-99='75 TO 99'
  100-124='100 TO 124'
  125-149='125 TO 149'
  150-174='150 TO 174'
  175-199='175 TO 199'
  200-224='200 TO 224'
  225-249='225 TO 249'
  250-99999999='250 TO 99999999: 250+'
;
value vx27f
  1='None'
  2='Less than 1 hour a week'
  3='1 to 3 hours a week'
  4='4 to 6 hours a week'
  5='7 to 9 hours a week'
  6='10 hours or more a week'
;
value vx28f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10-999='10 TO 999: 10+'
;
value vx29f
  0='No'
  1='Yes'
;
value vx30f
  0='No'
  1='Yes'
;
value vx31f
  0='No'
  1='Yes'
;
value vx32f
  0='No'
  1='Yes'
;
value vx33f
  0='No'
  1='Yes'
;
value vx34f
  0='No'
  1='Yes'
;
value vx35f
  0='No'
  1='Yes'
;
value vx36f
  0='No'
  1='Yes'
;
value vx37f
  0='No'
  1='Yes'
;
value vx38f
  0='No'
  1='Yes'
;
value vx39f
  0='None'
  1='1st grade'
  2='2nd grade'
  3='3rd grade'
  4='4th grade'
  5='5th grade'
  6='6th grade'
  7='7th grade'
  8='8th grade'
  9='9th grade'
  10='10th grade'
  11='11th grade'
  12='12th grade'
  95='Ungraded'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format E7022901 vx0f.;
  format E7022902 vx1f.;
  format E7022903 vx2f.;
  format E7022904 vx3f.;
  format E7022905 vx4f.;
  format E7022906 vx5f.;
  format E7022907 vx6f.;
  format E7022908 vx7f.;
  format E7022909 vx8f.;
  format E7022910 vx9f.;
  format E7022911 vx10f.;
  format E7022912 vx11f.;
  format R0000100 vx12f.;
  format R0536300 vx13f.;
  format R0536401 vx14f.;
  format R1235800 vx16f.;
  format R1482600 vx17f.;
  format R9829600 vx18f.;
  format T3145000 vx19f.;
  format T3145300 vx20f.;
  format T3162400 vx21f.;
  format T4406000 vx22f.;
  format T4565600 vx23f.;
  format T6141700 vx24f.;
  format T6141800 vx25f.;
  format T6141900 vx26f.;
  format T6209600 vx27f.;
  format T6209800 vx28f.;
  format Z0370900 vx29f.;
  format Z0371000 vx30f.;
  format Z0371100 vx31f.;
  format Z0371200 vx32f.;
  format Z0371300 vx33f.;
  format Z0371400 vx34f.;
  format Z0371500 vx35f.;
  format Z0371510 vx36f.;
  format Z0371511 vx37f.;
  format Z0371512 vx38f.;
  format Z9084900 vx39f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'MAR_COHABITATION_2009.01_XRND'n vx0f.;
  format 'MAR_COHABITATION_2009.02_XRND'n vx1f.;
  format 'MAR_COHABITATION_2009.03_XRND'n vx2f.;
  format 'MAR_COHABITATION_2009.04_XRND'n vx3f.;
  format 'MAR_COHABITATION_2009.05_XRND'n vx4f.;
  format 'MAR_COHABITATION_2009.06_XRND'n vx5f.;
  format 'MAR_COHABITATION_2009.07_XRND'n vx6f.;
  format 'MAR_COHABITATION_2009.08_XRND'n vx7f.;
  format 'MAR_COHABITATION_2009.09_XRND'n vx8f.;
  format 'MAR_COHABITATION_2009.10_XRND'n vx9f.;
  format 'MAR_COHABITATION_2009.11_XRND'n vx10f.;
  format 'MAR_COHABITATION_2009.12_XRND'n vx11f.;
  format 'PUBID_1997'n vx12f.;
  format 'KEY!SEX_1997'n vx13f.;
  format 'KEY!BDATE_M_1997'n vx14f.;
  format 'CV_SAMPLE_TYPE_1997'n vx16f.;
  format 'KEY!RACE_ETHNICITY_1997'n vx17f.;
  format 'ASVAB_MATH_VERBAL_SCORE_PCT_1999'n vx18f.;
  format 'YHEA-600_2008'n vx19f.;
  format 'YHEA-650_2008'n vx20f.;
  format 'YTEL-55_2008'n vx21f.;
  format 'YINC-1700_2009'n vx22f.;
  format 'YHEA-650_2009'n vx23f.;
  format 'YSAQ-000A000001_2010'n vx24f.;
  format 'YSAQ-000A000002_2010'n vx25f.;
  format 'YSAQ-000B_2010'n vx26f.;
  format 'YHEA-610_2010'n vx27f.;
  format 'YHEA-650_2010'n vx28f.;
  format 'CUMPARTNERS_CURRENT.01_XRND'n vx29f.;
  format 'CUMPARTNERS_CURRENT.02_XRND'n vx30f.;
  format 'CUMPARTNERS_CURRENT.03_XRND'n vx31f.;
  format 'CUMPARTNERS_CURRENT.04_XRND'n vx32f.;
  format 'CUMPARTNERS_CURRENT.05_XRND'n vx33f.;
  format 'CUMPARTNERS_CURRENT.06_XRND'n vx34f.;
  format 'CUMPARTNERS_CURRENT.07_XRND'n vx35f.;
  format 'CUMPARTNERS_CURRENT.08_XRND'n vx36f.;
  format 'CUMPARTNERS_CURRENT.09_XRND'n vx37f.;
  format 'CUMPARTNERS_CURRENT.10_XRND'n vx38f.;
  format 'CVC_HS_LEFT_HGC_XRND'n vx39f.;
run;
*/