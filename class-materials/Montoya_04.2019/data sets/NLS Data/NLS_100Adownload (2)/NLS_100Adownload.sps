file handle pcdat/name='NLS_100Adownload.dat' /lrecl=147.
data list file pcdat free /
  E7022901 (F3)
  E7022902 (F3)
  E7022903 (F3)
  E7022904 (F3)
  E7022905 (F3)
  E7022906 (F3)
  E7022907 (F3)
  E7022908 (F3)
  E7022909 (F3)
  E7022910 (F3)
  E7022911 (F3)
  E7022912 (F3)
  R0000100 (F4)
  R0536300 (F2)
  R0536401 (F2)
  R0536402 (F4)
  R1235800 (F2)
  R1482600 (F2)
  R9829600 (F6)
  T3145000 (F2)
  T3145300 (F2)
  T3162400 (F2)
  T4406000 (F6)
  T4565600 (F2)
  T6141700 (F2)
  T6141800 (F2)
  T6141900 (F3)
  T6209600 (F2)
  T6209800 (F2)
  Z0370900 (F2)
  Z0371000 (F2)
  Z0371100 (F2)
  Z0371200 (F2)
  Z0371300 (F2)
  Z0371400 (F2)
  Z0371500 (F2)
  Z0371510 (F2)
  Z0371511 (F2)
  Z0371512 (F2)
  Z9084900 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  E7022901  "2009 MAR: COHABIT STAT MO L1"
  E7022902  "2009 MAR: COHABIT STAT MO L2"
  E7022903  "2009 MAR: COHABIT STAT MO L3"
  E7022904  "2009 MAR: COHABIT STAT MO L4"
  E7022905  "2009 MAR: COHABIT STAT MO L5"
  E7022906  "2009 MAR: COHABIT STAT MO L6"
  E7022907  "2009 MAR: COHABIT STAT MO L7"
  E7022908  "2009 MAR: COHABIT STAT MO L8"
  E7022909  "2009 MAR: COHABIT STAT MO L9"
  E7022910  "2009 MAR: COHABIT STAT MO L10"
  E7022911  "2009 MAR: COHABIT STAT MO L11"
  E7022912  "2009 MAR: COHABIT STAT MO L12"
  R0000100  "PUBID - YTH ID CODE 1997"
  R0536300  "KEY!SEX (SYMBOL) 1997"
  R0536401  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0536402  "KEY!BDATE M/Y (SYMBOL) 1997"
  R1235800  "CV_SAMPLE_TYPE 1997"
  R1482600  "KEY!RACE_ETHNICITY (SYMBOL) 1997"
  R9829600  "ASVAB_MATH_VERBAL_SCORE_PCT 1999"
  T3145000  "TIMES/WK R EXERCISE 30+ MIN 2008"
  T3145300  "HRS/NIGHT R SLEEPS 2008"
  T3162400  "HOW R RATES HIS CURRENT LIFE 2008"
  T4406000  "TTL INC WAGES, SALARY PAST YR 2009"
  T4565600  "HRS/NIGHT R SLEEPS 2009"
  T6141700  "R'S HEIGHT - FEET 2010"
  T6141800  "R'S HEIGHT - INCHES 2010"
  T6141900  "R'S WEIGHT - POUNDS 2010"
  T6209600  "HRS/WK R USES A COMPUTER 2010"
  T6209800  "HRS/NIGHT R SLEEPS 2010"
  Z0370900  "CUMPARTNERS, CURRENT (ROS ITEM) L1"
  Z0371000  "CUMPARTNERS, CURRENT (ROS ITEM) L2"
  Z0371100  "CUMPARTNERS, CURRENT (ROS ITEM) L3"
  Z0371200  "CUMPARTNERS, CURRENT (ROS ITEM) L4"
  Z0371300  "CUMPARTNERS, CURRENT (ROS ITEM) L5"
  Z0371400  "CUMPARTNERS, CURRENT (ROS ITEM) L6"
  Z0371500  "CUMPARTNERS, CURRENT (ROS ITEM) L7"
  Z0371510  "CUMPARTNERS, CURRENT (ROS ITEM) L8"
  Z0371511  "CUMPARTNERS, CURRENT (ROS ITEM) L9"
  Z0371512  "CUMPARTNERS, CURRENT (ROS ITEM) L10"
  Z9084900  "CVC_HS_LEFT_HGC"
