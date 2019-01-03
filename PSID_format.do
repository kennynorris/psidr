
use "C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID_kn/PSID_fromweb.dta", clear

label define ER10001L  ///
       1 "Release number 1 - April 1999"  ///
       2 "Release number 2 - May 1999"  ///
       3 "Release number 3- June 1999"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"  ///
       7 "Release number 7 - March 2016"

label define ER10010L  ///
       1 "Male"  ///
       2 "Female"

label define ER10090L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not working for money now; works for self only or also employed by someone else; current job not covered by union contract"
forvalues n = 1/52 {
    label define ER10231L `n' "Actual number of weeks"  , modify
}
label define ER10231L       97 "All the rest"  , modify
label define ER10231L       98 "DK"  , modify
label define ER10231L       99 "NA; refused"  , modify
label define ER10231L        0 "Inap.: did not work at all in 1996; not working for money now"  , modify

label define ER10572L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'

label define ER11723L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER11727L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER11760L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER11848L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER12221L `n' "Actual state (PSID State code)"  , modify
}
label define ER12221L       99 "DK; NA"  , modify
label define ER12221L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER12222L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER12222L `n' "Actual number"  , modify
}
label define ER12222L       17 "At least some post-graduate work"  , modify
label define ER12222L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER12223L `n' "Actual number"  , modify
}
label define ER12223L       17 "At least some post-graduate work"  , modify
label define ER12223L       99 "NA; DK"  , modify
label define ER12223L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER13001L  ///
       1 "Release number 1 - August 2001"  ///
       2 "Release number 2 - October 2001"  ///
       3 "Release number 3 - January 2002"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"
forvalues n = 1/51 {
    label define ER13004L `n' "Actual state (PSID State code)"  , modify
}
label define ER13004L       99 "DK; NA"  , modify
label define ER13004L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER13011L  ///
       1 "Male"  ///
       2 "Female"

label define ER13214L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not working for money now; works for self only or also employed by someone else; current job not covered by union contract"
forvalues n = 1/52 {
    label define ER13362L `n' "Actual number of weeks"  , modify
}
label define ER13362L       97 "All the rest"  , modify
label define ER13362L       98 "DK"  , modify
label define ER13362L       99 "NA; refused"  , modify
label define ER13362L        0 "Inap.: did not work at all in 1998; not working for money now"  , modify

label define ER13726L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'

label define ER15447L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       0 "Wild code"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER15555L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER15836L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER15928L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
label define ER16516L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER16516L `n' "Actual number"  , modify
}
label define ER16516L       17 "At least some post-graduate work"  , modify
label define ER16516L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER16517L `n' "Actual number"  , modify
}
label define ER16517L       17 "At least some post-graduate work"  , modify
label define ER16517L       99 "NA; DK"  , modify
label define ER16517L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER17001L  ///
       1 "Release number 1 - November 2002"  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - November 2013"  ///
       4 "Release number 4 - February 2014"  ///
       5 "Release number 5 - January 2016"  ///
       6 "Release number 6 - November 2017"
forvalues n = 1/51 {
    label define ER17004L `n' "Actual state (PSID State code)"  , modify
}
label define ER17004L       99 "DK; NA"  , modify
label define ER17004L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER17014L  ///
       1 "Male"  ///
       2 "Female"

label define ER17225L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not working for money now; works for self only or also employed by someone else; current job not covered by union contract"
forvalues n = 1/52 {
    label define ER17391L `n' "Actual number of weeks"  , modify
}
label define ER17391L       97 "All the rest"  , modify
label define ER17391L       98 "DK"  , modify
label define ER17391L       99 "NA; refused"  , modify
label define ER17391L        0 "Inap.: did not work at all in 2000; not working for money now"  , modify

label define ER17795L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'

label define ER19612L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER19720L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER19897L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER19989L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER2001L  ///
       1 "Release number 1 - August 1995"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER2007L `n' "Actual age"  , modify
}
label define ER2007L       97 "Ninety-seven years of age or older"  , modify
label define ER2007L        0 "Wild code"  , modify
label define ER2007L       99 "NA; DK"  , modify

label define ER2008L  ///
       1 "Male"  ///
       2 "Female"  ///
       0 "Wild code"
label define ER2009L        0 `"No wife/"wife" in FU: Head is female or single male"'  , modify
forvalues n = 14/96 {
    label define ER2009L `n' "Actual age"  , modify
}
label define ER2009L       97 "Ninety-seven years of age or older"  , modify
label define ER2009L       99 "NA; DK"  , modify
label define ER20457L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER20457L `n' "Actual number"  , modify
}
label define ER20457L       17 "At least some post-graduate work"  , modify
label define ER20457L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER20458L `n' "Actual number"  , modify
}
label define ER20458L       17 "At least some post-graduate work"  , modify
label define ER20458L       99 "NA; DK"  , modify
label define ER20458L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER2080L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not working for money now; works for self only or also employed by someone else; current job not covered by union contract"

label define ER21001L  ///
       1 "Release number 1 - December 2004"  ///
       2 "Release number 2 - October 2005"  ///
       3 "Release number 3 - November 2005"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"
forvalues n = 1/51 {
    label define ER21003L `n' "Actual state (PSID State code)"  , modify
}
label define ER21003L       99 "DK; NA"  , modify
label define ER21003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER21018L  ///
       1 "Male"  ///
       2 "Female"

label define ER21151L  ///
       1 "Yes"  ///
       5 "No"  ///
       7 "Wild code"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not working for money now (ER21123=3-8, 98, or 99 and ER21127=5, 8, or 9); works for self only or also employed by someone else (ER21147=2, 3, 8, or 9); current job not covered by union contract (ER21150=5, 8, or 9)"

label define ER21401L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER21019=0); not working for money now (ER21373=3-8, 98, or 99 and ER21377=5, 8, or 9); works for self only or also employed by someone else (ER21397=2, 3, 8, or 9); current job not covered by union contract (ER21400=5, 8, or 9)"'

label define ER23009L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER23136L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER23334L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Native American"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Latino origin or descent"  ///
       6 "Color besides black or white"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER23426L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Native American"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Latino origin or descent"  ///
       6 "Color besides black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
label define ER24148L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER24148L `n' "Actual number"  , modify
}
label define ER24148L       17 "At least some post-graduate work"  , modify
label define ER24148L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER24149L `n' "Actual number"  , modify
}
label define ER24149L       17 "At least some post-graduate work"  , modify
label define ER24149L       99 "NA; DK"  , modify
label define ER24149L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER25001L  ///
       1 "Release number 1, March 2007"  ///
       2 "Release number 2, May 2007"  ///
       3 "Release number 3, November 2013"  ///
       4 "Release number 4, February 2014"  ///
       5 "Release number 5, January 2016"  ///
       6 "Release number 6, November 2017"
forvalues n = 1/51 {
    label define ER25003L `n' "Actual state (PSID State code)"  , modify
}
label define ER25003L       99 "DK; NA"  , modify
label define ER25003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER25018L  ///
       1 "Male"  ///
       2 "Female"

label define ER25139L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not working for money now (ER25104=03-08 or 99 and ER25108=5, 8, or 9); works for self only or or for both someone else and self (ER25129=2, 3, 8, or 9); current job not covered by union contract (ER25138=5, 8, or 9)"

label define ER25397L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER25019=0); not working for money now (ER25362=3-8, 98, or 99 and ER25366=5, 8, or 9); works for self only or for both someone else and self (ER25387=2, 3, 8, or 9); current job not covered by union contract (ER25396=5, 8, or 9)"'

label define ER2574L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'

label define ER26990L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER27113L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU"'
forvalues n = 1/52 {
    label define ER2716L `n' "Actual number of weeks"  , modify
}
label define ER2716L       97 "All the rest"  , modify
label define ER2716L       98 "DK"  , modify
label define ER2716L       99 "NA; refused"  , modify
label define ER2716L        0 `"Inap.: did not work at all in 1993; no wife/"wife" in FU; not working for money now"'  , modify

label define ER27296L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not Spanish, Hispanic or Latino"'

label define ER27297L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER27392L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER27393L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       0 "Wild code"  ///
       9 "NA; DK"
label define ER28047L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER28047L `n' "Actual number"  , modify
}
label define ER28047L       17 "At least some post-graduate work"  , modify
label define ER28047L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER28048L `n' "Actual number"  , modify
}
label define ER28048L       17 "At least some post-graduate work"  , modify
label define ER28048L       99 "NA; DK"  , modify
label define ER28048L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER36001L  ///
       1 "Release number 1, June 2009"  ///
       2 "Release number 2, October 2009"  ///
       3 "Release number 3, January 2012"  ///
       4 "Release number 4, December 2013"  ///
       5 "Release number 5, February 2014"  ///
       6 "Release number 6, January 2016"  ///
       7 "Release number 7, November 2017"
forvalues n = 1/51 {
    label define ER36003L `n' "Actual state (PSID State code)"  , modify
}
label define ER36003L       99 "DK; NA"  , modify
label define ER36003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER36018L  ///
       1 "Male"  ///
       2 "Female"

label define ER36144L  ///
       1 "Yes"  ///
       5 "No"  ///
       3 "Wild code"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not working for money now (ER36109=03-08 or 99 and ER36113=5, 8, or 9); works for self only or or for both someone else and self (ER36134=2, 3, 8, or 9); current job not covered by union contract (ER36143=5, 8, or 9)"

label define ER36402L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU (ER36019=0); not working for money now (ER36367=3-8, 98, or 99 and ER36371=5, 8, or 9); works for self only or for both someone else and self (ER36392=2, 3, 8, or 9); current job not covered by union contract (ER36401=5, 8, or 9)"'

label define ER38202L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER3853L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       0 "Wild code"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER3858L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER3880L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER3883L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER39299L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER3941L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER3944L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER40471L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not Spanish, Hispanic or Latino"'

label define ER40472L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no wife/"wife" in FU;"'

label define ER40564L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER40565L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       0 "Wild code"  ///
       9 "NA; DK"
label define ER41037L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER41037L `n' "Actual number"  , modify
}
label define ER41037L       17 "At least some post-graduate work"  , modify
label define ER41037L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER41038L `n' "Actual number"  , modify
}
label define ER41038L       17 "At least some post-graduate work"  , modify
label define ER41038L       99 "NA; DK"  , modify
label define ER41038L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify
forvalues n = 1/51 {
    label define ER4156L `n' "Actual state (PSID State code)"  , modify
}
label define ER4156L       99 "NA; DK;  Latino sample family"  , modify
label define ER4156L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER4158L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER4158L `n' "Actual number"  , modify
}
label define ER4158L       17 "At least some post-graduate work"  , modify
label define ER4158L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER4159L `n' "Actual number"  , modify
}
label define ER4159L       17 "At least some post-graduate work"  , modify
label define ER4159L       99 "NA; DK"  , modify
label define ER4159L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER42001L  ///
       1 "Release number 1, July 2011"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"
forvalues n = 1/51 {
    label define ER42003L `n' "Actual state (PSID State code)"  , modify
}
label define ER42003L       99 "DK; NA"  , modify
label define ER42003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER42018L  ///
       1 "Male"  ///
       2 "Female"

label define ER42179L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not working for money now (ER42140=03-08 or 99 and ER42144=5, 8, or 9); works for self only or or for both someone else and self (ER42169=2, 3, 8, or 9); current job not covered by union contract (ER42178=5, 8, or 9)"

label define ER42431L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER42019=0) (ER42019=0); not working for money now (ER42392=3-8, 98, or 99 and ER42396=5, 8, or 9); works for self only or for both someone else and self (ER42421=2, 3, 8, or 9); current job not covered by union contract (ER42430=5, 8, or 9)"'

label define ER44175L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER45272L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER42019=0)"'

label define ER46448L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER42019=0); not Spanish, Hispanic or Latino"'

label define ER46449L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER42019=0);"'

label define ER46542L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER46543L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA"
label define ER46981L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER46981L `n' "Actual number"  , modify
}
label define ER46981L       17 "At least some post-graduate work"  , modify
label define ER46981L       99 "DK; NA"  , modify
forvalues n = 1/16 {
    label define ER46982L `n' "Actual number"  , modify
}
label define ER46982L       17 "At least some post-graduate work"  , modify
label define ER46982L       99 "DK; NA"  , modify
label define ER46982L        0 `"Inap.:   no wife/"wife" in FU (ER42019=0); completed no grades of school"'  , modify

label define ER47301L  ///
       1 "Release number 1, July 2013"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"
forvalues n = 1/51 {
    label define ER47303L `n' "Actual state (PSID State code)"  , modify
}
label define ER47303L       99 "DK; NA"  , modify
label define ER47303L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER47318L  ///
       1 "Male"  ///
       2 "Female"

label define ER47492L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not currently employed (ER47448, ER47449, or ER47450 not = 1 or 2 and ER47452 = 5); NA, DK, RF whether working for money now (ER47452=8 or 9); works for self only or for both someone else and self (ER47482=2, 3); NA, DK, RF whether self-employed or worked for someone else (ER47482=8 or 9); current job not covered by union contract (ER47491=5); NA, DK, RF whether job covered by union contract (ER47491=8 or 9)"

label define ER47749L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER47319=0); not currently employed (ER47705, ER47706, or ER47707 not = 1 or 2 and ER47709 = 5); NA, DK, RF whether working for money now (ER47709=8 or 9); works for self only or for both someone else and self (ER47739=2, 3); NA, DK, RF whether self-employed or worked for someone else (ER47739=8 or 9);  current job not covered by union contract (ER47748=5); NA, DK, RF whether job covered by union contract (ER47748=8 or 9)"'

