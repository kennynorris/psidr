/* 
Author: Ken Norris

Date: July 2018

Last Update: August 2018

Description: This code creates a uniform index across education variables and 
creates variabels that correspond to the CFOI data for industry and occupation. 
SIC pre-2000 & NAICS post-.

*August 2018 UPDATE*

NO LONGER NEEDED. FOUND EDUC VAR IN CODEBOOK TO DO THIS FOR ME

****NB: Some years [70 - 74] and [85-90] require recode like so: ***
* Done * 
*/

clear

global dropbox `"C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID/data"'


*use "$dropbox\data\Stata\PSID_allyears.dta", clear


*Use UMICH VERSION HERE
use "$dropbox\PSID_cleaned.dta", clear

* Clean educ first then convert the occ and ind codes for different years to 
* match CFOI data

local educyrs educ1970 educ1971 educ1972 educ_spouse1972 educ1973 educ_spouse1973 educ1974 educ_spouse1974 ///
	 educ1985 educ_spouse1985 educ1986 educ_spouse1986  educ1987 educ_spouse1987 ///
	 educ1988 educ_spouse1988  educ1989 educ_spouse1989 educ_spouse1990 educ1990


foreach var of local educyrs{	
	replace `var' = 11 if `var' <= 3
	replace `var' = 12 if `var' >= 4 & `var' < 6
	replace	`var' = 14 if `var' == 6
	replace `var' = 16 if `var' == 7
	replace `var' = 17 if `var' == 8	
}


*Same strategy using IND and OCC Crosswalks - can probably do an order on these ones*

* FIRST HANDLING INDUSTRY THEN MOVE ON TO OCCUPATON*
* CHECK W JOE IF HE WANTS 2 DIGIT OR 1 DIGIT OCCUPATION*

* For those years where coding to NAICS (2001-2015)


*** INDUSTRY CONCORDANCE ***

order industry*
unab industrysic: industry1969 - industry_spouse1999
unab industrynaics: industry2001 - industry_spouse2015


*Correspondence to SIC here*
foreach var of local industrysic{

	#delimit; 
		
		recode `var'
		(10=1)       (11=2)       (12/30=7)       (31=8)       (32=9)    (40=10)      (41=12)    
		(50=14)      (42=13)      (60=15)      (100/122=20) (130=21)     (132/142=22)
		(150=22)     (151/152=23) (230/241=24) (242=25)     (160/162=26) (171/172=27) (180/192=28)
		(200/201=29) (210/212=30) (220/222=31) (250/262=32) (270/280=33) (281/301=34) (310/332=35)
		(340/350=36) (351/370=37) (371/381=38) (390/392=39) (400=40)     (401/402=41) (410/411=42) 
		(412=43)     (420=44)     (421=45)     (422=46)     (432=47)     (440/442=48) (450/472=49)  
		(500/532=50) (540/571=51) (580/590=52) (591/600=53) (601/611=54) (612/622=55) (623/630=56) 
		(632/640=57) (641=58)     (642/691=59) (700/701=60) (702=61)     (710 = 62)   (711=63)     
		(712=65)     (721/741=73) (742/751=75) (752/760=76) (761=88)     (762/770=70)
		(771/791=72) (800/801=78) (802/810=79) (812/840=80) (841=81)     (842/860=82) (861/871=83) 
		(872=84)     (873/881=86) (882/892=87) (893=89) (900/901=91) (910=92) (921=93) (922=94) (930=95) 
		(931=95)     (932=97)     (989/1000=98), gen(CFOI_`var');
	
	#delimit cr
}

*Correspondence to NAICS here*

