#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 248430                            
   DATA_DOMAIN      : FAM                               
   USER_WHERE       : NULL                              
   FILE_TYPE        : NULL                              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : NULL                              
   N_OF_VARIABLES   : 114                               
   N_OF_OBSERVATIONS: 25775                             
   MAX_REC_LENGTH   : 196                               
   DATE & TIME      : August 29, 2018 @ 10:37:25
*************************************************************************
;

infix
      V10001               1 - 1           V10002               2 - 5           V10877               6 - 6     
      V10884               7 - 7           V11101               8 - 8           V11102               9 - 12    
      V11991              13 - 13          V12293              14 - 14          V12344              15 - 15    
      V12501              16 - 16          V12502              17 - 20          V13417              21 - 21    
      V13452              22 - 22          V13500              23 - 23          V13701              24 - 24    
      V13702              25 - 28          V14513              29 - 29          V14524              30 - 30    
      V14547              31 - 31          V14801              32 - 32          V14802              33 - 36    
      V15993              37 - 37          V15999              38 - 38          V16021              39 - 39    
      V16301              40 - 40          V16302              41 - 44          V17390              45 - 45    
      V17396              46 - 46          V17418              47 - 47          V17701              48 - 48    
      V17702              49 - 53          V18721              54 - 54          V18727              55 - 55    
      V18749              56 - 56          V19001              57 - 57          V19002              58 - 61    
      V20021              62 - 62          V20027              63 - 63          V20049              64 - 64    
      V20301              65 - 65          V20302              66 - 69          V21321              70 - 70    
      V21328              71 - 71          V21355              72 - 72          V21601              73 - 73    
      V21602              74 - 78          V23180              79 - 79          V23187              80 - 80    
      V23212              81 - 81          ER2001              82 - 82          ER2002              83 - 87    
      ER3853              88 - 88          ER3858              89 - 89          ER3883              90 - 90    
      ER5001              91 - 91          ER5002              92 - 96          ER6723              97 - 97    
      ER6728              98 - 98          ER6753              99 - 99          ER7001             100 - 100   
      ER7002             101 - 104         ER8969             105 - 105         ER8974             106 - 106   
      ER8999             107 - 107         ER10001            108 - 108         ER10002            109 - 113   
      ER11723            114 - 114         ER11727            115 - 115         ER11760            116 - 116   
      ER13001            117 - 117         ER13002            118 - 122         ER15447            123 - 123   
      ER15555            124 - 124         ER15836            125 - 125         ER17001            126 - 126   
      ER17002            127 - 130         ER19612            131 - 131         ER19720            132 - 132   
      ER19897            133 - 133         ER21001            134 - 134         ER21002            135 - 139   
      ER23009            140 - 140         ER23136            141 - 141         ER23334            142 - 142   
      ER25001            143 - 143         ER25002            144 - 148         ER26990            149 - 149   
      ER27113            150 - 150         ER27297            151 - 151         ER36001            152 - 152   
      ER36002            153 - 157         ER38202            158 - 158         ER39299            159 - 159   
      ER40472            160 - 160         ER42001            161 - 161         ER42002            162 - 166   
      ER44175            167 - 167         ER45272            168 - 168         ER46449            169 - 169   
      ER47301            170 - 170         ER47302            171 - 175         ER49494            176 - 176   
      ER50612            177 - 177         ER51810            178 - 178         ER53001            179 - 179   
      ER53002            180 - 184         ER55244            185 - 185         ER56360            186 - 186   
      ER57549            187 - 187         ER60001            188 - 188         ER60002            189 - 193   
      ER62366            194 - 194         ER63482            195 - 195         ER64671            196 - 196   