label define ER49494L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER5001L  ///
       1 "Release number 1 - August 1995"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER5006L `n' "Actual age"  , modify
}
label define ER5006L       97 "Ninety-seven years of age or older"  , modify
label define ER5006L        0 "Wild code"  , modify
label define ER5006L       98 "NA; DK"  , modify
label define ER5006L       99 "NA; DK"  , modify

label define ER5007L  ///
       1 "Male"  ///
       2 "Female"  ///
       0 "Wild code"
label define ER5008L        0 `"No wife/"wife" in FU: Head is female or single male"'  , modify
forvalues n = 14/96 {
    label define ER5008L `n' "Actual age"  , modify
}
label define ER5008L       97 "Ninety-seven years of age or older"  , modify
label define ER5008L       99 "NA; DK"  , modify

label define ER50612L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER47319=0)"'

label define ER5079L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not working for money now; works for self only or also employed by someone else; current job not covered by union contract"

label define ER51809L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER47319=0); not Spanish, Hispanic or Latino"'

label define ER51810L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER47319=0)"'

label define ER51903L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER51904L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
label define ER52405L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER52405L `n' "Actual number"  , modify
}
label define ER52405L       17 "At least some post-graduate work"  , modify
label define ER52405L       99 "DK; NA"  , modify
forvalues n = 1/16 {
    label define ER52406L `n' "Actual number"  , modify
}
label define ER52406L       17 "At least some post-graduate work"  , modify
label define ER52406L       99 "DK; NA"  , modify
label define ER52406L        0 `"Inap.:   no Wife/"Wife" in FU (ER47319=0); completed no grades of school"'  , modify

label define ER53001L  ///
       1 "Release number 1, May 2015"  ///
       2 "Release number 2, January 2016"  ///
       3 "Release number 3, November 2017"
forvalues n = 1/51 {
    label define ER53003L `n' "Actual state (PSID State code)"  , modify
}
label define ER53003L       99 "DK; NA"  , modify
label define ER53003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER53018L  ///
       1 "Male"  ///
       2 "Female"

label define ER53192L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not currently employed (ER53148, ER53149, or ER53150 ne 1 or 2 and ER53152 =5); DK, NA, or RF whether working for money now (ER53152=8 or 9); works for self only or for both someone else and self (ER53182=2, 3); DK, NA, or RF whether self-employed or worked for someone else (ER53182=8 or 9); current job not covered by union contract (ER53191=5); DK, NA, or RF whether job covered by union contract (ER53191=8 or 9)"

label define ER53455L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5); not currently employed (ER53411, ER53412, or ER53413 ne 1 or 2 and ER53415 =5); DK, NA, or RF whether working for money now (ER53415=8 or 9); works for self only or for both someone else and self (ER53445=2, 3); DK, NA, or RF whether self-employed or worked for someone else (ER53445=8 or 9);  current job not covered by union contract (ER53454=5); DK, NA, or RF whether job covered by union contract (ER53454=8 or 9)"'

label define ER55244L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER5573L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'

label define ER56360L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5)"'
forvalues n = 1/52 {
    label define ER5715L `n' "Actual number of weeks"  , modify
}
label define ER5715L       97 "All the rest"  , modify
label define ER5715L       98 "DK"  , modify
label define ER5715L       99 "NA; refused"  , modify
label define ER5715L        0 `"Inap.: did not work at all in 1994; no wife/"wife" in FU; not working for money now"'  , modify

label define ER57548L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5); not Spanish, Hispanic or Latino"'

label define ER57549L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5)"'

label define ER57658L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER57659L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER58223L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER58223L `n' "Actual number"  , modify
}
label define ER58223L       99 "DK; NA"  , modify
forvalues n = 1/17 {
    label define ER58224L `n' "Actual number"  , modify
}
label define ER58224L       99 "DK; NA"  , modify
label define ER58224L        0 `"Inap.:   no Wife/"Wife" in FU (ER54305=5); completed no grades of school"'  , modify

label define ER60001L  ///
       1 "Release number 1, May 2017"
forvalues n = 1/51 {
    label define ER60003L `n' "Actual state (PSID State code)"  , modify
}
label define ER60003L       99 "DK; NA"  , modify
label define ER60003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER60018L  ///
       1 "Male"  ///
       2 "Female"

label define ER60207L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not currently employed (ER60163,  ER60164, or  ER60165 ne 1 or 2 and  ER60167 =5); DK, NA, or RF whether working for money now (ER60167=8 or 9); works for self only or for both someone else and self (ER60197=2, 3); DK, NA, or RF whether self-employed or worked for someone else (ER60197=8 or 9); current job not covered by union contract (ER60206=5); DK, NA, or RF whether job covered by union contract (ER60206=8 or 9)"

label define ER60470L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  no Spouse/Partner in FU (ER61347=5); not currently employed (ER60426,  ER60427, or  ER60428 ne 1 or 2 and  ER60430 =5); DK, NA, or RF whether working for money now (ER60430=8 or 9); works for self only or for both someone else and self (ER60460=2, 3); DK, NA, or RF whether self-employed or worked for someone else (ER60460=8 or 9);  current job not covered by union contract (ER60469=5); DK, NA, or RF whether job covered by union contract (ER60469=8 or 9)"

label define ER62366L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER63482L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  no Spouse/Partner in FU (ER61347=5)"

label define ER64670L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  no Spouse/Partner in FU (ER61347=5); not Spanish, Hispanic or Latino"

label define ER64671L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  no Spouse/Partner in FU (ER61347=5)"

label define ER64809L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER64810L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER65459L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER65459L `n' "Actual number"  , modify
}
label define ER65459L       99 "DK; NA"  , modify
forvalues n = 1/17 {
    label define ER65460L `n' "Actual number"  , modify
}
label define ER65460L       99 "DK; NA"  , modify
label define ER65460L        0 "Inap.:  completed no grades of school; no Spouse/Partner in FU (ER61347=5)"  , modify

label define ER6723L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER6728L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER6750L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER6753L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER6811L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER6814L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER6996L `n' "Actual state (PSID State code)"  , modify
}
label define ER6996L       99 "NA; DK;  Latino sample family"  , modify
label define ER6996L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER6998L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER6998L `n' "Actual number"  , modify
}
label define ER6998L       17 "At least some post-graduate work"  , modify
label define ER6998L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER6999L `n' "Actual number"  , modify
}
label define ER6999L       17 "At least some post-graduate work"  , modify
label define ER6999L       99 "NA; DK"  , modify
label define ER6999L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define ER7001L  ///
       1 "Release number 1 - August 1996"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER7006L `n' "Actual age"  , modify
}
label define ER7006L       97 "Ninety-seven years of age or older"  , modify
label define ER7006L        0 "Wild code"  , modify
label define ER7006L       98 "DK"  , modify
label define ER7006L       99 "NA"  , modify

label define ER7007L  ///
       1 "Male"  ///
       2 "Female"  ///
       0 "Wild code"
label define ER7008L        0 `"No wife/"wife" in FU: Head is female or single male"'  , modify
forvalues n = 14/96 {
    label define ER7008L `n' "Actual age"  , modify
}
label define ER7008L       97 "Ninety-seven years of age or older"  , modify
label define ER7008L       99 "NA; DK"  , modify

label define ER7175L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not working for money now; works for self only or also employed by someone else; current job not covered by union contract"

label define ER7669L  ///
       1 "Yes"  ///
       5 "No"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or for both someone else and self; current job not covered by union contract"'
forvalues n = 1/52 {
    label define ER7811L `n' "Actual number of weeks"  , modify
}
label define ER7811L       97 "All the rest"  , modify
label define ER7811L       98 "DK"  , modify
label define ER7811L       99 "NA; refused"  , modify
label define ER7811L        0 `"Inap.: did not work at all in 1995; no wife/"wife" in FU; not working for money now"'  , modify

label define ER8969L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       0 "Wild code"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER8974L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER8996L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER8999L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define ER9057L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combinations; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER9060L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER9247L `n' "Actual state (PSID State code)"  , modify
}
label define ER9247L       99 "DK; NA"  , modify
label define ER9247L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER9249L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER9249L `n' "Actual number"  , modify
}
label define ER9249L       17 "At least some post-graduate work"  , modify
label define ER9249L       99 "NA; DK"  , modify
forvalues n = 1/16 {
    label define ER9250L `n' "Actual number"  , modify
}
label define ER9250L       17 "At least some post-graduate work"  , modify
label define ER9250L       99 "NA; DK"  , modify
label define ER9250L        0 `"Inap.:   no wife/"wife" in FU; completed no grades of school"'  , modify

label define V10001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V10003L `n' "Actual state (PSID State code)"  , modify
}
label define V10003L       99 "DK; NA"  , modify
label define V10003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V10419L `n' "Actual age"  , modify
}
label define V10419L       98 "98 years of age or older"  , modify
label define V10419L       99 "NA"  , modify

label define V10420L  ///
       1 "Male"  ///
       2 "Female"
label define V10421L        0 `"No Wife/"Wife" in FU:  Head is female (V10420=2) or single male"'  , modify
forvalues n = 14/97 {
    label define V10421L `n' "Actual age"  , modify
}
label define V10421L       98 "98 years of age or older"  , modify
label define V10421L       99 "NA"  , modify

label define V10459L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed and looking for work (V10453=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10453=4-8 and V10454=5 or 9 or V10455=5 or 9); works for self only (V10456=3 or 9); current job not covered by union contract (V10458=5 or 9)"
label define V10561L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V10561L `n' "Actual number of weeks"  , modify
}
label define V10561L       99 "NA; DK"  , modify
label define V10561L        0 "Inap.: did not work in 1983; unemployed and looking for work (V10453=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10453=4-8 and V10454=5 or 9 or V10455=5 or 9)"  , modify
label define V10562L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V10562L `n' "Actual number of hours per week"  , modify
}
label define V10562L       98 "Ninety-eight hours or more"  , modify
label define V10562L       99 "NA; DK"  , modify
label define V10562L        0 "Inap.: unemployed and looking for work (V10453=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10453=4-8 and V10454=5 or 9 or V10455=5 or 9); did not work in 1983 (V10561=00)"  , modify

label define V10677L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V10670=2 or 3); unemployed and looking for work (V10671=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10671=4-8 and V10672=5 or 9 or V10673=5 or 9); works for self only (V10674=3 or 9); current job not covered by union contract (V10676=5 or 9)"'
label define V10775L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V10775L `n' "Actual number of weeks"  , modify
}
label define V10775L       99 "NA; DK"  , modify
label define V10775L        0 `"Inap.: did not work in 1983; no Wife/"Wife" in FU (V10670=2 or 3); unemployed and looking for work (V10671=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10671=4-8 and V10672=5 or 9 or V10673=5 or 9)"'  , modify
label define V10776L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V10776L `n' "Actual number of hours per week"  , modify
}
label define V10776L       98 "Ninety-eight hours or more"  , modify
label define V10776L       99 "NA; DK"  , modify
label define V10776L        0 `"Inap.: no Wife/"Wife" in FU (V10670=2 or 3); unemployed and looking for work (V10671=3); retired, permanently disabled, keeping house, student and not working or working 10 hours or less per week (V10671=4-8 and V10672=5 or 9 or V10673=5 or 9); did not work in 1983 (V10775=00)"'  , modify

label define V10877L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V10884L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V10883=2 or 3)"'

label define V10955L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"  ///
       0 `"Inap.: none; no Wife/"Wife" in FU (V10421=00)"'

label define V10996L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V1101L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V1103L `n' "Actual state (PSID State code)"  , modify
}
label define V1103L       99 "DK; NA"  , modify
label define V1103L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V11055L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
forvalues n = 1/99 {
    label define V11079L `n' "Actual family weight"  , modify
}

label define V11101L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V11103L `n' "Actual state (PSID State code)"  , modify
}
label define V11103L       99 "DK; NA"  , modify
label define V11103L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V11606L `n' "Actual age"  , modify
}
label define V11606L       98 "Ninety-eight years of age or older"  , modify
label define V11606L       99 "NA"  , modify

label define V11607L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 17/97 {
    label define V11608L `n' "Actual age"  , modify
}
label define V11608L       98 "Ninety-eight years of age or older"  , modify
label define V11608L       99 "NA"  , modify
label define V11608L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V11607=2) or single male"'  , modify

label define V11650L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now at all (V11639=5); works for self only or also employed by someone else (V11640=2, 3 or 9); current job not covered by union contract (V11649=5 or 9)"
label define V11705L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V11705L `n' "Actual number of weeks"  , modify
}
label define V11705L       99 "NA; DK"  , modify
label define V11705L        0 "Inap.: did not work at all in 1984; not working for money now at all (V11639=5)"  , modify
label define V11706L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V11706L `n' "Actual number of hours per week"  , modify
}
label define V11706L       98 "Ninety-eight hours or more"  , modify
label define V11706L       99 "NA; DK"  , modify
label define V11706L        0 "Inap.: not working for money now at all (V11639=5); did not work in 1984 (V11705=00)"  , modify

label define V11937L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V11938L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       8 "More than 2 mentions"  ///
       9 "NA; DK"  ///
       0 "Inap.: no second mention"

label define V11991L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V12013L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V11999=2 or 3); Wife/ "Wife" refused (V12000=9); not working for money now at all (V12002=5); works for self only or also employed by someone else (V12003=2, 3 or 9); current job not covered by union contract (V12012=5 or 9)"'
label define V12068L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V12068L `n' "Actual number of weeks"  , modify
}
label define V12068L       99 "NA; DK"  , modify
label define V12068L        0 `"Inap.: did not work at all in 1984; no Wife/"Wife" in FU (V11999=2 or 3); Wife/"Wife" refused (V12000=9); not working for money now at all (V12002=5)"'  , modify
label define V12069L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V12069L `n' "Actual number of hours per week"  , modify
}
label define V12069L       98 "Ninety-eight hours or more"  , modify
label define V12069L       99 "NA; DK"  , modify
label define V12069L        0 `"Inap.: no Wife/"Wife" in FU (V11999=2 or 3); Wife/ "Wife" refused (V12000=9); not working for money now at all (V12002=5); did not work in 1984 (V12068=00)"'  , modify

label define V12292L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; Head is male, no Wife/"Wife" in FU now (V11999=2); Head is female (V12261=2)"'

label define V12293L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       8 "More than 2 mentions"  ///
       9 "NA; DK"  ///
       0 `"Inap.: Head is male, no Wife/"Wife" in FU now (V11999=2); Head is female (V12261=2)"'

