
use "C:\Users\Ken831\Dropbox\Numerical VSL\PSID\code\Additions to panel\healthadd.dta", clear

label define ER10001L  ///
       1 "Release number 1 - April 1999"  ///
       2 "Release number 2 - May 1999"  ///
       3 "Release number 3- June 1999"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"  ///
       7 "Release number 7 - March 2016"

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

label define ER13001L  ///
       1 "Release number 1 - August 2001"  ///
       2 "Release number 2 - October 2001"  ///
       3 "Release number 3 - January 2002"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"

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

label define ER17001L  ///
       1 "Release number 1 - November 2002"  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - November 2013"  ///
       4 "Release number 4 - February 2014"  ///
       5 "Release number 5 - January 2016"  ///
       6 "Release number 6 - November 2017"

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

label define ER2001L  ///
       1 "Release number 1 - August 1995"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"

label define ER21001L  ///
       1 "Release number 1 - December 2004"  ///
       2 "Release number 2 - October 2005"  ///
       3 "Release number 3 - November 2005"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"

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

label define ER25001L  ///
       1 "Release number 1, March 2007"  ///
       2 "Release number 2, May 2007"  ///
       3 "Release number 3, November 2013"  ///
       4 "Release number 4, February 2014"  ///
       5 "Release number 5, January 2016"  ///
       6 "Release number 6, November 2017"

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

label define ER27297L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.:  no wife/"wife" in FU"'

label define ER36001L  ///
       1 "Release number 1, June 2009"  ///
       2 "Release number 2, October 2009"  ///
       3 "Release number 3, January 2012"  ///
       4 "Release number 4, December 2013"  ///
       5 "Release number 5, February 2014"  ///
       6 "Release number 6, January 2016"  ///
       7 "Release number 7, November 2017"

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

label define ER40472L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no wife/"wife" in FU;"'

label define ER42001L  ///
       1 "Release number 1, July 2011"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"

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

label define ER46449L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA"  ///
       0 `"Inap.:  no wife/"wife" in FU (ER42019=0);"'

label define ER47301L  ///
       1 "Release number 1, July 2013"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"

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

label define ER50612L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER47319=0)"'

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

label define ER53001L  ///
       1 "Release number 1, May 2015"  ///
       2 "Release number 2, January 2016"  ///
       3 "Release number 3, November 2017"

label define ER55244L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER56360L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5)"'

label define ER57549L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"  ///
       0 `"Inap.:  no Wife/"Wife" in FU (ER54305=5)"'

label define ER60001L  ///
       1 "Release number 1, May 2017"

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

label define ER64671L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  no Spouse/Partner in FU (ER61347=5)"

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

label define ER7001L  ///
       1 "Release number 1 - August 1996"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"

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

label define V10001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V11101L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

label define V11991L  ///
       1 "Excellent"  ///
       2 "Very good"  ///
       3 "Good"  ///
       4 "Fair"  ///
       5 "Poor"  ///
       8 "DK"  ///
       9 "NA"

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

label define V12501L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V13500L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V13484=5)"'

label define V13701L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V14547L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V14531=5)"'

label define V14801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V16021L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V16005=5)"'

label define V16301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V17418L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"  ///
       0 `"Inap.: no Wife/"Wife" in FU (V17402=5)"'

label define V17701L  ///
       2 "Release Number 2 - May 2008"  ///
       3 "Release Number 3 - December 2013"

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

label define V19001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

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

label define V20301L  ///
       3 "Release number 3 - May 2008"  ///
       4 "Release number 4 - December 2013"

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

label define V21601L  ///
       1 "Release number 1 - January 1998"  ///
       2 "Release number 2 - February 1998"  ///
       3 "Release number 3 - April 2000"  ///
       4 "Release number 4 - May 2008"

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

label values ER10001    ER10001L
label values ER11723    ER11723L
label values ER11727    ER11727L
label values ER11760    ER11760L
label values ER13001    ER13001L
label values ER15447    ER15447L
label values ER15555    ER15555L
label values ER15836    ER15836L
label values ER17001    ER17001L
label values ER19612    ER19612L
label values ER19720    ER19720L
label values ER19897    ER19897L
label values ER2001     ER2001L
label values ER21001    ER21001L
label values ER23009    ER23009L
label values ER23136    ER23136L
label values ER23334    ER23334L
label values ER25001    ER25001L
label values ER26990    ER26990L
label values ER27113    ER27113L
label values ER27297    ER27297L
label values ER36001    ER36001L
label values ER38202    ER38202L
label values ER3853     ER3853L
label values ER3858     ER3858L
label values ER3883     ER3883L
label values ER39299    ER39299L
label values ER40472    ER40472L
label values ER42001    ER42001L
label values ER44175    ER44175L
label values ER45272    ER45272L
label values ER46449    ER46449L
label values ER47301    ER47301L
label values ER49494    ER49494L
label values ER5001     ER5001L
label values ER50612    ER50612L
label values ER51810    ER51810L
label values ER53001    ER53001L
label values ER55244    ER55244L
label values ER56360    ER56360L
label values ER57549    ER57549L
label values ER60001    ER60001L
label values ER62366    ER62366L
label values ER63482    ER63482L
label values ER64671    ER64671L
label values ER6723     ER6723L
label values ER6728     ER6728L
label values ER6753     ER6753L
label values ER7001     ER7001L
label values ER8969     ER8969L
label values ER8974     ER8974L
label values ER8999     ER8999L
label values V10001     V10001L
label values V10877     V10877L
label values V10884     V10884L
label values V11101     V11101L
label values V11991     V11991L
label values V12293     V12293L
label values V12344     V12344L
label values V12501     V12501L
label values V13417     V13417L
label values V13452     V13452L
label values V13500     V13500L
label values V13701     V13701L
label values V14513     V14513L
label values V14524     V14524L
label values V14547     V14547L
label values V14801     V14801L
label values V15993     V15993L
label values V15999     V15999L
label values V16021     V16021L
label values V16301     V16301L
label values V17390     V17390L
label values V17396     V17396L
label values V17418     V17418L
label values V17701     V17701L
label values V18721     V18721L
label values V18727     V18727L
label values V18749     V18749L
label values V19001     V19001L
label values V20021     V20021L
label values V20027     V20027L
label values V20049     V20049L
label values V20301     V20301L
label values V21321     V21321L
label values V21328     V21328L
label values V21355     V21355L
label values V21601     V21601L
label values V23180     V23180L
label values V23187     V23187L
label values V23212     V23212L

save "C:\Users\Ken831\Dropbox\Numerical VSL\PSID\code\Additions to panel\healthadd.dta", replace