using "C:\Users\Ken831\Dropbox\Numerical VSL\PSID\code\Additions to panel\J248430.txt", clear 
;
label variable V10001        "RELEASE NUMBER"                           ;
label variable V10002        "1984 INTERVIEW NUMBER"                    ;
label variable V10877        "K91 H RATE HEALTH 84"                     ;
label variable V10884        "K98 WIFE HEALTH IN 84"                    ;
label variable V11101        "RELEASE NUMBER"                           ;
label variable V11102        "1985 INTERVIEW NUMBER"                    ;
label variable V11991        "H27 HEALTH NOW-HEAD"                      ;
label variable V12293        "N32 RACE OF WIFE (1 MEN)"                 ;
label variable V12344        "P6 HEALTH NOW-WIFE"                       ;
label variable V12501        "RELEASE NUMBER"                           ;
label variable V12502        "1986 INTERVIEW NUMBER"                    ;
label variable V13417        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V13452        "H37 STATUS OF HLTH  WIFE"                 ;
label variable V13500        "K19 RACE OF WIFE 1"                       ;
label variable V13701        "RELEASE NUMBER"                           ;
label variable V13702        "1987 INTERVIEW NUMBER"                    ;
label variable V14513        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V14524        "H13 STATUS OF HLTH-WIFE"                  ;
label variable V14547        "K19 RACE OF WIFE 1"                       ;
label variable V14801        "RELEASE NUMBER"                           ;
label variable V14802        "1988 INTERVIEW NUMBER"                    ;
label variable V15993        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V15999        "H8 STATUS OF HLTH-WIFE"                   ;
label variable V16021        "K19 RACE OF WIFE 1"                       ;
label variable V16301        "RELEASE NUMBER"                           ;
label variable V16302        "1989 INTERVIEW NUMBER"                    ;
label variable V17390        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V17396        "H8 STATUS OF HLTH-WIFE"                   ;
label variable V17418        "K19 RACE OF WIFE 1"                       ;
label variable V17701        "RELEASE NUMBER"                           ;
label variable V17702        "1990 INTERVEW NUMBER"                     ;
label variable V18721        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V18727        "H8 STATUS OF HLTH-WIFE"                   ;
label variable V18749        "L19 RACE OF WIFE 1"                       ;
label variable V19001        "RELEASE NUMBER"                           ;
label variable V19002        "1991 INTERVIEW NUMBER"                    ;
label variable V20021        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V20027        "H8 STATUS OF HLTH-WIFE"                   ;
label variable V20049        "K19 RACE OF WIFE 1"                       ;
label variable V20301        "RELEASE NUMBER"                           ;
label variable V20302        "1992 INTERVIEW NUMBER"                    ;
label variable V21321        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable V21328        "H28 STATUS OF HLTH-WIFE"                  ;
label variable V21355        "L19 RACE OF WIFE 1"                       ;
label variable V21601        "RELEASE NUMBER"                           ;
label variable V21602        "1993 INTERVIEW NUMBER"                    ;
label variable V23180        "H1 HD HEALTH STATUS"                      ;
label variable V23187        "H28 WF HEALTH STATUS"                     ;
label variable V23212        "K19 RACE OF WF-1ST MENTION"               ;
label variable ER2001        "RELEASE NUMBER"                           ;
label variable ER2002        "1994 INTERVIEW #"                         ;
label variable ER3853        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER3858        "H28 STATUS OF HLTH-WIFE"                  ;
label variable ER3883        "K19 RACE OF WIFE      1"                  ;
label variable ER5001        "RELEASE NUMBER"                           ;
label variable ER5002        "1995 INTERVIEW #"                         ;
label variable ER6723        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER6728        "H28 STATUS OF HLTH-WIFE"                  ;
label variable ER6753        "K19 RACE OF WIFE      1"                  ;
label variable ER7001        "RELEASE NUMBER"                           ;
label variable ER7002        "1996 INTERVIEW #"                         ;
label variable ER8969        "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER8974        "H28 STATUS OF HLTH-WIFE"                  ;
label variable ER8999        "K19 RACE OF WIFE      1"                  ;
label variable ER10001       "RELEASE NUMBER"                           ;
label variable ER10002       "1997 INTERVIEW #"                         ;
label variable ER11723       "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER11727       "H8 STATUS OF HEALTH-WIFE"                 ;
label variable ER11760       "K34/87 RACE OF WIFE 1"                    ;
label variable ER13001       "RELEASE NUMBER"                           ;
label variable ER13002       "1999 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER15447       "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER15555       "H25 STATUS OF HEALTH"                     ;
label variable ER15836       "K34/87 RACE OF WIFE 1"                    ;
label variable ER17001       "RELEASE NUMBER"                           ;
label variable ER17002       "2001 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER19612       "H1 STATUS OF HEALTH-HEAD"                 ;
label variable ER19720       "H25 STATUS OF HEALTH"                     ;
label variable ER19897       "K34/87 RACE OF WIFE 1"                    ;
label variable ER21001       "RELEASE NUMBER"                           ;
label variable ER21002       "2003 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER23009       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER23136       "H25 HEALTH STATUS-WIFE"                   ;
label variable ER23334       "K34/87 RACE OF WIFE 1"                    ;
label variable ER25001       "RELEASE NUMBER"                           ;
label variable ER25002       "2005 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER26990       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER27113       "H25 HEALTH STATUS-WIFE"                   ;
label variable ER27297       "K34 RACE OF WIFE-MENTION 1"               ;
label variable ER36001       "RELEASE NUMBER"                           ;
label variable ER36002       "2007 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER38202       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER39299       "H1 HEALTH STATUS-WIFE"                    ;
label variable ER40472       "K40 RACE OF WIFE-MENTION 1"               ;
label variable ER42001       "RELEASE NUMBER"                           ;
label variable ER42002       "2009 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER44175       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER45272       "H1 HEALTH STATUS-WIFE"                    ;
label variable ER46449       "K40 RACE OF WIFE-MENTION 1"               ;
label variable ER47301       "RELEASE NUMBER"                           ;
label variable ER47302       "2011 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER49494       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER50612       "H1 HEALTH STATUS-WIFE"                    ;
label variable ER51810       "K40 RACE OF WIFE-MENTION 1"               ;
label variable ER53001       "RELEASE NUMBER"                           ;
label variable ER53002       "2013 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER55244       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER56360       "H1 HEALTH STATUS-WIFE"                    ;
label variable ER57549       "K40 RACE OF WIFE-MENTION 1"               ;
label variable ER60001       "RELEASE NUMBER"                           ;
label variable ER60002       "2015 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER62366       "H1 HEALTH STATUS-HEAD"                    ;
label variable ER63482       "H1 HEALTH STATUS-SPOUSE"                  ;
label variable ER64671       "K40 RACE OF SPOUSE-MENTION 1"             ;

save "C:\Users\Ken831\Dropbox\Numerical VSL\PSID\code\Additions to panel\healthadd.dta", replace