label define V12344L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: Head is male, no Wife/"Wife" in FU now (V11999=2); Head is female (V12261=2)"'
forvalues n = 16/93 {
    label define V1239L `n' "Actual age"  , modify
}
label define V1239L       99 "NA age"  , modify

label define V1240L  ///
       1 "Male"  ///
       2 "Female"

label define V12400L  ///
       1 "0-5 grades: V11945 equals 2 or 3 and V11948 or V11953 equals 01-05 and V11964 equals 5"  ///
       2 `"6-8 grades; "grade school": V11945 equals 2 or 3 and V11948 or V11953 equals 06-08, and V11964 equals 5"'  ///
       3 "9-11 grades: V11945 equals 2 or 3 and V11948 or V11953 equals 09-11, and V11964 equals 5"  ///
       4 `"12 grades and no further training; "high school": V11945 equals 1, V11956 equals 5, and V11964=5"'  ///
       5 "12 grades plus nonacademic training: V11945 and V11964 equals 1"  ///
       6 "College but no degree: V11956 equals 1 and V11959 equals 1-5, and V11961 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V11959 equals 4 or 5 and V11961 equals 02"  ///
       8 "College and advanced or professional degree: V11959 equals 4 or 5 and V11961 equals 03-06"  ///
       9 "NA; DK: V11945, V11956 or V11959 equals 9; V11948 or V11953 equals 99"

label define V12401L  ///
       1 "0-5 grades: V12300 equals 2 or 3 and V12303 or V12308 equals 01-05 and V12319 equals 5"  ///
       2 `"6-8 grades; "grade school": V12300 equals 2 or 3 and V12303 or V12308 equals 06-08, and V12319 equals 5"'  ///
       3 "9-11 grades: V12300 equals 2 or 3 and V12303 or V12308 equals 09-11, and V12319 equals 5"  ///
       4 `"12 grades and no further training; "high school": V12300 equals 1, V12311 equals 5, and V12319=5"'  ///
       5 "12 grades plus nonacademic training: V12300 and V12319 equals 1"  ///
       6 "College but no degree: V12311 equals 1 and V12314 equals 1-5, and V12316 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V12314 equals 4 or 5 and V12316 equals 02"  ///
       8 "College and advanced or professional degree: V12314 equals 4 or 5 and V12316 equals 03-06"  ///
       9 "NA; DK: V12300, V12311 or V12314 equals 9; V12303 or V12308 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V11608=00)"'
forvalues n = 15/88 {
    label define V1241L `n' "Actual age"  , modify
}
label define V1241L       99 "NA"  , modify
label define V1241L        0 "Inap.: no Wife in family"  , modify
forvalues n = 1/99 {
    label define V12446L `n' "Actual family weight"  , modify
}

label define V12501L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V12503L `n' "Actual state (PSID State code)"  , modify
}
label define V12503L       99 "DK; NA"  , modify
label define V12503L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define V1292L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V1292L `n' "Actual weeks"  , modify
}
label define V1292L       99 "NA"  , modify
label define V1292L        0 "Inap.: none; unemployed, retired, housewife, student"  , modify
label define V1293L        1 "One hour a week or less"  , modify
forvalues n = 2/97 {
    label define V1293L `n' "Hours per week"  , modify
}
label define V1293L       98 "Ninety-eight hours per week or more"  , modify
label define V1293L       99 "NA"  , modify
label define V1293L        0 "None, Inap.: unemployed, retired, housewife, student"  , modify
forvalues n = 17/97 {
    label define V13011L `n' "Actual age"  , modify
}
label define V13011L       98 "Ninety-eight years of age or older"  , modify
label define V13011L       99 "NA"  , modify

label define V13012L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 16/97 {
    label define V13013L `n' "Actual age"  , modify
}
label define V13013L       98 "Ninety-eight years of age or older"  , modify
label define V13013L       99 "NA"  , modify
label define V13013L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V13012=2) or single male"'  , modify

label define V13053L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V13048=5); works for self only or also employed by someone else (V13049=2, 3 or 9); current job not covered by union contract (V13052=5 or 9)"
label define V13105L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V13105L `n' "Actual number of weeks"  , modify
}
label define V13105L       99 "NA; DK"  , modify
label define V13105L        0 "Inap.: did not work in 1985; not working for money now (V13048=5)"  , modify
label define V13106L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V13106L `n' "Actual number of hours per week"  , modify
}
label define V13106L       98 "Ninety-eight hours or more"  , modify
label define V13106L       99 "NA; DK"  , modify
label define V13106L        0 "Inap.: not working for money now (V13048=5); did not work in 1985 (V13105=00)"  , modify

label define V13232L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V13224=2 or 3); not working for money now (V13227=5); works for self only or also employed by someone else (V13228=2, 3 or 9); current job not covered by union contract (V13231=5 or 9)"'
label define V13282L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V13282L `n' "Actual number of weeks"  , modify
}
label define V13282L       99 "NA; DK"  , modify
label define V13282L        0 `"Inap.: did not work in 1985; no Wife/"Wife" in FU (V13224=2 or 3); not working for money now (V13227=5)"'  , modify
label define V13283L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V13283L `n' "Actual number of hours per week"  , modify
}
label define V13283L       98 "Ninety-eight hours or more"  , modify
label define V13283L       99 "NA; DK"  , modify
label define V13283L        0 `"Inap.: no Wife/"Wife" in FU (V13224=2 or 3); not working for money now (V13227=5); did not work in 1985 (V13282=00)"'  , modify

label define V13417L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V13452L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: only Head in FU (V13449=1); no Wife/"Wife" in FU (V13451=5)"'

label define V13499L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V13484=5)"'

label define V13500L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V13484=5)"'

label define V13564L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V13565L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V13640L  ///
       1 "0-5 grades: V13568 equals 2 or 3 and V13571 or V13576 equals 01-05 and V13568 equals 5"  ///
       2 `"6-8 grades; "grade school": V13568 equals 2 or 3 and V13571 or V13576 equals 06-08, and V13587 equals 5"'  ///
       3 "9-11 grades: V13568 equals 2 or 3 and V13571 or V13576 equals 09-11, and V13587 equals 5"  ///
       4 `"12 grades and no further training; "high school": V13568 equals 1, V13579 equals 5, and V13587 equals 5"'  ///
       5 "12 grades plus nonacademic training: V13568 and V13587 equal 1"  ///
       6 "College but no degree: V13579 equals 1 and V13582 equals 1-5, and V13584 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V13582 equals 4 or 5 and V13584 equals 02"  ///
       8 "College and advanced or professional degree: V13582 equals 4 or 5 and V13584 equals 03-06"  ///
       9 "NA; DK: V13568, V13579 or V13582 equals 9; V13571 or V13576 equals 99"

label define V13641L  ///
       1 "0-5 grades: V13503 equals 2 or 3 and V13505 or V13508 equals 01-05 and V13516 equals 5"  ///
       2 `"6-8 grades; "grade school": V13503 equals 2 or 3 and V13505 or V13508 equals 06-08, and V13516 equals 5"'  ///
       3 "9-11 grades: V13503 equals 2 or 3 and V13505 or V13508 equals 09-11, and V13516 equals 5"  ///
       4 `"12 grades and no further training; "high school": V13503 equals 1, V13510 equals 5, and V13516 equals 5"'  ///
       5 "12 grades plus nonacademic training: V13503 and V13516 equal 1"  ///
       6 "College but no degree: V13510 equals 1 and V13512 equals 1-5, and V13514 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V13512 equals 4 or 5 and V13514 equals 02"  ///
       8 "College and advanced or professional degree: V13512 equals 4 or 5 and V13514 equals 03-06"  ///
       9 "NA; DK: V13503, V13510 or V13512 equals 9; V13505 or V13508 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V13013=00)"'
label define V1368L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V1368L `n' "Actual weeks"  , modify
}
label define V1368L       99 "NA"  , modify
label define V1368L        0 "Inap.: Wife did not work, no Wife"  , modify
label define V1369L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V1369L `n' "Hours per week"  , modify
}
label define V1369L       98 "Ninety-eight hours or more per week"  , modify
label define V1369L       99 "NA"  , modify
label define V1369L        0 "Inap.: Wife did not work, no Wife"  , modify

label define V13701L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V13703L `n' "Actual state (PSID State code)"  , modify
}
label define V13703L       99 "DK; NA"  , modify
label define V13703L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V14114L `n' "Actual age"  , modify
}
label define V14114L       98 "Ninety-eight years of age or older"  , modify
label define V14114L       99 "NA"  , modify

label define V14115L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V14116L `n' "Actual age"  , modify
}
label define V14116L       98 "Ninety-eight years of age or older"  , modify
label define V14116L       99 "NA"  , modify
label define V14116L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V14115=2) or single male"'  , modify

label define V14153L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V14148=5); works for self only or also employed by someone else (V14149=2, 3 or 9); current job not covered by union contract (V14152=5 or 9)"
label define V14203L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V14203L `n' "Actual number of weeks"  , modify
}
label define V14203L       99 "NA; DK"  , modify
label define V14203L        0 "Inap.: did not work in 1986; not working for money now (V14148=5)"  , modify
label define V14204L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V14204L `n' "Actual number of hours per week"  , modify
}
label define V14204L       98 "Ninety-eight hours or more"  , modify
label define V14204L       99 "NA; DK"  , modify
label define V14204L        0 "Inap.: not working for money now (V14148=5); did not work in 1986 (V14203=00)"  , modify

label define V14328L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V14320=2 or 3); not working for money now (V14323=5); works for self only or also employed by someone else (V14324=2, 3 or 9); current job not covered by union contract (V14327=5 or 9)"'
label define V14376L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V14376L `n' "Actual number of weeks"  , modify
}
label define V14376L       99 "NA; DK"  , modify
label define V14376L        0 `"Inap.: did not work in 1986; no Wife/"Wife" in FU (V14320=2 or 3); not working for money now (V14323=5)"'  , modify
label define V14377L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V14377L `n' "Actual number of hours per week"  , modify
}
label define V14377L       98 "Ninety-eight hours or more"  , modify
label define V14377L       99 "NA; DK"  , modify
label define V14377L        0 `"Inap.: no Wife/"Wife" in FU (V14320=2 or 3); not working for money now (V14323=5); did not work in 1986 (V14376=00)"'  , modify

label define V14513L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V14524L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: only Head in FU (V14521=1); no Wife/"Wife" in FU (V14523=5)"'

label define V14546L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V14531=5)"'

label define V14547L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V14531=5)"'

label define V14611L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V14612L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V14687L  ///
       1 "0-5 grades: V14615 equals 2 or 3 and V14618 or V14623 equals 01-05 and V14615 equals 5"  ///
       2 `"6-8 grades; "grade school": V14615 equals 2 or 3 and V14618 or V14623 equals 06-08, and V14634 equals 5"'  ///
       3 "9-11 grades: V14615 equals 2 or 3 and V14618 or V14623 equals 09-11, and V14634 equals 5"  ///
       4 `"12 grades and no further training; "high school": V14615 equals 1, V14626 equals 5, and V14634 equals 5"'  ///
       5 "12 grades plus nonacademic training: V14615 and V14634 equal 1"  ///
       6 "College but no degree: V14626 equals 1 and V14629 equals 1-5, and V14631 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V14629 equals 4 or 5 and V14631 equals 02"  ///
       8 "College and advanced or professional degree: V14629 equals 4 or 5 and V14631 equals 03-06"  ///
       9 "NA; DK: V14615, V14626 or V14629 equals 9; V14618 or V14623 equals 99"

label define V14688L  ///
       1 "0-5 grades: V14550 equals 2 or 3 and V14552 or V14555 equals 01-05 and V14563 equals 5"  ///
       2 `"6-8 grades; "grade school": V14550 equals 2 or 3 and V14552 or V14555 equals 06-08, and V14563 equals 5"'  ///
       3 "9-11 grades: V14550 equals 2 or 3 and V14552 or V14555 equals 09-11, and V14563 equals 5"  ///
       4 `"12 grades and no further training; "high school": V14550 equals 1, V14557 equals 5, and V14563 equals 5"'  ///
       5 "12 grades plus nonacademic training: V14550 and V14563 equal 1"  ///
       6 "College but no degree: V14557 equals 1 and V14559 equals 1-5, and V14561 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V14559 equals 4 or 5 and V14561 equals 02"  ///
       8 "College and advanced or professional degree: V14559 equals 4 or 5 and V14561 equals 03-06"  ///
       9 "NA; DK: V14550, V14557 or V14559 equals 9; V14552 or V14555 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V14116=00)"'
label define V14737L        0 "No family weight"  , modify
forvalues n = 1/99 {
    label define V14737L `n' "Actual 1987 family weight"  , modify
}

