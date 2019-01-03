/* 
Author: Ken Norris

Date: August 2018

Last Update: August 2018

Description: This code produces summary stats for the PSID data and constructs a 
measure for risk aversion following the procedure outlined in Sahm et al (2008). 

Link to paper: 

https://www.tandfonline.com/doi/pdf/10.1198/016214508000000139?casa_token=2lSQI8fnNlYAAAAA%3ACnw9VmPZniyILexDgELlSnie06U3AqMVNIZ7IPl0QZTisAWdPuMVX5mfcpgeV_2lsdI6ZOZS1u7O-g&

*/

clear
global dropbox `"C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID/data"'


*Use UMICH VERSION HERE
use "$dropbox\PSID_panel.dta", clear

*clean up weird cases of DK answers here*

replace hourperweek_work = 0 if hourperweek_work > 120
replace hourperweek_work_spouse = 0 if hourperweek_work_spouse > 120


replace hourly_wage = 0 if hourly_wage > 900
replace hourly_wage_spouse = 0 if hourly_wage_spouse > 900

replace hr_worked= 0 if hr_worked > 5000
replace hr_worked_spouse = 0 if hr_worked_spouse > 5000

replace income = 0 if income > 9999000
replace income_spouse = 0 if income_spouse > 9999000

replace totalhh_taxable_income = 0 if totalhh_taxable_income > 100000000

/*
********************************************************************************
Summary stats including mean, sd, and counts for:
	Hourly wage
	Total earnings
	Hours worked
	Total heads of household per year working 
	Gender share
	Black share
	Hispanic share
	Share of heads of household working 
	Share of spouses working whose head of household works
********************************************************************************
*/

gen hh_working = 0
replace hh_working = 1 if hr_worked > 0
gen hh_spouse_working = 0
replace hh_spouse_working = 1 if (hr_worked_spouse > 0 & hh_working == 1)

gen black = 0
replace black = 1 if race == 2


local pvars black hh_working hh_spouse_working

foreach var of varlist `pvars'{
	egen `var'_share = mean(`var')
}

estpost sum hourly_wage hourly_wage_spouse income income_spouse totalhh_taxable_income ///
			hourperweek_work hourperweek_work_spouse hh_working gender ///
			black_share hh_working_share hh_spouse_working_share

esttab using sum.rtf, cells("count(fmt(0)) mean(fmt(2)) sd(fmt(2))") ///
					  ti("selected PSID summary stats") nonumber replace
		
		
		
/*
********************************************************************************

Risk aversion instructions re: construction

Assumption: True risk tolerance follows a log normal distribution 

Use standard maxmimum likelihood methods to estimate mean and variance of log
risk tolerance in the population. 

Has table in paper.. Using this to assign some scalars to different risk levels

recode 1 to risk averse values
if 5, answered No
*/


gen riskaversion1996 = 0 

replace riskaversion1996 = 6.7 if q1risk1996 == 5 & q3risk1996 == 5 & q4risk1996 == 5 /* Category 1 */
replace riskaversion1996 = 4.2 if q1risk1996 == 5 & q3risk1996 == 5 & q4risk1996 == 1 /* Category 2 */
replace riskaversion1996 = 3.5 if q1risk1996 == 5 & q3risk1996 == 1					  /* Category 3 */
replace riskaversion1996 = 2.8 if q1risk1996 == 5 & q2risk1996 == 5  /* Category 4 */
replace riskaversion1996 = 2.2 if q1risk1996 == 5 & q3risk1996 == 1 & q5risk1996 == 5 /* Category 5 */
replace riskaversion1996 = 1.4 if q1risk1996 == 1 & q2risk1996 == 1 & q5risk1996 == 1 /* Category 6 */

save "$dropbox\PSID_panel_riskaversion.dta", replace











		
		