.

* Recode continuous values. 
* recode 
    / 
 R0000100 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    / 
 R9829600 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 19999 eq 1000)
    (20000 thru 39999 eq 20000)
    (40000 thru 59999 eq 40000)
    (60000 thru 79999 eq 60000)
    (80000 thru 100000 eq 80000)
    / 
 T3145300 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T4406000 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 T4565600 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
    / 
 T6141900 
    (0 thru 0 eq 0)
    (1 thru 24 eq 1)
    (25 thru 49 eq 25)
    (50 thru 74 eq 50)
    (75 thru 99 eq 75)
    (100 thru 124 eq 100)
    (125 thru 149 eq 125)
    (150 thru 174 eq 150)
    (175 thru 199 eq 175)
    (200 thru 224 eq 200)
    (225 thru 249 eq 225)
    (250 thru 99999999 eq 250)
    / 
 T6209800 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 999 eq 10)
.

* value labels
 E7022901
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022902
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022903
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022904
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022905
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022906
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022907
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022908
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022909
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022910
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022911
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 E7022912
    101 "Cohabiting with partner 1"
    102 "Cohabiting with partner 2"
    103 "Cohabiting with partner 3"
    104 "Cohabiting with partner 4"
    105 "Cohabiting with partner 5"
    106 "Cohabiting with partner 6"
    107 "Cohabiting with partner 7"
    108 "Cohabiting with partner 8"
    109 "Cohabiting with partner 9"
    110 "Cohabiting with partner 10"
    201 "Cohabiting with spouse 1"
    202 "Cohabiting with spouse 2"
    203 "Cohabiting with spouse 3"
    204 "Cohabiting with spouse 4"
    205 "Cohabiting with spouse 5"
    206 "Cohabiting with spouse 6"
    207 "Cohabiting with spouse 7"
    208 "Cohabiting with spouse 8"
    209 "Cohabiting with spouse 9"
    210 "Cohabiting with spouse 10"
    /
 R0000100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    /
 R0536300
    0 "No Information"
    1 "Male"
    2 "Female"
    /
 R0536401
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R1235800
    0 "Oversample"
    1 "Cross-sectional"
    /
 R1482600
    1 "Black"
    2 "Hispanic"
    3 "Mixed Race (Non-Hispanic)"
    4 "Non-Black / Non-Hispanic"
    /
 R9829600
    0 "0"
    1 "1 TO 999: .001-.999"
    1000 "1000 TO 19999: 1.000-19.999"
    20000 "20000 TO 39999: 20.000-39.999"
    40000 "40000 TO 59999: 40.000-59.999"
    60000 "60000 TO 79999: 60.000-79.999"
    80000 "80000 TO 100000: 80.000-100.000"
    /
 T3145000
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    /
 T3145300
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T3162400
    1 "1 EXTREMELY DISSATISFIED"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 EXTREMELY SATISIFIED"
    /
 T4406000
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 T4565600
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 T6141700
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    /
 T6141800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    11 "11"
    12 "12"
    /
 T6141900
    0 "0"
    1 "1 TO 24"
    25 "25 TO 49"
    50 "50 TO 74"
    75 "75 TO 99"
    100 "100 TO 124"
    125 "125 TO 149"
    150 "150 TO 174"
    175 "175 TO 199"
    200 "200 TO 224"
    225 "225 TO 249"
    250 "250 TO 99999999: 250+"
    /
 T6209600
    1 "None"
    2 "Less than 1 hour a week"
    3 "1 to 3 hours a week"
    4 "4 to 6 hours a week"
    5 "7 to 9 hours a week"
    6 "10 hours or more a week"
    /
 T6209800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 999: 10+"
    /
 Z0370900
    0 "No"
    1 "Yes"
    /
 Z0371000
    0 "No"
    1 "Yes"
    /
 Z0371100
    0 "No"
    1 "Yes"
    /
 Z0371200
    0 "No"
    1 "Yes"
    /
 Z0371300
    0 "No"
    1 "Yes"
    /
 Z0371400
    0 "No"
    1 "Yes"
    /
 Z0371500
    0 "No"
    1 "Yes"
    /
 Z0371510
    0 "No"
    1 "Yes"
    /
 Z0371511
    0 "No"
    1 "Yes"
    /
 Z0371512
    0 "No"
    1 "Yes"
    /
 Z9084900
    0 "None"
    1 "1st grade"
    2 "2nd grade"
    3 "3rd grade"
    4 "4th grade"
    5 "5th grade"
    6 "6th grade"
    7 "7th grade"
    8 "8th grade"
    9 "9th grade"
    10 "10th grade"
    11 "11th grade"
    12 "12th grade"
    95 "Ungraded"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (E7022901 = MAR_COHABITATION_2009_01_XRND)   /* MAR_COHABITATION_2009.01 */
  (E7022902 = MAR_COHABITATION_2009_02_XRND)   /* MAR_COHABITATION_2009.02 */
  (E7022903 = MAR_COHABITATION_2009_03_XRND)   /* MAR_COHABITATION_2009.03 */
  (E7022904 = MAR_COHABITATION_2009_04_XRND)   /* MAR_COHABITATION_2009.04 */
  (E7022905 = MAR_COHABITATION_2009_05_XRND)   /* MAR_COHABITATION_2009.05 */
  (E7022906 = MAR_COHABITATION_2009_06_XRND)   /* MAR_COHABITATION_2009.06 */
  (E7022907 = MAR_COHABITATION_2009_07_XRND)   /* MAR_COHABITATION_2009.07 */
  (E7022908 = MAR_COHABITATION_2009_08_XRND)   /* MAR_COHABITATION_2009.08 */
  (E7022909 = MAR_COHABITATION_2009_09_XRND)   /* MAR_COHABITATION_2009.09 */
  (E7022910 = MAR_COHABITATION_2009_10_XRND)   /* MAR_COHABITATION_2009.10 */
  (E7022911 = MAR_COHABITATION_2009_11_XRND)   /* MAR_COHABITATION_2009.11 */
  (E7022912 = MAR_COHABITATION_2009_12_XRND)   /* MAR_COHABITATION_2009.12 */
  (R0000100 = PUBID_1997) 
  (R0536300 = KEY_SEX_1997)   /* KEY!SEX */
  (R0536401 = KEY_BDATE_M_1997)   /* KEY!BDATE_M */
  (R0536402 = KEY_BDATE_Y_1997)   /* KEY!BDATE_Y */
  (R1235800 = CV_SAMPLE_TYPE_1997) 
  (R1482600 = KEY_RACE_ETHNICITY_1997)   /* KEY!RACE_ETHNICITY */
  (R9829600 = ASVAB_MATH_VERBAL_SCORE_PCT_1999) 
  (T3145000 = YHEA_600_2008)   /* YHEA-600 */
  (T3145300 = YHEA_650_2008)   /* YHEA-650 */
  (T3162400 = YTEL_55_2008)   /* YTEL-55 */
  (T4406000 = YINC_1700_2009)   /* YINC-1700 */
  (T4565600 = YHEA_650_2009)   /* YHEA-650 */
  (T6141700 = YSAQ_000A000001_2010)   /* YSAQ-000A000001 */
  (T6141800 = YSAQ_000A000002_2010)   /* YSAQ-000A000002 */
  (T6141900 = YSAQ_000B_2010)   /* YSAQ-000B */
  (T6209600 = YHEA_610_2010)   /* YHEA-610 */
  (T6209800 = YHEA_650_2010)   /* YHEA-650 */
  (Z0370900 = CUMPARTNERS_CURRENT_01_XRND)   /* CUMPARTNERS_CURRENT.01 */
  (Z0371000 = CUMPARTNERS_CURRENT_02_XRND)   /* CUMPARTNERS_CURRENT.02 */
  (Z0371100 = CUMPARTNERS_CURRENT_03_XRND)   /* CUMPARTNERS_CURRENT.03 */
  (Z0371200 = CUMPARTNERS_CURRENT_04_XRND)   /* CUMPARTNERS_CURRENT.04 */
  (Z0371300 = CUMPARTNERS_CURRENT_05_XRND)   /* CUMPARTNERS_CURRENT.05 */
  (Z0371400 = CUMPARTNERS_CURRENT_06_XRND)   /* CUMPARTNERS_CURRENT.06 */
  (Z0371500 = CUMPARTNERS_CURRENT_07_XRND)   /* CUMPARTNERS_CURRENT.07 */
  (Z0371510 = CUMPARTNERS_CURRENT_08_XRND)   /* CUMPARTNERS_CURRENT.08 */
  (Z0371511 = CUMPARTNERS_CURRENT_09_XRND)   /* CUMPARTNERS_CURRENT.09 */
  (Z0371512 = CUMPARTNERS_CURRENT_10_XRND)   /* CUMPARTNERS_CURRENT.10 */
  (Z9084900 = CVC_HS_LEFT_HGC_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=E7022901, 
  E7022902, 
  E7022903, 
  E7022904, 
  E7022905, 
  E7022906, 
  E7022907, 
  E7022908, 
  E7022909, 
  E7022910, 
  E7022911, 
  E7022912, 
  R0000100, 
  R0536300, 
  R0536401, 
  R0536402, 
  R1235800, 
  R1482600, 
  R9829600, 
  T3145000, 
  T3145300, 
  T3162400, 
  T4406000, 
  T4565600, 
  T6141700, 
  T6141800, 
  T6141900, 
  T6209600, 
  T6209800, 
  Z0370900, 
  Z0371000, 
  Z0371100, 
  Z0371200, 
  Z0371300, 
  Z0371400, 
  Z0371500, 
  Z0371510, 
  Z0371511, 
  Z0371512, 
  Z9084900.

*--- Tabulations using qname variables.
*freq var=MAR_COHABITATION_2009_01_XRND, 
  MAR_COHABITATION_2009_02_XRND, 
  MAR_COHABITATION_2009_03_XRND, 
  MAR_COHABITATION_2009_04_XRND, 
  MAR_COHABITATION_2009_05_XRND, 
  MAR_COHABITATION_2009_06_XRND, 
  MAR_COHABITATION_2009_07_XRND, 
  MAR_COHABITATION_2009_08_XRND, 
  MAR_COHABITATION_2009_09_XRND, 
  MAR_COHABITATION_2009_10_XRND, 
  MAR_COHABITATION_2009_11_XRND, 
  MAR_COHABITATION_2009_12_XRND, 
  PUBID_1997, 
  KEY_SEX_1997, 
  KEY_BDATE_M_1997, 
  KEY_BDATE_Y_1997, 
  CV_SAMPLE_TYPE_1997, 
  KEY_RACE_ETHNICITY_1997, 
  ASVAB_MATH_VERBAL_SCORE_PCT_1999, 
  YHEA_600_2008, 
  YHEA_650_2008, 
  YTEL_55_2008, 
  YINC_1700_2009, 
  YHEA_650_2009, 
  YSAQ_000A000001_2010, 
  YSAQ_000A000002_2010, 
  YSAQ_000B_2010, 
  YHEA_610_2010, 
  YHEA_650_2010, 
  CUMPARTNERS_CURRENT_01_XRND, 
  CUMPARTNERS_CURRENT_02_XRND, 
  CUMPARTNERS_CURRENT_03_XRND, 
  CUMPARTNERS_CURRENT_04_XRND, 
  CUMPARTNERS_CURRENT_05_XRND, 
  CUMPARTNERS_CURRENT_06_XRND, 
  CUMPARTNERS_CURRENT_07_XRND, 
  CUMPARTNERS_CURRENT_08_XRND, 
  CUMPARTNERS_CURRENT_09_XRND, 
  CUMPARTNERS_CURRENT_10_XRND, 
  CVC_HS_LEFT_HGC_XRND.