label define V14801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V14803L `n' "Actual state (PSID State code)"  , modify
}
label define V14803L       99 "DK; NA"  , modify
label define V14803L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V1485L  ///
       0 "Could not read or write; DK grade and could not read or write"  ///
       1 "0 - 5 grades (or mentions could not read or write)"  ///
       2 "6 - 8 grades, grade school, DK but mentions could read or write"  ///
       3 "9 - 11 grades, some high school, junior high"  ///
       4 "12 grades, high school"  ///
       5 "12 grades plus non-academic training"  ///
       6 "College, no degree"  ///
       7 "College degree, no advanced degree mentioned"  ///
       8 "College, advanced or professional degree"  ///
       9 "NA, DK to all L9 - L15a"

label define V1490L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American, Puerto Rican, Mexican, Cuban"  ///
       7 "Other (Including Oriental, Pilipino)"  ///
       9 "NA"
forvalues n = 17/97 {
    label define V15130L `n' "Actual age"  , modify
}
label define V15130L       98 "Ninety-eight years of age or older"  , modify
label define V15130L       99 "NA"  , modify

label define V15131L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V15132L `n' "Actual age"  , modify
}
label define V15132L       98 "Ninety-eight years of age or older"  , modify
label define V15132L       99 "NA"  , modify
label define V15132L        0 `"Inap.: no Wife/"Wife" in FU: Head is female (V15131=2) or single male"'  , modify

label define V15161L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V15156=5); works for self only or also employed by someone else (V15157=2, 3 or 9); current job not covered by union contract (V15160=5 or 9)"
label define V15257L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V15257L `n' "Actual number of weeks"  , modify
}
label define V15257L       99 "NA; DK"  , modify
label define V15257L        0 "Inap.: did not work at all in 1987; not working for money now (V15156=5)"  , modify
label define V15258L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V15258L `n' "Actual number of hours per week"  , modify
}
label define V15258L       98 "Ninety-eight hours or more"  , modify
label define V15258L       99 "NA; DK"  , modify
label define V15258L        0 "Inap.: not working for money now (V15156=5); did not work at all in 1987 (V15257=00)"  , modify

label define V15463L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V15455=2 or 3); not working for money now (V15458=5); works for self only or also employed by someone else (V15459=2, 3 or 9); current job not covered by union contract (V15462=5 or 9)"'
label define V15559L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V15559L `n' "Actual number of weeks"  , modify
}
label define V15559L       99 "NA; DK"  , modify
label define V15559L        0 `"Inap.: did not work at all in 1987; no Wife/"Wife" in FU (V15455=2 or 3); not working for money now (V15458=5)"'  , modify
label define V15560L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V15560L `n' "Actual number of hours per week"  , modify
}
label define V15560L       98 "Ninety-eight hours or more"  , modify
label define V15560L       99 "NA; DK"  , modify
label define V15560L        0 `"Inap.: no Wife/"Wife" in FU (V15455=2 or 3); not working for money now (V15458=5); did not work at all in 1987 (V15559=00)"'  , modify

label define V15993L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V15999L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V15998=5)"'

label define V16020L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V16005=5)"'

label define V16021L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V16005=5)"'

label define V16085L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V16086L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"
label define V1609L        0 "No weight"  , modify
forvalues n = 1/46 {
    label define V1609L `n' "Actual 1968 weight"  , modify
}

label define V16161L  ///
       1 "0-5 grades: V16089 equals 2 or 3 and V16092 or V16097 equals 01-05 and V16089 equals 5"  ///
       2 `"6-8 grades; "grade school": V16089 equals 2 or 3 and V16092 or V16097 equals 06-08, and V16108 equals 5"'  ///
       3 "9-11 grades: V16089 equals 2 or 3 and V16092 or V16097 equals 09-11, and V16108 equals 5"  ///
       4 `"12 grades and no further training; "high school": V16089 equals 1, V16100 equals 5, and V16108 equals 5"'  ///
       5 "12 grades plus nonacademic training: V16089 and V16108 equal 1"  ///
       6 "College but no degree: V16100 equals 1 and V16103 equals 1-5, and V16105 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V16103 equals 4 or 5 and V16105 equals 02"  ///
       8 "College and advanced or professional degree: V16103 equals 4 or 5 and V16105 equals 03-06"  ///
       9 "NA; DK: V16089, V16100 or V16103 equals 9; V16092 or V16097 equals 99"

label define V16162L  ///
       1 "0-5 grades: V16024 equals 2 or 3 and V16026 or V16029 equals 01-05 and V16037 equals 5"  ///
       2 `"6-8 grades; "grade school": V16024 equals 2 or 3 and V16026 or V16029 equals 06-08, and V16037 equals 5"'  ///
       3 "9-11 grades: V16024 equals 2 or 3 and V16026 or V16029 equals 09-11, and V16037 equals 5"  ///
       4 `"12 grades and no further training; "high school": V16024 equals 1, V16031 equals 5, and V16037 equals 5"'  ///
       5 "12 grades plus nonacademic training: V16024 and V16037 equal 1"  ///
       6 "College but no degree: V16031 equals 1 and V16033 equals 1-5, and V16035 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V16033 equals 4 or 5 and V16035 equals 02"  ///
       8 "College and advanced or professional degree: V16033 equals 4 or 5 and V16035 equals 03-06"  ///
       9 "NA; DK: V16024, V16031 or V16033 equals 9; V16026 or V16029 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V15132=00)"'
label define V16208L        0 "Family weight of zero"  , modify
forvalues n = 1/99 {
    label define V16208L `n' "Actual 1988 family weight"  , modify
}

label define V16301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V16303L `n' "Actual state (PSID State code)"  , modify
}
label define V16303L       99 "DK; NA"  , modify
label define V16303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 18/97 {
    label define V16631L `n' "Actual age"  , modify
}
label define V16631L       98 "Ninety-eight years of age or older"  , modify
label define V16631L       99 "NA"  , modify

label define V16632L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V16633L `n' "Actual age"  , modify
}
label define V16633L       98 "Ninety-eight years of age or older"  , modify
label define V16633L       99 "NA"  , modify
label define V16633L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V16632=2) or single male"'  , modify

label define V16662L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V16657=5); works for self only or also employed by someone else (V16658=2, 3 or 9); current job not covered by union contract (V16661=5 or 9)"
label define V16758L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V16758L `n' "Actual number of weeks"  , modify
}
label define V16758L       99 "NA; DK"  , modify
label define V16758L        0 "Inap.: did not work at all in 1988; not working for money now (V16657=5)"  , modify
label define V16759L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V16759L `n' "Actual number of hours per week"  , modify
}
label define V16759L       98 "Ninety-eight hours or more"  , modify
label define V16759L       99 "NA; DK"  , modify
label define V16759L        0 "Inap.: not working for money now (V16657=5); did not work at all in 1988 (V16758=00)"  , modify

label define V16981L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V16973=2 or 3); not working for money now (V16976=5); works for self only or also employed by someone else (V16977=2, 3 or 9); current job not covered by union contract (V16980=5 or 9)"'
label define V17077L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V17077L `n' "Actual number of weeks"  , modify
}
label define V17077L       99 "NA; DK"  , modify
label define V17077L        0 `"Inap.: did not work at all in 1988; no Wife/"Wife" in FU (V16973=2 or 3); not working for money now (V16976=5)"'  , modify
label define V17078L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V17078L `n' "Actual number of hours per week"  , modify
}
label define V17078L       98 "Ninety-eight hours or more"  , modify
label define V17078L       99 "NA; DK"  , modify
label define V17078L        0 `"Inap.: no Wife/"Wife" in FU (V16973=2 or 3); not working for money now (V16976=5); did not work at all in 1988 (V17077=00)"'  , modify

label define V17390L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V17396L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V17395=5)"'

label define V17417L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V17402=5)"'

label define V17418L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V17402=5)"'

label define V17482L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V17483L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V17545L  ///
       1 "0-5 grades: V17486 equals 2 or 3 and V17489 or V17494 equals 01-05 and V17486 equals 5"  ///
       2 `"6-8 grades; "grade school": V17486 equals 2 or 3 and V17489 or V17494 equals 06-08, and V17505 equals 5"'  ///
       3 "9-11 grades: V17486 equals 2 or 3 and V17489 or V17494 equals 09-11, and V17505 equals 5"  ///
       4 `"12 grades and no further training; "high school": V17486 equals 1, V17497 equals 5, and V17505 equals 5"'  ///
       5 "12 grades plus nonacademic training: V17486 and V17505 equal 1"  ///
       6 "College but no degree: V17497 equals 1 and V17500 equals 1-5, and V17502 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V17500 equals 4 or 5 and V17502 equals 02"  ///
       8 "College and advanced or professional degree: V17500 equals 4 or 5 and V17502 equals 03-06"  ///
       9 "NA; DK: V17486, V17497 or V17500 equals 9; V17489 or V17494 equals 99"

label define V17546L  ///
       1 "0-5 grades: V17421 equals 2 or 3 and V17423 or V17426 equals 01-05 and V17434 equals 5"  ///
       2 `"6-8 grades; "grade school": V17421 equals 2 or 3 and V17423 or V17426 equals 06-08, and V17434 equals 5"'  ///
       3 "9-11 grades: V17421 equals 2 or 3 and V17423 or V17426 equals 09-11, and V17434 equals 5"  ///
       4 `"12 grades and no further training; "high school": V17421 equals 1, V17428 equals 5, and V17434 equals 5"'  ///
       5 "12 grades plus nonacademic training: V17421 and V17434 equal 1"  ///
       6 "College but no degree: V17428 equals 1 and V17430 equals 1-5, and V17432 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V17430 equals 4 or 5 and V17432 equals 02"  ///
       8 "College and advanced or professional degree: V17430 equals 4 or 5 and V17432 equals 03-06"  ///
       9 "NA; DK: V17421, V17428 or V17430 equals 9; V17423 or V17426 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V16633=00)"'

label define V17701L  ///
       2 "Release Number 2 - May 2008"  ///
       3 "Release Number 3 - December 2013"
forvalues n = 1/51 {
    label define V17703L `n' "Actual state (PSID State code)"  , modify
}
label define V17703L       99 "DK; NA"  , modify
label define V17703L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V1801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V1803L `n' "Actual state (PSID State code)"  , modify
}
label define V1803L       99 "DK; NA"  , modify
label define V1803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V18049L `n' "Actual age"  , modify
}
label define V18049L       98 "Ninety-eight years of age or older"  , modify
label define V18049L       99 "NA"  , modify

label define V18050L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V18051L `n' "Actual age"  , modify
}
label define V18051L       98 "Ninety-eight years of age or older"  , modify
label define V18051L       99 "NA"  , modify
label define V18051L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V18050=2) or single male"'  , modify

label define V18100L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V18095=5); works for self only or also employed by someone else (V18096=2, 3 or 9); current job not covered by union contract (V18099=5 or 9)"
label define V18196L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V18196L `n' "Actual number of weeks"  , modify
}
label define V18196L       99 "NA; DK"  , modify
label define V18196L        0 "Inap.: did not work at all in 1989; not working for money now (V18095=5)"  , modify
label define V18197L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V18197L `n' "Actual number of hours per week"  , modify
}
label define V18197L       98 "Ninety-eight hours or more"  , modify
label define V18197L       99 "NA; DK"  , modify
label define V18197L        0 "Inap.: not working for money now (V18095=5); did not work at all in 1989 (V18196=00)"  , modify

label define V18402L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V18394=2 or 3); not working for money now (V18397=5); works for self only or also employed by someone else (V18398=2, 3 or 9); current job not covered by union contract (V18401=5 or 9)"'
label define V18498L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V18498L `n' "Actual number of weeks"  , modify
}
label define V18498L       99 "NA; DK"  , modify
label define V18498L        0 `"Inap.: did not work at all in 1989; no Wife/"Wife" in FU (V18394=2 or 3); not working for money now (V18397=5)"'  , modify
label define V18499L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V18499L `n' "Actual number of hours per week"  , modify
}
label define V18499L       98 "Ninety-eight hours or more"  , modify
label define V18499L       99 "NA; DK"  , modify
label define V18499L        0 `"Inap.: no Wife/"Wife" in FU (V18394=2 or 3); not working for money now (V18397=5); did not work at all in 1989 (V18498=00)"'  , modify

label define V18721L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V18727L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V18726=5)"'

label define V18748L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V18733=5)"'

label define V18749L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V18733=5)"'

label define V18813L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V18814L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V18898L  ///
       1 "0-5 grades: V18817 equals 2 or 3 and V18820 or V18825 equals 01-05 and V18817 equals 5"  ///
       2 `"6-8 grades; "grade school": V18817 equals 2 or 3 and V18820 or V18825 equals 06-08, and V18836 equals 5"'  ///
       3 "9-11 grades: V18817 equals 2 or 3 and V18820 or V18825 equals 09-11, and V18836 equals 5"  ///
       4 `"12 grades and no further training; "high school": V18817 equals 1, V18828 equals 5, and V18836 equals 5"'  ///
       5 "12 grades plus nonacademic training: V18817 and V18836 equal 1"  ///
       6 "College but no degree: V18828 equals 1 and V18831 equals 1-5, and V18833 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V18831 equals 4 or 5 and V18833 equals 02"  ///
       8 "College and advanced or professional degree: V18831 equals 4 or 5 and V18833 equals 03-06"  ///
       9 "NA; DK: V18817, V18828 or V18831 equals 9; V18820 or V18825 equals 99"

label define V18899L  ///
       1 "0-5 grades: V18752 equals 2 or 3 and V18754 or V18757 equals 01-05 and V18765 equals 5"  ///
       2 `"6-8 grades; "grade school": V18752 equals 2 or 3 and V18754 or V18757 equals 06-08, and V18765 equals 5"'  ///
       3 "9-11 grades: V18752 equals 2 or 3 and V18754 or V18757 equals 09-11, and V18765 equals 5"  ///
       4 `"12 grades and no further training; "high school": V18752 equals 1, V18759 equals 5, and V18765 equals 5"'  ///
       5 "12 grades plus nonacademic training: V18752 and V18765 equal 1"  ///
       6 "College but no degree: V18759 equals 1 and V18761 equals 1-5, and V18763 does not equal 02-06"  ///
       7 "College BA but no advanced degree: V18761 equals 4 or 5 and V18763 equals 02"  ///
       8 "College and advanced or professional degree: V18761 equals 4 or 5 and V18763 equals 03-06"  ///
       9 "NA; DK: V18752, V18759 or V18761 equals 9; V18754 or V18757 equals 99"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V18051=00)"'

label define V19001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V19003L `n' "Actual state (PSID State code)"  , modify
}
label define V19003L       99 "DK; NA"  , modify
label define V19003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V19349L `n' "Actual age"  , modify
}
label define V19349L       98 "Ninety-eight years of age or older"  , modify
label define V19349L       99 "NA"  , modify

label define V19350L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V19351L `n' "Actual age"  , modify
}
label define V19351L       98 "Ninety-eight years of age or older"  , modify
label define V19351L       99 "NA"  , modify
label define V19351L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V19350=2) or single male"'  , modify

