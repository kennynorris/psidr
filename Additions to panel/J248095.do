#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 248095                            
   DATA_DOMAIN      : FAM                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : NULL                              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 7                                 
   N_OF_OBSERVATIONS: 8511                              
   MAX_REC_LENGTH   : 10                                
   DATE & TIME      : August 16, 2018 @ 11:52:07
*************************************************************************
;

infix
      ER7001               1 - 1           ER7002               2 - 5           ER9103               6 - 6     
      ER9104               7 - 7           ER9105               8 - 8           ER9106               9 - 9     
      ER9107              10 - 10    
using "C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID/data/J248095.txt", clear 
;
label variable ER7001        "RELEASE NUMBER"                           ;
label variable ER7002        "1996 INTERVIEW #"                         ;
label variable ER9103        "M1 ONE THIRD INCOME CUT"                  ;
label variable ER9104        "M2 ONE HALF INCOME CUT"                   ;
label variable ER9105        "M3 20 PERCENT INCOME CUT"                 ;
label variable ER9106        "M4 10 PERCENT INCOME CUT"                 ;
label variable ER9107        "M5 75 PERCENT INCOME CUT"                 ;

#delimit cr 

drop ER7001

rename ER9103 q1risk1996
rename ER9104 q2risk1996
rename ER9105 q3risk1996
rename ER9106 q4risk1996
rename ER9107 q5risk1996



save "C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID/data/PSID_riskvars", replace