foreach var of local industrynaics{

	#delimit;
		
		replace `var' = `var'*10;
		
		recode `var'	
		(170 = 110)       (180 = 112)       (190/270 = 113)   (280 = 114)       (290 = 115)       (370 = 211)       (380/480 = 212)   (490 = 213)       
		(570/690 = 221)   (770 = 230)       (1070/1290 = 311) (1370/1390 = 312) (1470/1490 = 313) (1570/1670 = 314) (1680/1770 = 315) (1790 = 316) 
		(3770/3870 = 321) (1870/1890 = 322) (1990 = 323)      (2070/2090 = 324) (2170/2290 = 325) (2370/2390 = 326) (2470/2590 = 327) (2670/2780 = 331) 
		(2990 = 331)      (2790/2980 = 332) (3070/3290 = 333) (3360/3390 = 334) (3470/3490 = 335) (3570/3690 = 336) (3890 = 337)      (3960/3990 = 339) 
		(4070/4290 = 423) (4370/4585 = 424) (4590 = 420)      (4670/4690 = 441) (4770 = 442)      (4780/4790 = 443) (4870/4890 = 444) (4970/4990 = 445) 
		(5070/5080 = 446) (5090 = 447)      (5170/5190 = 448) (5270/5370 = 451) (5380/5390 = 452) (5470/5580 = 453) (5590/5790 = 454) (6070/6290 = 480) 
		(6370/6380 = 491) (6390 = 493)      (6470/6490 = 511) (6570/6590 = 512) (6670/6695 = 517) (6770/6790 = 519) (6870 = 552)      (6880/6890 = 552)
		(6970 = 553)      (6990 = 524)      (7070 = 531)      (7080/7180 = 532) (7190 = 533)      (7270/7490 = 541) (7570 = 551)      (7580/7790 = 561) 
		(7860/7890 = 611) (7970/8180 = 621) (8190 = 622)      (8270/8290 = 623) (8370/8480 = 624) (8560 = 711)      (8570 = 712)      (8580/8590 = 713)
		(8660/8670 = 720) (8680/8690 = 722) (8770/8890 = 811) (8970/9090 = 812) (9160/9190 = 813) (9290 = 814)      (9370/9590 = 921) (9670/9890 = 928) 
		(. = 98), gen(CFOI_`var');
	
	#delimit cr
}


*** OCCUPATION CONCORDANCE double check if the major groups change at all ***

order occupation*
unab occupationsoc: occupation1969 - occupation_spouse2015

foreach var of local occupationsoc{
	#delimit ; 
		
		recode `var' 
		(001/043 = 11)    (050/095 = 13)    (100/124 = 15)    (130/155 = 17)     
		(160/196 = 19)    (200/206 = 21)    (210/215 = 23)    (220/255 = 25)
		(260/296 = 27)    (300/354 = 29)    (360/365 = 31)    (370/395 = 33)
		(400/416 = 35)    (420/425 = 37)    (430/465 = 39)    (470/496 = 41)    
		(500/593 = 43)    (600/613 = 45)    (620/694 = 47)    (700/762 = 49)    
		(770/896 = 51)    (900/975 = 53)    (980/982 = 55), gen(CFOI_`var');
		
	#delimit cr
}

drop `industrysic' `industrynaics' `occupationsoc'

*Merging in risk prefs 

merge m:1 ER7002 using "$dropbox/PSID_riskvars", keep(master matched) nogen

*Create individual id for reshape (since obs don't carry over all years)

gen individual_id = _n
label variable individual_id "ID"

*dropping the release number, 1968 id and yearly id# from each wave
ds, has(varl *RELEASE*)
drop `r(varlist)'

drop famid*

drop V* ER*

reshape long hr_worked hr_worked_spouse income ///
			 income_spouse totalhh_taxable_income totalincome state ///
			 age age_spouse gender hispanic race hispanic_spouse race_spouse ///
			 weekpryear_work hourperweek_work weekpryear_work_spouse hourperweek_work_spouse ///
			 hourly_wage hourly_wage_spouse fam_weight educ educ_spouse ///
			 health health_spouse union union_spouse CFOI_industry CFOI_industry_spouse ///
			 CFOI_occupation CFOI_occupation_spouse, i(individual_id) j(year)
			 

save "$dropbox\PSID_panel.dta", replace