label define V19400L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V19395=5); works for self only or also employed by someone else (V19396=2, 3 or 9); current job not covered by union contract (V19399=5 or 9)"
forvalues n = 15/97 {
    label define V1942L `n' "Actual age"  , modify
}
label define V1942L       98 "Ninety-eight years of age or older"  , modify
label define V1942L       99 "NA, DK"  , modify

label define V1943L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/97 {
    label define V1944L `n' "Actual age"  , modify
}
label define V1944L       98 "Ninety-eight years of age or older"  , modify
label define V1944L       99 "NA, DK"  , modify
label define V1944L        0 "Inap.: no Wife listed in family"  , modify
label define V19496L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V19496L `n' "Actual number of weeks"  , modify
}
label define V19496L       99 "NA; DK"  , modify
label define V19496L        0 "Inap.: did not work at all in 1990; not working for money now (V19395=5)"  , modify
label define V19497L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V19497L `n' "Actual number of hours per week"  , modify
}
label define V19497L       98 "Ninety-eight hours or more"  , modify
label define V19497L       99 "NA; DK"  , modify
label define V19497L        0 "Inap.: not working for money now (V19395=5); did not work at all in 1990 (V19496=00)"  , modify

label define V19702L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V19694=2 or 3); not working for money now (V19697=5); works for self only or also employed by someone else (V19698=2, 3 or 9); current job not covered by union contract (V19701=5 or 9)"'
label define V19798L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V19798L `n' "Actual number of weeks"  , modify
}
label define V19798L       99 "NA; DK"  , modify
label define V19798L        0 `"Inap.: did not work at all in 1990; no Wife/"Wife" in FU (V19694=2 or 3); not working for money now (V19697=5)"'  , modify
label define V19799L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V19799L `n' "Actual number of hours per week"  , modify
}
label define V19799L       98 "Ninety-eight hours or more"  , modify
label define V19799L       99 "NA; DK"  , modify
label define V19799L        0 `"Inap.: no Wife/"Wife" in FU (V19694=2 or 3); not working for money now (V19697=5); did not work at all in 1990 (V19798=00)"'  , modify
label define V1998L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V1998L `n' "Actual number of weeks"  , modify
}
label define V1998L       99 "NA, DK"  , modify
label define V1998L        0 "Inap.: none; unemployed; retired, housewife, student"  , modify
label define V1999L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V1999L `n' "Actual number of hours per week"  , modify
}
label define V1999L       98 "Ninety-eight hours or more"  , modify
label define V1999L       99 "NA, DK"  , modify
label define V1999L        0 "Inap.: none; unemployed; retired, housewife, student"  , modify

label define V20021L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V20027L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V20026=5)"'

label define V20048L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V20033=5)"'

label define V20049L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V20033=5)"'

label define V20113L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V20114L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V20198L `n' "Actual grade of school completed"  , modify
}
label define V20198L       17 "Completed at least some postgraduate work"  , modify
label define V20198L       99 "NA; DK"  , modify
label define V20198L        0 "Inap: completed no grades of school"  , modify
forvalues n = 1/16 {
    label define V20199L `n' "Actual grade of school completed"  , modify
}
label define V20199L       17 "Completed at least some postgraduate work"  , modify
label define V20199L       99 "NA; DK"  , modify
label define V20199L        0 `"Inap: completed no grades of school; no Wife/"Wife" in FU (V19351=00)"'  , modify

label define V20301L  ///
       3 "Release number 3 - May 2008"  ///
       4 "Release number 4 - December 2013"
forvalues n = 1/51 {
    label define V20303L `n' "Actual state (PSID State code)"  , modify
}
label define V20303L       99 "DK; NA"  , modify
label define V20303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 14/97 {
    label define V20651L `n' "Actual age"  , modify
}
label define V20651L       98 "Ninety-eight years of age or older"  , modify
label define V20651L       99 "NA"  , modify

label define V20652L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V20653L `n' "Actual age"  , modify
}
label define V20653L       98 "Ninety-eight years of age or older"  , modify
label define V20653L       99 "NA"  , modify
label define V20653L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V20652=2) or single male"'  , modify

label define V20700L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now (V20695=5); works for self only or also employed by someone else (V20696=2, 3 or 9); current job not covered by union contract (V20699=5 or 9)"
label define V2076L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V2076L `n' "Actual number of weeks"  , modify
}
label define V2076L       99 "NA, DK"  , modify
label define V2076L        0 "Inap.: no Wife; Wife did not work"  , modify
label define V2077L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V2077L `n' "Actual number of hours per week"  , modify
}
label define V2077L       98 "Ninety-eight hours or more"  , modify
label define V2077L       99 "NA, DK"  , modify
label define V2077L        0 "Inap.: no Wife; Wife did not work"  , modify
label define V20796L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V20796L `n' "Actual number of weeks"  , modify
}
label define V20796L       99 "NA; DK"  , modify
label define V20796L        0 "Inap.: did not work at all in 1991; not working for money now (V20695=5)"  , modify
label define V20797L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V20797L `n' "Actual number of hours per week"  , modify
}
label define V20797L       98 "Ninety-eight hours or more"  , modify
label define V20797L       99 "NA; DK"  , modify
label define V20797L        0 "Inap.: not working for money now (V20695=5); did not work at all in 1991 (V20796=00)"  , modify

label define V21002L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V20994=2 or 3); not working for money now (V20997=5); works for self only or also employed by someone else (V20998=2, 3 or 9); current job not covered by union contract (V21001=5 or 9)"'
label define V21098L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V21098L `n' "Actual number of weeks"  , modify
}
label define V21098L       99 "NA; DK"  , modify
label define V21098L        0 `"Inap.: did not work at all in 1991; no Wife/"Wife" in FU (V20994=2 or 3); not working for money now (V20997=5)"'  , modify
label define V21099L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V21099L `n' "Actual number of hours per week"  , modify
}
label define V21099L       98 "Ninety-eight hours or more"  , modify
label define V21099L       99 "NA; DK"  , modify
label define V21099L        0 `"Inap.: no Wife/"Wife" in FU (V20994=2 or 3); not working for money now (V20997=5); did not work at all in 1991 (V21098=00)"'  , modify

label define V21321L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

label define V21328L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V21327=5)"'

label define V21354L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no Wife/"Wife" in FU (V21339=5)"'

label define V21355L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V21339=5)"'

label define V21419L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V21420L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V21504L `n' "Actual grade of school completed"  , modify
}
label define V21504L       17 "At least some post-graduate work"  , modify
label define V21504L       99 "NA; DK"  , modify
label define V21504L        0 "Inap: completed no grades of school"  , modify
forvalues n = 1/16 {
    label define V21505L `n' "Actual grade of school completed"  , modify
}
label define V21505L       17 "At least some post-graduate work"  , modify
label define V21505L       99 "NA; DK"  , modify
label define V21505L        0 `"Inap: completed no grades of school; no Wife/"Wife" in FU (V19351=00)"'  , modify

label define V21601L  ///
       1 "Release number 1 - January 1998"  ///
       2 "Release number 2 - February 1998"  ///
       3 "Release number 3 - April 2000"  ///
       4 "Release number 4 - May 2008"
forvalues n = 1/51 {
    label define V21603L `n' "Actual state (PSID State code)"  , modify
}
label define V21603L       99 "DK; NA"  , modify
label define V21603L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V2197L  ///
       1 "0-5 grades"  ///
       2 "6-8 grades, grade school, DK but mentions could read or write"  ///
       3 "9-11 grades, some high school, junior high"  ///
       4 "12 grades, high school"  ///
       5 "12 grades plus non-academic training"  ///
       6 "College, no degree"  ///
       7 "College degree, no advanced degree mentioned"  ///
       8 "College, advanced or professional degree"  ///
       9 "NA, DK to all of L33-L40"  ///
       0 "Inap.: cannot read or write or has trouble reading or writing"

label define V2202L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American, Puerto Rican, Mexican, Cuban"  ///
       7 "Other (including Oriental, Filipino)"  ///
       9 "NA"
forvalues n = 14/97 {
    label define V22406L `n' "Actual age"  , modify
}
label define V22406L       98 "Ninety-eight years of age or older"  , modify
label define V22406L       99 "NA"  , modify

label define V22407L  ///
       1 "Male"  ///
       2 "Female"
label define V22408L        0 `"No wife/"wife" in FU: Head is female or single male"'  , modify
forvalues n = 14/97 {
    label define V22408L `n' "Actual age"  , modify
}
label define V22408L       98 "Ninety-eight years of age or older"  , modify
label define V22408L       99 "NA"  , modify

label define V22455L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: not working for money now; works for self only or also employed by someone else; current job not covered by union contract"

label define V22808L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no wife/"wife" in FU; not working for money now; works for self only or also employed by someone else; current job not covered by union contract"'

label define V23180L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "Don`=char(146)'t Know"  ///
       9 "NA"

label define V23187L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "Don`=char(146)'t Know"  ///
       9 "NA"  ///
       0 `"Inap.: no wife/"wife" in FU"'
label define V2321L        0 "No weight"  , modify
forvalues n = 1/46 {
    label define V2321L `n' "Actual weight"  , modify
}

label define V23211L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 `"Inap.: is not Spanish/Hispanic; no wife/"wife" in FU"'

label define V23212L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no wife/"wife" in FU"'

label define V23275L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V23276L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V23333L `n' "Actual number"  , modify
}
label define V23333L       17 "At least some post-graduate work"  , modify
label define V23333L       99 "NA; DK"  , modify
label define V23333L        0 "Inap: completed no grades of school"  , modify
forvalues n = 1/16 {
    label define V23334L `n' "Actual number"  , modify
}
label define V23334L       17 "At least some post-graduate work"  , modify
label define V23334L       99 "NA; DK"  , modify
label define V23334L        0 `"Inap: completed no grades of school; no wife/"wife" in FU"'  , modify

label define V2401L  ///
       2 "Release number 2 -- May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V2403L `n' "Actual state (PSID State code)"  , modify
}
label define V2403L       99 "DK; NA"  , modify
label define V2403L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/96 {
    label define V2542L `n' "Actual age"  , modify
}
label define V2542L       99 "NA age"  , modify

label define V2543L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/91 {
    label define V2544L `n' "Actual age"  , modify
}
label define V2544L       99 "NA; DK"  , modify
label define V2544L        0 "Inap.: no Wife listed in family"  , modify
label define V2596L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V2596L `n' "Actual number of weeks"  , modify
}
label define V2596L       99 "NA; DK"  , modify
label define V2596L        0 "Inap.: none; unemployed; retired, housewife, student"  , modify
label define V2597L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V2597L `n' "Actual number of hours per week"  , modify
}
label define V2597L       98 "Ninety-eight hours or more"  , modify
label define V2597L       99 "NA; DK"  , modify
label define V2597L        0 "Inap.: none; unemployed; retired, housewife, student"  , modify
label define V2674L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V2674L `n' "Actual number of weeks"  , modify
}
label define V2674L       99 "NA; DK"  , modify
label define V2674L        0 "Inap.: no Wife; Wife did not work"  , modify
label define V2675L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V2675L `n' "Actual number of hours"  , modify
}
label define V2675L       98 "Ninety-eight hours or more"  , modify
label define V2675L       99 "NA; DK"  , modify
label define V2675L        0 "Inap.: no Wife; Wife did not work"  , modify

label define V2687L  ///
       1 "0 - 5 grades"  ///
       2 "6 - 8 grades, grade school; DK but mentions could read or write"  ///
       3 "9 - 11 grades (some high school)"  ///
       4 "12 grades (completed high school)"  ///
       5 "12 grades plus non-academic training"  ///
       6 "Some college, no degree"  ///
       7 "College, bachelors degree"  ///
       8 "College, advanced or professional degree; some graduate work; close to receiving degree"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife"

label define V2823L  ///
       0 "Cannot read or write or has trouble reading or writing"  ///
       1 "0 - 5 grades"  ///
       2 `"6 - 8 grades; "grade school"; DK but mentions could read or write"'  ///
       3 "9 - 11 grades; some high school; junior high"  ///
       4 "12 grades; high school"  ///
       5 "12 grades plus non-academic training"  ///
       6 "College, no degree"  ///
       7 "College degree, no advanced degree mentioned"  ///
       8 "College, advanced or professional degree"  ///
       9 "NA; DK to all of M33 and M40"

label define V2828L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American; Puerto Rican; Mexican; Cuban"  ///
       7 "Other (including Oriental, Filipino)"  ///
       9 "NA"
label define V2968L        0 "No family weight"  , modify
forvalues n = 1/46 {
    label define V2968L `n' "Actual 1972 family weight"  , modify
}

label define V3001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3003L `n' "Actual state (PSID State code)"  , modify
}
label define V3003L       99 "DK; NA"  , modify
label define V3003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V3095L `n' "Actual age"  , modify
}
label define V3095L       99 "NA"  , modify

label define V3096L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/92 {
    label define V3097L `n' "Actual age"  , modify
}
label define V3097L       99 "NA"  , modify
label define V3097L        0 "Inap.: no Wife listed in family"  , modify
label define V3129L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V3129L `n' "Actual number of weeks"  , modify
}
label define V3129L       99 "NA; DK"  , modify
label define V3129L        0 "Inap.: none; unemployed, retired, housewife, student"  , modify
label define V3130L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V3130L `n' "Actual number of hours"  , modify
}
label define V3130L       98 "Ninety-eight hours or more"  , modify
label define V3130L       99 "NA; DK"  , modify
label define V3130L        0 "Inap.: none; unemployed, retired, housewife, student"  , modify
label define V3185L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V3185L `n' "Actual number of weeks"  , modify
}
label define V3185L       99 "NA; DK"  , modify
label define V3185L        0 "Inap.: Wife did not work; no Wife"  , modify
label define V3186L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V3186L `n' "Actual number of hours"  , modify
}
label define V3186L       98 "Ninety-eight hours or more"  , modify
label define V3186L       99 "NA; DK"  , modify
label define V3186L        0 "Inap.: Wife did not work; no Wife"  , modify

label define V3216L  ///
       1 "0 - 5 grades"  ///
       2 "6 - 8 grades, grade school; DK but mentions could read or write"  ///
       3 "9 - 11 grades (some high school)"  ///
       4 "12 grades (completed high school)"  ///
       5 "12 grades plus non-academic training"  ///
       6 "Some college, no degree"  ///
       7 "College, bachelors degree"  ///
       8 "College, advanced or professional degree; some graduate work; close to receiving degree"  ///
       9 "NA; DK"  ///
       0 "Inap.: no new Wife in 1972; no Wife"

label define V3241L  ///
       1 "0 - 5 grades"  ///
       2 `"6 - 8 grades; "grade school" DK but mentions could read or write"'  ///
       3 "9 - 11 grades; some high school; junior high"  ///
       4 "12 grades; high school"  ///
       5 "12 grades plus non-academic training"  ///
       6 "College, no degree"  ///
       7 "College degree, no advanced degree mentioned"  ///
       8 "College, advanced or professional degree"  ///
       9 "NA; DK to all of K23 - K30"  ///
       0 "Inap.: cannot read or write or has trouble reading or writing"

label define V3300L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V3301L        0 "No family weight"  , modify
forvalues n = 1/46 {
    label define V3301L `n' "Actual weight"  , modify
}

label define V3401L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3403L `n' "Actual state (PSID State code)"  , modify
}
label define V3403L       99 "DK; NA"  , modify
label define V3403L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/93 {
    label define V3508L `n' "Actual age"  , modify
}
label define V3508L       99 "NA; DK"  , modify

label define V3509L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 16/93 {
    label define V3510L `n' "Actual age"  , modify
}
label define V3510L       99 "NA; DK"  , modify
label define V3510L        0 "Inap.: no Wife listed in family"  , modify
label define V3544L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V3544L `n' "Actual number of weeks"  , modify
}
label define V3544L       99 "NA; DK"  , modify
label define V3544L        0 "Inap.: none; unemployed, retired, housewife, student"  , modify
label define V3545L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V3545L `n' "Actual number of hours"  , modify
}
label define V3545L       98 "Ninety-eight hours or more"  , modify
label define V3545L       99 "NA; DK"  , modify
label define V3545L        0 "Inap.: none; unemployed; retired, housewife, student"  , modify
label define V3603L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V3603L `n' "Actual number of weeks"  , modify
}
label define V3603L       99 "NA; DK"  , modify
label define V3603L        0 "Inap.: Wife did not work; no Wife"  , modify
label define V3604L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V3604L `n' "Actual number of hours"  , modify
}
label define V3604L       98 "Ninety-eight hours or more"  , modify
label define V3604L       99 "NA; DK"  , modify
label define V3604L        0 "Inap.: Wife did not work; no Wife"  , modify

label define V3638L  ///
       1 "0 - 5 grades"  ///
       2 "6 - 8 grades, grade school; DK but mentions could read or write"  ///
       3 "9 - 11 grades (some high school)"  ///
       4 "12 grades (completed high school)"  ///
       5 "12 grades plus non-academic training"  ///
       6 "Some college, no degree"  ///
       7 "College, bachelors degree"  ///
       8 "College, advanced or professional degree; some graduate work; close to receiving degree"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife in 1974"

label define V3663L  ///
       1 "0 - 5 grades"  ///
       2 `"6 - 8 grades; "grade school" DK but mentions could read and write"'  ///
       3 "9 - 11 grades; some high school; junior high"  ///
       4 "12 grades; high school"  ///
       5 "12 grades plus non-academic training"  ///
       6 "College but no degree"  ///
       7 "College BA and no advanced degree mentioned"  ///
       8 "College and advanced or professional degree"  ///
       9 "NA; DK to all of K23 - K30"  ///
       0 "Inap.: cannot read or write or has trouble reading or writing"

label define V3720L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V3721L        0 "No weight"  , modify
forvalues n = 1/72 {
    label define V3721L `n' "Actual weight"  , modify
}

label define V3801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3803L `n' "Actual state (PSID State code)"  , modify
}
label define V3803L       99 "DK; NA"  , modify
label define V3803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V3921L `n' "Actual age"  , modify
}
label define V3921L       98 "Ninety-eight years of age or older"  , modify
label define V3921L       99 "NA; DK age"  , modify

label define V3922L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/97 {
    label define V3923L `n' "Actual age"  , modify
}
label define V3923L       98 "Ninety-eight years of age or older"  , modify
label define V3923L       99 "NA; DK age"  , modify
label define V3923L        0 "Inap.: no Wife"  , modify
label define V3998L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V3998L `n' "Actual number of weeks"  , modify
}
label define V3998L       99 "NA; DK"  , modify
label define V3998L        0 "Inap.: none; unemployed; retired, housewife, student; V3967=2-6"  , modify
label define V3999L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V3999L `n' "Actual number of hours"  , modify
}
label define V3999L       98 "Ninety-eight hours or more"  , modify
label define V3999L       99 "NA; DK"  , modify
label define V3999L        0 "Inap.: none; unemployed; retired, housewife, student; V3967 = 2 - 6 or V3998 = 00"  , modify
label define V4057L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V4057L `n' "Actual number of weeks"  , modify
}
label define V4057L       99 "NA; DK"  , modify
label define V4057L        0 "Inap.: Wife did not work; no Wife; V4053 = 2 - 5, or V4053 = 1 and V3922 = 2, or V4054 = 5, 9"  , modify
label define V4058L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V4058L `n' "Actual number of hours"  , modify
}
label define V4058L       98 "Ninety-eight hours or more"  , modify
label define V4058L       99 "NA; DK"  , modify
label define V4058L        0 "Inap.: Wife did not work; no Wife; V4053 = 2 - 5, or V4053 = 1 and V3922 = 2, or V4054 = 5, 9"  , modify

label define V4093L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V4102L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife"

label define V4204L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V4224L        0 "No weight"  , modify
forvalues n = 1/70 {
    label define V4224L `n' "Actual weight"  , modify
}

label define V4301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V4303L `n' "Actual state (PSID State code)"  , modify
}
label define V4303L       99 "DK; NA"  , modify
label define V4303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V4436L `n' "Actual age"  , modify
}
label define V4436L       98 "Ninety-eight years of age or older"  , modify
label define V4436L       99 "NA; DK"  , modify

label define V4437L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 14/97 {
    label define V4438L `n' "Actual age"  , modify
}
label define V4438L       98 "Ninety-eight years of age or older"  , modify
label define V4438L       99 "NA; DK"  , modify
label define V4438L        0 "Inap.: no Wife in FU"  , modify

label define V4479L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; works for self only; job not covered by union contract; V4458 = 3 - 8 or V4461 = 3, 9 or V4478 = 5, 9"
label define V4507L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V4507L `n' "Actual number of weeks"  , modify
}
label define V4507L       99 "NA; DK"  , modify
label define V4507L        0 "Inap.: none; unemployed; permanently disabled, retired, housewife, student; V4458 = 3 - 8"  , modify
label define V4508L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V4508L `n' "Actual number of hours per week"  , modify
}
label define V4508L       98 "Ninety-eight hours or more"  , modify
label define V4508L       99 "NA; DK"  , modify
label define V4508L        0 "Inap.: none; unemployed; permanently disabled, retired, housewife, student; V4458 = 3 - 8 or V4507 = 00"  , modify
label define V4607L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V4607L `n' "Actual number of weeks"  , modify
}
label define V4607L       99 "NA; DK"  , modify
label define V4607L        0 "Inap.: Wife did not work; no Wife; V4603 = 2 - 5 or V4604 = 0, 5, 9"  , modify
label define V4608L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V4608L `n' "Actual number of hours per week"  , modify
}
label define V4608L       98 "Ninety-eight hours or more"  , modify
label define V4608L       99 "NA; DK"  , modify
label define V4608L        0 "Inap.: Wife did not work; no Wife; V4603 = 2 - 5 or V4604 = 0, 5, 9"  , modify

label define V4684L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V4695L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife; V4438 = 00"

label define V4862L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife`=char(146)'s interview; unemployed; permanently disabled; retired; housewife; student; works for self only; job not covered by union contract; V4841 = 3 - 8 or V4844 = 3, 9 or V4861 = 5, 9"

label define V5096L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V5099L        0 "No weight"  , modify
forvalues n = 1/70 {
    label define V5099L `n' "Actual weight"  , modify
}

label define V5201L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V5203L `n' "Actual state (PSID State code)"  , modify
}
label define V5203L       99 "DK; NA"  , modify
label define V5203L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/95 {
    label define V5350L `n' "Actual age of Head"  , modify
}
label define V5350L       99 "NA"  , modify

label define V5351L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/97 {
    label define V5352L `n' "Actual age of Wife or permanent friend"  , modify
}
label define V5352L       98 "Ninety-eight years of age or older"  , modify
label define V5352L       99 "NA; DK"  , modify
label define V5352L        0 "Inap.: no Wife in FU; V5351=2"  , modify

label define V5383L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; does not work for someone else only; current job not covered by union contract; V5373 = 3 - 8 or V5376 = 2 - 9 or V5382 = 5 - 9"
label define V5417L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V5417L `n' "Actual number of weeks"  , modify
}
label define V5417L       99 "NA; DK"  , modify
label define V5417L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V5373 = 3 - 8"  , modify
label define V5418L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V5418L `n' "Actual number of hours"  , modify
}
label define V5418L       98 "Ninety-eight hours or more"  , modify
label define V5418L       99 "NA; DK"  , modify
label define V5418L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V5373 = 3 - 8 or V5417 = 00"  , modify
label define V5522L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V5522L `n' "Actual number of weeks"  , modify
}
label define V5522L       99 "NA; DK"  , modify
label define V5522L        0 "Inap.: Wife/friend did not work; no Wife/friend; V5505 = 5 or V5506 = 5, 9"  , modify
label define V5523L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V5523L `n' "Actual number of hours"  , modify
}
label define V5523L       98 "Ninety-eight hours or more"  , modify
label define V5523L       99 "NA; DK"  , modify
label define V5523L        0 "Inap.: Wife/friend did not work; no Wife/friend; V5505 = 5 or V5506 = 5, 9"  , modify

label define V5567L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife; V5352 = 00"

label define V5608L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V5662L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V5665L        0 "No family weight"  , modify
forvalues n = 1/72 {
    label define V5665L `n' "Actual family weight"  , modify
}

label define V5701L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V5703L `n' "Actual state (PSID State code)"  , modify
}
label define V5703L       99 "DK; NA"  , modify
label define V5703L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/96 {
    label define V5850L `n' "Actual age"  , modify
}
label define V5850L       99 "NA"  , modify

label define V5851L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/90 {
    label define V5852L `n' "Actual age"  , modify
}
label define V5852L       99 "NA"  , modify
label define V5852L        0 "Inap.: no Wife or Permanent Friend in FU"  , modify

label define V5878L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; does not work for someone else only; current job not covered by union contract; V5872 = 3 - 8; V5875 = 2 - 9; V5877 = 5 or 9"
label define V5904L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V5904L `n' "Actual number of weeks"  , modify
}
label define V5904L       99 "NA; DK"  , modify
label define V5904L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V5872 = 3 - 8"  , modify
label define V5905L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V5905L `n' "Actual number of hours"  , modify
}
label define V5905L       98 "Ninety-eight hours or more"  , modify
label define V5905L       99 "NA; DK"  , modify
label define V5905L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V5872 = 3 - 8; V5904 = 00"  , modify
label define V6051L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V6051L `n' "Actual number of weeks"  , modify
}
label define V6051L       99 "NA; DK"  , modify
label define V6051L        0 "Inap.: none; no Wife/friend; Wife/friend did not work; V6037 = 5; V6038 = 5 or 9"  , modify
label define V6052L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V6052L `n' "Actual number of hours per week"  , modify
}
label define V6052L       98 "Ninety-eight hours or more"  , modify
label define V6052L       99 "NA; DK"  , modify
label define V6052L        0 "Inap.: none; no Wife/friend; Wife/friend did not work; V6037 = 5; V6038 = 5 or 9; V6051 = 00"  , modify

label define V6116L  ///
       1 "One grade"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more; graduate school"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife/friend"
label define V6157L        0 "None"  , modify
forvalues n = 1/16 {
    label define V6157L `n' "Actual number of grades"  , modify
}
label define V6157L       17 "Seventeen or more"  , modify
label define V6157L       99 "NA; DK"  , modify

label define V6209L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V6212L        0 "No family weight"  , modify
forvalues n = 1/72 {
    label define V6212L `n' "Actual family weight"  , modify
}

label define V6301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V6303L `n' "Actual state (PSID State code)"  , modify
}
label define V6303L       99 "DK; NA"  , modify
label define V6303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V6462L `n' "Actual age"  , modify
}
label define V6462L       99 "NA"  , modify

label define V6463L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 16/91 {
    label define V6464L `n' "Actual age"  , modify
}
label define V6464L       99 "NA"  , modify
label define V6464L        0 "Inap.: no Wife or Permanent Friend in FU"  , modify

label define V6496L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; does not work for someone else only; current job not covered by union contract; V6492=3-8; V6493=2-9; V6495=5 or 9"
label define V6515L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V6515L `n' "Actual number of weeks"  , modify
}
label define V6515L       99 "NA; DK"  , modify
label define V6515L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V6492=3-8"  , modify
label define V6516L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V6516L `n' "Actual number of hours"  , modify
}
label define V6516L       98 "Ninety-eight hours or more"  , modify
label define V6516L       99 "NA; DK"  , modify
label define V6516L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V6492=3-8; V6515=00"  , modify

label define V6595L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; does not work for someone else only; current job not covered by union contract; V6590=2 or 3; V6591=3-8; V6592=3 or 9; V6594=5 or 9"
label define V6611L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V6611L `n' "Actual number of weeks"  , modify
}
label define V6611L       99 "NA; DK"  , modify
label define V6611L        0 "Inap.: missed no work; no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; V6590=2 or 3; V6591=3-8;"  , modify
label define V6612L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V6612L `n' "Actual number of hours"  , modify
}
label define V6612L       98 "Ninety-eight hours or more"  , modify
label define V6612L       99 "NA; DK"  , modify
label define V6612L        0 "Inap.: none; no Wife/friend; unemployed; retired, permanently disabled, housewife, student; V6590=2 or 3; V6591=3-8; V6611=00"  , modify

label define V6713L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife/friend; V6464=00"

label define V6754L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V6802L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V6805L        0 "No weight"  , modify
forvalues n = 1/77 {
    label define V6805L `n' "Actual weight"  , modify
}

label define V6901L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V6903L `n' "Actual state (PSID State code)"  , modify
}
label define V6903L       99 "DK; NA"  , modify
label define V6903L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V7067L `n' "Actual age"  , modify
}
label define V7067L       98 "Ninety-eight years of age or older"  , modify
label define V7067L       99 "NA"  , modify

label define V7068L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 15/97 {
    label define V7069L `n' "Actual age"  , modify
}
label define V7069L       98 "Ninety-eight years of age or older"  , modify
label define V7069L       99 "NA"  , modify
label define V7069L        0 "Inap.: no Wife or Permanent Friend in FU; V7068=2"  , modify

label define V7099L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; does not work for someone else only; current job not covered by union contract; V7095=3-8; V7096=3,9; V7098=5 or 9"
label define V7118L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V7118L `n' "Actual number of weeks"  , modify
}
label define V7118L       99 "NA; DK"  , modify
label define V7118L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V7094=3-8"  , modify
label define V7119L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V7119L `n' "Actual number of hours per week"  , modify
}
label define V7119L       98 "Ninety-eight hours or more"  , modify
label define V7119L       99 "NA; DK"  , modify
label define V7119L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V7094=3-8; V7118=00"  , modify

label define V7197L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; does not work for someone else only; current job not covered by union contract; V7192=2 or 3; V7193=3-8; V7194=3 or 9; V7196=5 or 9"
label define V7213L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V7213L `n' "Actual number of weeks"  , modify
}
label define V7213L       99 "NA; DK"  , modify
label define V7213L        0 "Inap.: missed no work; no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; V7192=2 or 3; V7193=3-8"  , modify
label define V7214L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V7214L `n' "Actual number of hours per week"  , modify
}
label define V7214L       98 "Ninety-eight hours or more"  , modify
label define V7214L       99 "NA; DK"  , modify
label define V7214L        0 "Inap.: none; no Wife/friend; unemployed; retired, permanently disabled, housewife, student; V7192=2 or 3; V7193=3-8; V7213=00"  , modify

label define V7346L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife/friend; V7069=00"

label define V7387L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V7447L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V7451L        0 "No family weight"  , modify
forvalues n = 1/77 {
    label define V7451L `n' "Actual family weight"  , modify
}

label define V7501L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V7503L `n' "Actual state (PSID State code)"  , modify
}
label define V7503L       99 "DK; NA"  , modify
label define V7503L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V7658L `n' "Actual age"  , modify
}
label define V7658L       98 "98 years of age or older"  , modify
label define V7658L       99 "NA"  , modify

label define V7659L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 16/97 {
    label define V7660L `n' "Actual age"  , modify
}
label define V7660L       98 "98 years of age or older"  , modify
label define V7660L       99 "NA"  , modify
label define V7660L        0 "Inap.: no Wife/friend in FU; V7659=2"  , modify

label define V7710L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; permanently disabled, retired, housewife, student; does not work for someone else only; current job not covered by union contract; V7706=3-8; V7707=3,9; V7709=5 or 9"
label define V7741L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V7741L `n' "Actual number of weeks"  , modify
}
label define V7741L       99 "NA; DK"  , modify
label define V7741L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V7706=3-8"  , modify
label define V7742L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V7742L `n' "Actual number of hours per week"  , modify
}
label define V7742L       98 "Ninety-eight hours or more"  , modify
label define V7742L       99 "NA; DK"  , modify
label define V7742L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student; V7706=3-8; V7741=00"  , modify

label define V7883L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; does not work for someone else only; current job not covered by union contract; V7878=2 or 3; V7879=3-8; V7880=3 or 9; V7882=5 or 9"
label define V7904L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V7904L `n' "Actual number of weeks"  , modify
}
label define V7904L       99 "NA; DK"  , modify
label define V7904L        0 "Inap.: none; no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student; V7878=2 or 3; V7879=3-8"  , modify
label define V7905L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V7905L `n' "Actual number of hours per week"  , modify
}
label define V7905L       98 "Ninety-eight hours or more"  , modify
label define V7905L       99 "NA; DK"  , modify
label define V7905L        0 "Inap.: none; no Wife/friend; unemployed; retired, permanently disabled, housewife, student; V7878=2 or 3; V7879=3-8; V7904=00"  , modify

label define V7998L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife/friend; V7660=00"

label define V8039L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V8099L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V8103L        0 "No family weight"  , modify
forvalues n = 1/77 {
    label define V8103L `n' "Actual family weight"  , modify
}

label define V8201L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V8203L `n' "Actual state (PSID State code)"  , modify
}
label define V8203L       99 "DK; NA"  , modify
label define V8203L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V8352L `n' "Actual age"  , modify
}
label define V8352L       98 "Ninety-eight years of age or older"  , modify
label define V8352L       99 "NA"  , modify

label define V8353L  ///
       1 "Male"  ///
       2 "Female"
label define V8354L        0 "No Wife/friend in FU; Head is female or single male; V8353=2"  , modify
forvalues n = 14/97 {
    label define V8354L `n' "Actual age"  , modify
}
label define V8354L       98 "Ninety-eight years of age or older"  , modify
label define V8354L       99 "NA"  , modify

label define V8378L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed; retired, permanently disabled, housewife, student, other; works for self only; current job not covered by union contract; V8374=3-8; V8375=3 or 9; V8376=5 or 9"
label define V8403L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V8403L `n' "Actual number of weeks"  , modify
}
label define V8403L       99 "NA; DK"  , modify
label define V8403L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student, other; V8374=3-8"  , modify
label define V8404L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V8404L `n' "Actual number of hours per week"  , modify
}
label define V8404L       98 "Ninety-eight hours or more"  , modify
label define V8404L       99 "NA; DK"  , modify
label define V8404L        0 "Inap.: none; unemployed; retired, permanently disabled, housewife, student, other; V8374=3-8; V8403=00"  , modify

label define V8542L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student, other; works for self only; current job not covered by union contract; V8537=2 or 3; V8538=3-8; V8539=3 or 9; V8541=5 or 9"
label define V8562L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V8562L `n' "Actual number of weeks"  , modify
}
label define V8562L       99 "NA; DK"  , modify
label define V8562L        0 "Inap.: none; no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student, other; V8537=2 or 3; V8538=3-8"  , modify
label define V8563L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V8563L `n' "Actual number of hours per week"  , modify
}
label define V8563L       98 "Ninety-eight hours or more"  , modify
label define V8563L       99 "NA; DK"  , modify
label define V8563L        0 "Inap.: none; no Wife/friend in FU; unemployed; retired, permanently disabled, housewife, student, other; V8537=2 or 3; V8538=3-8; V8562=00"  , modify

label define V8622L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"  ///
       0 "Inap.: none; no Wife/friend in FU; V8354=00"

label define V8663L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V8723L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V8727L        0 "No weight"  , modify
forvalues n = 1/94 {
    label define V8727L `n' "Actual family weight"  , modify
}

label define V8801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V8803L `n' "Actual state (PSID State code)"  , modify
}
label define V8803L       99 "DK; NA"  , modify
label define V8803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 14/97 {
    label define V8961L `n' "Actual age"  , modify
}
label define V8961L       98 "Ninety-eight years of age or older"  , modify
label define V8961L       99 "NA"  , modify

label define V8962L  ///
       1 "Male"  ///
       2 "Female"
forvalues n = 16/97 {
    label define V8963L `n' "Actual age"  , modify
}
label define V8963L       98 "Ninety-eight years of age or older"  , modify
label define V8963L       99 "NA"  , modify
label define V8963L        0 `"Inap.: no Wife/"Wife" in FU:  Head is female (V8962=2) or single male"'  , modify

label define V9009L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 "Inap.: unemployed, retired, permanently disabled, housewife, student, other (V9005=3-8); works for self only (V9006=3 or 9); current job not covered by union contract (V9008=5 or 9)"
label define V9034L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V9034L `n' "Actual number of weeks"  , modify
}
label define V9034L       99 "NA; DK"  , modify
label define V9034L        0 "Inap.: did not work in 1982; unemployed, retired, permanently disabled, housewife, student, other (V9005=3-8)"  , modify
label define V9035L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V9035L `n' "Actual number of hours per week"  , modify
}
label define V9035L       98 "Ninety-eight hours or more"  , modify
label define V9035L       99 "NA; DK"  , modify
label define V9035L        0 "Inap.: unemployed, retired, permanently disabled, housewife, student, other (V9005=3-8); did not work in 1982 (V9034=00)"  , modify

label define V9192L  ///
       1 "Yes"  ///
       5 "No"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V9187=2 or 3); unemployed, retired, permanently disabled, housewife, student, other (V9188=3-8); works for self only (V9189=3 or 9); current job not covered by union contract (V9191=5 or 9)"'
label define V9212L        1 "One week or less"  , modify
forvalues n = 2/52 {
    label define V9212L `n' "Actual number of weeks"  , modify
}
label define V9212L       99 "NA; DK"  , modify
label define V9212L        0 `"Inap.: did not work in 1982; no Wife/"Wife" in FU (V9187=2 or 3); unemployed, retired, permanently disabled, housewife, student, other (V9188=3-8)"'  , modify
label define V9213L        1 "One hour or less"  , modify
forvalues n = 2/97 {
    label define V9213L `n' "Actual number of hours per week"  , modify
}
label define V9213L       98 "Ninety-eight hours or more"  , modify
label define V9213L       99 "NA; DK"  , modify
label define V9213L        0 `"Inap.: no Wife/"Wife" in FU (V9187=2 or 3); unemployed, retired, permanently disabled, housewife, student, other (V9188=3-8); did not work in 1982 (V9212=00)"'  , modify

label define V9308L  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"  ///
       0 `"Inap.: none; no Wife/"Wife" in FU (V8963=00)"'

label define V9349L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V9408L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"
label define V9433L        0 "No weight"  , modify
forvalues n = 1/94 {
    label define V9433L `n' "Actual family weight"  , modify
}

label values ER10001    ER10001L
label values ER10010    ER10010L
label values ER10090    ER10090L
label values ER10231    ER10231L
label values ER10572    ER10572L
label values ER11723    ER11723L
label values ER11727    ER11727L
label values ER11760    ER11760L
label values ER11848    ER11848L
label values ER12221    ER12221L
label values ER12222    ER12222L
label values ER12223    ER12223L
label values ER13001    ER13001L
label values ER13004    ER13004L
label values ER13011    ER13011L
label values ER13214    ER13214L
label values ER13362    ER13362L
label values ER13726    ER13726L
label values ER15447    ER15447L
label values ER15555    ER15555L
label values ER15836    ER15836L
label values ER15928    ER15928L
label values ER16516    ER16516L
label values ER16517    ER16517L
label values ER17001    ER17001L
label values ER17004    ER17004L
label values ER17014    ER17014L
label values ER17225    ER17225L
label values ER17391    ER17391L
label values ER17795    ER17795L
label values ER19612    ER19612L
label values ER19720    ER19720L
label values ER19897    ER19897L
label values ER19989    ER19989L
label values ER2001     ER2001L
label values ER2007     ER2007L
label values ER2008     ER2008L
label values ER2009     ER2009L
label values ER20457    ER20457L
label values ER20458    ER20458L
label values ER2080     ER2080L
label values ER21001    ER21001L
label values ER21003    ER21003L
label values ER21018    ER21018L
label values ER21151    ER21151L
label values ER21401    ER21401L
label values ER23009    ER23009L
label values ER23136    ER23136L
label values ER23334    ER23334L
label values ER23426    ER23426L
label values ER24148    ER24148L
label values ER24149    ER24149L
label values ER25001    ER25001L
label values ER25003    ER25003L
label values ER25018    ER25018L
label values ER25139    ER25139L
label values ER25397    ER25397L
label values ER2574     ER2574L
label values ER26990    ER26990L
label values ER27113    ER27113L
label values ER2716     ER2716L
label values ER27296    ER27296L
label values ER27297    ER27297L
label values ER27392    ER27392L
label values ER27393    ER27393L
label values ER28047    ER28047L
label values ER28048    ER28048L
label values ER36001    ER36001L
label values ER36003    ER36003L
label values ER36018    ER36018L
label values ER36144    ER36144L
label values ER36402    ER36402L
label values ER38202    ER38202L
label values ER3853     ER3853L
label values ER3858     ER3858L
label values ER3880     ER3880L
label values ER3883     ER3883L
label values ER39299    ER39299L
label values ER3941     ER3941L
label values ER3944     ER3944L
label values ER40471    ER40471L
label values ER40472    ER40472L
label values ER40564    ER40564L
label values ER40565    ER40565L
label values ER41037    ER41037L
label values ER41038    ER41038L
label values ER4156     ER4156L
label values ER4158     ER4158L
label values ER4159     ER4159L
label values ER42001    ER42001L
label values ER42003    ER42003L
label values ER42018    ER42018L
label values ER42179    ER42179L
label values ER42431    ER42431L
label values ER44175    ER44175L
label values ER45272    ER45272L
label values ER46448    ER46448L
label values ER46449    ER46449L
label values ER46542    ER46542L
label values ER46543    ER46543L
label values ER46981    ER46981L
label values ER46982    ER46982L
label values ER47301    ER47301L
label values ER47303    ER47303L
label values ER47318    ER47318L
label values ER47492    ER47492L
label values ER47749    ER47749L
label values ER49494    ER49494L
label values ER5001     ER5001L
label values ER5006     ER5006L
label values ER5007     ER5007L
label values ER5008     ER5008L
label values ER50612    ER50612L
label values ER5079     ER5079L
label values ER51809    ER51809L
label values ER51810    ER51810L
label values ER51903    ER51903L
label values ER51904    ER51904L
label values ER52405    ER52405L
label values ER52406    ER52406L
label values ER53001    ER53001L
label values ER53003    ER53003L
label values ER53018    ER53018L
label values ER53192    ER53192L
label values ER53455    ER53455L
label values ER55244    ER55244L
label values ER5573     ER5573L
label values ER56360    ER56360L
label values ER5715     ER5715L
label values ER57548    ER57548L
label values ER57549    ER57549L
label values ER57658    ER57658L
label values ER57659    ER57659L
label values ER58223    ER58223L
label values ER58224    ER58224L
label values ER60001    ER60001L
label values ER60003    ER60003L
label values ER60018    ER60018L
label values ER60207    ER60207L
label values ER60470    ER60470L
label values ER62366    ER62366L
label values ER63482    ER63482L
label values ER64670    ER64670L
label values ER64671    ER64671L
label values ER64809    ER64809L
label values ER64810    ER64810L
label values ER65459    ER65459L
label values ER65460    ER65460L
label values ER6723     ER6723L
label values ER6728     ER6728L
label values ER6750     ER6750L
label values ER6753     ER6753L
label values ER6811     ER6811L
label values ER6814     ER6814L
label values ER6996     ER6996L
label values ER6998     ER6998L
label values ER6999     ER6999L
label values ER7001     ER7001L
label values ER7006     ER7006L
label values ER7007     ER7007L
label values ER7008     ER7008L
label values ER7175     ER7175L
label values ER7669     ER7669L
label values ER7811     ER7811L
label values ER8969     ER8969L
label values ER8974     ER8974L
label values ER8996     ER8996L
label values ER8999     ER8999L
label values ER9057     ER9057L
label values ER9060     ER9060L
label values ER9247     ER9247L
label values ER9249     ER9249L
label values ER9250     ER9250L
label values V10001     V10001L
label values V10003     V10003L
label values V10419     V10419L
label values V10420     V10420L
label values V10421     V10421L
label values V10459     V10459L
label values V10561     V10561L
label values V10562     V10562L
label values V10677     V10677L
label values V10775     V10775L
label values V10776     V10776L
label values V10877     V10877L
label values V10884     V10884L
label values V10955     V10955L
label values V10996     V10996L
label values V1101      V1101L
label values V1103      V1103L
label values V11055     V11055L
label values V11079     V11079L
label values V11101     V11101L
label values V11103     V11103L
label values V11606     V11606L
label values V11607     V11607L
label values V11608     V11608L
label values V11650     V11650L
label values V11705     V11705L
label values V11706     V11706L
label values V11937     V11937L
label values V11938     V11938L
label values V11991     V11991L
label values V12013     V12013L
label values V12068     V12068L
label values V12069     V12069L
label values V12292     V12292L
label values V12293     V12293L
label values V12344     V12344L
label values V1239      V1239L
label values V1240      V1240L
label values V12400     V12400L
label values V12401     V12401L
label values V1241      V1241L
label values V12446     V12446L
label values V12501     V12501L
label values V12503     V12503L
label values V1292      V1292L
label values V1293      V1293L
label values V13011     V13011L
label values V13012     V13012L
label values V13013     V13013L
label values V13053     V13053L
label values V13105     V13105L
label values V13106     V13106L
label values V13232     V13232L
label values V13282     V13282L
label values V13283     V13283L
label values V13417     V13417L
label values V13452     V13452L
label values V13499     V13499L
label values V13500     V13500L
label values V13564     V13564L
label values V13565     V13565L
label values V13640     V13640L
label values V13641     V13641L
label values V1368      V1368L
label values V1369      V1369L
label values V13701     V13701L
label values V13703     V13703L
label values V14114     V14114L
label values V14115     V14115L
label values V14116     V14116L
label values V14153     V14153L
label values V14203     V14203L
label values V14204     V14204L
label values V14328     V14328L
label values V14376     V14376L
label values V14377     V14377L
label values V14513     V14513L
label values V14524     V14524L
label values V14546     V14546L
label values V14547     V14547L
label values V14611     V14611L
label values V14612     V14612L
label values V14687     V14687L
label values V14688     V14688L
label values V14737     V14737L
label values V14801     V14801L
label values V14803     V14803L
label values V1485      V1485L
label values V1490      V1490L
label values V15130     V15130L
label values V15131     V15131L
label values V15132     V15132L
label values V15161     V15161L
label values V15257     V15257L
label values V15258     V15258L
label values V15463     V15463L
label values V15559     V15559L
label values V15560     V15560L
label values V15993     V15993L
label values V15999     V15999L
label values V16020     V16020L
label values V16021     V16021L
label values V16085     V16085L
label values V16086     V16086L
label values V1609      V1609L
label values V16161     V16161L
label values V16162     V16162L
label values V16208     V16208L
label values V16301     V16301L
label values V16303     V16303L
label values V16631     V16631L
label values V16632     V16632L
label values V16633     V16633L
label values V16662     V16662L
label values V16758     V16758L
label values V16759     V16759L
label values V16981     V16981L
label values V17077     V17077L
label values V17078     V17078L
label values V17390     V17390L
label values V17396     V17396L
label values V17417     V17417L
label values V17418     V17418L
label values V17482     V17482L
label values V17483     V17483L
label values V17545     V17545L
label values V17546     V17546L
label values V17701     V17701L
label values V17703     V17703L
label values V1801      V1801L
label values V1803      V1803L
label values V18049     V18049L
label values V18050     V18050L
label values V18051     V18051L
label values V18100     V18100L
label values V18196     V18196L
label values V18197     V18197L
label values V18402     V18402L
label values V18498     V18498L
label values V18499     V18499L
label values V18721     V18721L
label values V18727     V18727L
label values V18748     V18748L
label values V18749     V18749L
label values V18813     V18813L
label values V18814     V18814L
label values V18898     V18898L
label values V18899     V18899L
label values V19001     V19001L
label values V19003     V19003L
label values V19349     V19349L
label values V19350     V19350L
label values V19351     V19351L
label values V19400     V19400L
label values V1942      V1942L
label values V1943      V1943L
label values V1944      V1944L
label values V19496     V19496L
label values V19497     V19497L
label values V19702     V19702L
label values V19798     V19798L
label values V19799     V19799L
label values V1998      V1998L
label values V1999      V1999L
label values V20021     V20021L
label values V20027     V20027L
label values V20048     V20048L
label values V20049     V20049L
label values V20113     V20113L
label values V20114     V20114L
label values V20198     V20198L
label values V20199     V20199L
label values V20301     V20301L
label values V20303     V20303L
label values V20651     V20651L
label values V20652     V20652L
label values V20653     V20653L
label values V20700     V20700L
label values V2076      V2076L
label values V2077      V2077L
label values V20796     V20796L
label values V20797     V20797L
label values V21002     V21002L
label values V21098     V21098L
label values V21099     V21099L
label values V21321     V21321L
label values V21328     V21328L
label values V21354     V21354L
label values V21355     V21355L
label values V21419     V21419L
label values V21420     V21420L
label values V21504     V21504L
label values V21505     V21505L
label values V21601     V21601L
label values V21603     V21603L
label values V2197      V2197L
label values V2202      V2202L
label values V22406     V22406L
label values V22407     V22407L
label values V22408     V22408L
label values V22455     V22455L
label values V22808     V22808L
label values V23180     V23180L
label values V23187     V23187L
label values V2321      V2321L
label values V23211     V23211L
label values V23212     V23212L
label values V23275     V23275L
label values V23276     V23276L
label values V23333     V23333L
label values V23334     V23334L
label values V2401      V2401L
label values V2403      V2403L
label values V2542      V2542L
label values V2543      V2543L
label values V2544      V2544L
label values V2596      V2596L
label values V2597      V2597L
label values V2674      V2674L
label values V2675      V2675L
label values V2687      V2687L
label values V2823      V2823L
label values V2828      V2828L
label values V2968      V2968L
label values V3001      V3001L
label values V3003      V3003L
label values V3095      V3095L
label values V3096      V3096L
label values V3097      V3097L
label values V3129      V3129L
label values V3130      V3130L
label values V3185      V3185L
label values V3186      V3186L
label values V3216      V3216L
label values V3241      V3241L
label values V3300      V3300L
label values V3301      V3301L
label values V3401      V3401L
label values V3403      V3403L
label values V3508      V3508L
label values V3509      V3509L
label values V3510      V3510L
label values V3544      V3544L
label values V3545      V3545L
label values V3603      V3603L
label values V3604      V3604L
label values V3638      V3638L
label values V3663      V3663L
label values V3720      V3720L
label values V3721      V3721L
label values V3801      V3801L
label values V3803      V3803L
label values V3921      V3921L
label values V3922      V3922L
label values V3923      V3923L
label values V3998      V3998L
label values V3999      V3999L
label values V4057      V4057L
label values V4058      V4058L
label values V4093      V4093L
label values V4102      V4102L
label values V4204      V4204L
label values V4224      V4224L
label values V4301      V4301L
label values V4303      V4303L
label values V4436      V4436L
label values V4437      V4437L
label values V4438      V4438L
label values V4479      V4479L
label values V4507      V4507L
label values V4508      V4508L
label values V4607      V4607L
label values V4608      V4608L
label values V4684      V4684L
label values V4695      V4695L
label values V4862      V4862L
label values V5096      V5096L
label values V5099      V5099L
label values V5201      V5201L
label values V5203      V5203L
label values V5350      V5350L
label values V5351      V5351L
label values V5352      V5352L
label values V5383      V5383L
label values V5417      V5417L
label values V5418      V5418L
label values V5522      V5522L
label values V5523      V5523L
label values V5567      V5567L
label values V5608      V5608L
label values V5662      V5662L
label values V5665      V5665L
label values V5701      V5701L
label values V5703      V5703L
label values V5850      V5850L
label values V5851      V5851L
label values V5852      V5852L
label values V5878      V5878L
label values V5904      V5904L
label values V5905      V5905L
label values V6051      V6051L
label values V6052      V6052L
label values V6116      V6116L
label values V6157      V6157L
label values V6209      V6209L
label values V6212      V6212L
label values V6301      V6301L
label values V6303      V6303L
label values V6462      V6462L
label values V6463      V6463L
label values V6464      V6464L
label values V6496      V6496L
label values V6515      V6515L
label values V6516      V6516L
label values V6595      V6595L
label values V6611      V6611L
label values V6612      V6612L
label values V6713      V6713L
label values V6754      V6754L
label values V6802      V6802L
label values V6805      V6805L
label values V6901      V6901L
label values V6903      V6903L
label values V7067      V7067L
label values V7068      V7068L
label values V7069      V7069L
label values V7099      V7099L
label values V7118      V7118L
label values V7119      V7119L
label values V7197      V7197L
label values V7213      V7213L
label values V7214      V7214L
label values V7346      V7346L
label values V7387      V7387L
label values V7447      V7447L
label values V7451      V7451L
label values V7501      V7501L
label values V7503      V7503L
label values V7658      V7658L
label values V7659      V7659L
label values V7660      V7660L
label values V7710      V7710L
label values V7741      V7741L
label values V7742      V7742L
label values V7883      V7883L
label values V7904      V7904L
label values V7905      V7905L
label values V7998      V7998L
label values V8039      V8039L
label values V8099      V8099L
label values V8103      V8103L
label values V8201      V8201L
label values V8203      V8203L
label values V8352      V8352L
label values V8353      V8353L
label values V8354      V8354L
label values V8378      V8378L
label values V8403      V8403L
label values V8404      V8404L
label values V8542      V8542L
label values V8562      V8562L
label values V8563      V8563L
label values V8622      V8622L
label values V8663      V8663L
label values V8723      V8723L
label values V8727      V8727L
label values V8801      V8801L
label values V8803      V8803L
label values V8961      V8961L
label values V8962      V8962L
label values V8963      V8963L
label values V9009      V9009L
label values V9034      V9034L
label values V9035      V9035L
label values V9192      V9192L
label values V9212      V9212L
label values V9213      V9213L
label values V9308      V9308L
label values V9349      V9349L
label values V9408      V9408L
label values V9433      V9433L

save "C:/Users/`c(username)'/Dropbox/Numerical VSL/PSID_kn/PSID_formatted.dta", replace
