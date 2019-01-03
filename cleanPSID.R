
# Author: Ken Norris
# Date: July 3, 2018
# Purpose: Create xwalk for years when PSID id for each variable changes each year.
# Code produces data frame with all relevant ids. Build panel using these id's for each year

library(devtools)
install_github("floswald/psidR")

yr91 <- readRDS('C:\\users\\Ken831\\Documents\\PSID\\familyfiles\\1992.rds')

require(psidR)
library(data.table)
library(tidyverse)
library(foreign)




r = system.file(package="psidR")
cwf = openxlsx::read.xlsx(file.path(r,"psid-lists","psid.xlsx"))

convertlists <- function(data) {
  temp1 <- sapply(data, is.list)
  temp2 <- do.call(
    cbind, lapply(data[temp1], function(x) 
      data.frame(do.call(rbind, x), check.names=FALSE)))
  cbind(data[!temp1], temp2)
}



# #get var names for 2015 iteration and use as id for variables to keep

fam_variables_to_keep <-
  c(
     'V20302',   # FAMILY INTERVIEW NUMBER 
     'V20621',  # FAMILY ID -- USE TO LINK FAMILIES OVER TIME */
            #NOTE THAT LATINO SAMPLE INTEGRATED IN SAMPLE */
     'V20344',   # ANNUAL HOURS WORKED BY HEAD OF HOUSEHOLD */
     'V20374',   # ANNUAL HOURS WORKED BY SPOUSE */
     'V20429',   # ANNUAL LABOR INCOME OF HEAD */
     'V20436',   # ANNUAL LABOR INCOME OF SPOUSE */
     'V20451',   # HEAD AND WIFE'S TAXABLE LABOR INCOME */
     'V21481',   # TOTAL FAMILY MONEY INCOME */
     'V20303',   #STATE */
            #COUNTY VARIABLE SUPPRESSED IN 1992 WAVE */
     'V20651',   # AGE, HEAD */
     'V20653',   # AGE, SPOUSE */
     'V20652',   # GENDER, HEAD */
     'V21419',   # SPANISH DESCENT, HEAD */
     'V21420',   # RACE, HEAD */
     'V21354',   # SPANISH DESCENT, SPOUSE */
     'V21355',   # RACE, WIFE */
     'V20701',   # OCCUPATION, HEAD */
     'V20702',   # INDUSTRY, HEAD */
     'V20796',   # WEEKS OF WORK PER YEAR, HEAD */
     'V20797',   # HOURS PER WEEK WORKED, HEAD */
     'V21003',   # OCCUPATION, SPOUSE */
     'V21004',   # INDUSTRY, SPOUSE */
     'V21098',   # WEEKS OF WORK PER YEAR, SPOUSE */
     'V21099',   # HOURS PER WEEK WORKED, SPOUSE */
     'V21493',   # HOURLY EARNINGS, HEAD */
     'V21494',   # HOURLY EARNINGS, SPOUSE */
     'V21547',   # FAMILY WEIGHT -- REPRESENTS CORE, NON-LATINO WEIGHT */
     'V20198',   # EDUC, HEAD */
     'V20199',   #EDUC, SPOUSE */
     'V20021',   #HEALTH, HEAD */
     'V20027',   #HEALTH, SPOUSE */
     'V19400',   #UNION, HEAD */
     'V19702'    #UNION, SPOUSE */
  )

more_fam_vars_to_keep <-
  c(
   'ER53179',   #OCCUPATION, HEAD
   'ER53180',   #INDUSTRY, HEAD
   'ER53216',   #HOURS PER WEEK WORKED, HEAD
   'ER53442',   #OCCUPATION, SPOUSE
   'ER53443',   #INDUSTRY, SPOUSE
   'ER53479',   #HOURS PER WEEK WORKED, SPOUSE
   'ER54309'    #INCOME, SPOUSE 
   )

occ_indpre80 <- 
  c(
    'V3115_A',  #OCCUPATION, HEAD RECODE
    'V3116_A',  #INDUSTRY, HEAD RECODE
    'V3183_A',  #OCCUPATION, SPOUSE RECODE
    'V3184_A'   #INDUSTRY, SPOUSE RECODE
  )

edu_pre85 <- 
  c(
    'V13640',     # OTHER EDU PRE 1985, HEAD */
    'V13641'      # OTHER EDU PRE 1985, SPOUSE */
  )

add_jobs_keep <- 
  c(
    'ER25190',   #OCCUPATION2, HEAD
    'ER25191',   #INDUSTRY2, HEAD
    'ER25197',   #HOURS PER WEEK WORKED2, HEAD
    'ER25448',   #OCCUPATION2, SPOUSE
    'ER25449',   #INDUSTRY2, SPOUSE
    'ER25455',   #HOURS PER WEEK WORKED2, SPOUSE
    'ER25222',   #OCCUPATION3, HEAD
    'ER25223',   #INDUSTRY3, HEAD
    'ER25229',   #HOURS PER WEEK WORKED3, HEAD
    'ER25480',   #OCCUPATION3, SPOUSE
    'ER25481',   #INDUSTRY3, SPOUSE
    'ER25487',   #HOURS PER WEEK WORKED3, SPOUSE
    'ER25254',   #OCCUPATION4, HEAD
    'ER25255',   #INDUSTRY4, HEAD
    'ER25261',   #HOURS PER WEEK WORKED4, HEAD
    'ER25512',   #OCCUPATION4, SPOUSE
    'ER25513',   #INDUSTRY4, SPOUSE
    'ER25519'    #HOURS PER WEEK WORKED4, SPOUSE
  )

ind_identifiers <- 
  c(
  #Want to keep ER30001, ER30002, 
  'ER30001', #MAIN 68 IDENTIFIERS 
  'ER30002', #PERSON ID
  'ER30043', # /* 1970 */
  'ER30045', # 1970 RELATIONSHIP TO HEAD (RTH)
  'ER30067', # /* 1971 */ 152 - 155
  'ER30069', # 1971 RTH
  'ER30091', # /* 1972 */  207 - 210
  'ER30093', #
  'ER30117', # /* 1973 */ 265 - 268
  'ER30119', #
  'ER30138', # /* 1974 */  317 - 320
  'ER30140', 
  'ER30160', # /* 1975 */ 370 - 373
  'ER30162',
  'ER30188', # /* 1976 */ 436 - 439
  'ER30190',
  'ER30217', # /* 1977 */  503 - 506
  'ER30219',
  'ER30246', # /* 1978 */  571 - 574
  'ER30248',
  'ER30283', # /* 1979 */  648 - 651
  'ER30285',
  'ER30313', # /* 1980 */  718 - 721
  'ER30315',
  'ER30343', # /* 1981 */  788 - 791
  'ER30345',
  'ER30373', # /* 1982 */  858 - 861
  'ER30375',
  'ER30399', # /* 1983 */  919 - 922
  'ER30401',
  'ER30429', # /* 1984 */  992 - 995
  'ER30431',
  'ER30463', # /* 1985 */  1077 - 1080
  'ER30465',
  'ER30498', # /* 1986 */  1167 - 1170
  'ER30500',
  'ER30535', # /* 1987 */ 1259 - 1262
  'ER30537',
  'ER30570', # /* 1988 */  1348 - 1351
  'ER30572',
  'ER30606', # /* 1989 */  1438 - 1441
  'ER30608',
  'ER30642', # /* 1990 */  1528 - 1532
  'ER30644',
  'ER30689', # /* 1991 */  1647 - 1650
  'ER30691',
  'ER30733', # /* 1992 */  1764 - 1767
  'ER30735',
  'ER30806', # /* 1993 */ 1914 - 1918
  'ER30808',
  'ER33101', # /* 1994 */  2195 - 2199
  'ER33103',
  'ER33201', # /* 1995 */  2294 - 2298
  'ER33203',
  'ER33301', # /* 1996 */  2487 - 2490
  'ER33303',
  'ER33401', # /* 1997 */  2571 - 2575
  'ER33403',
  'ER33501', # /* 1999 */  2656 - 2660
  'ER33503',
  'ER33601',  # /* 2001 */  2850 - 2853
  'ER33603',
  'ER33701', # /* 2003 */  3032 - 3036
  'ER33703',
  'ER33801', # /* 2005 */  3187 - 3191
  'ER33803',
  'ER33901', # /* 2007 */ 3360 - 3364
  'ER33903',
  'ER34001', # /* 2009 */  3512 - 3516
  'ER34003',
  'ER34101', # /* 2011 */  3615 - 3619
  'ER34103',
  'ER34201', # /* 2013 */  3733 - 3737
  'ER34203', 
  'ER34301', # /* 2015 */  3879 - 3883
  'ER34303' 
  
)

hoh <- 
  c(
    'ER30045', # 1970 RELATIONSHIP TO HEAD (RTH)
    'ER30069', # 1971 RTH
    'ER30093', 
    'ER30119', #
    'ER30140', 
    'ER30162',
    'ER30190',
    'ER30219',
    'ER30248',
    'ER30285',
    'ER30315',
    'ER30345',
    'ER30375',
    'ER30401',
    'ER30431',
    'ER30465',
    'ER30500',
    'ER30537',
    'ER30572',
    'ER30608',
    'ER30644',
    'ER30691',
    'ER30735',
    'ER30808',
    'ER33103',
    'ER33203',
    'ER33303',
    'ER33403',
    'ER33503',
    'ER33603',
    'ER33703',
    'ER33803',
    'ER33903',
    'ER34003',
    'ER34103',
    'ER34203', 
    'ER34303' 
    
  )

loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

x <- loadRData("IND2015ER.rda")
x <- x[,ind_identifiers]


#KEEPING JUST SRC ORIGINAL SAMPLE IDs here 
SRC_sample <- subset(x, x$ER30001 < "2930")

#xl <- subset(SRC_sample, select = -c(ER30001, ER30002))


#get only heads of households from SRC sample IDs

SRC_heads <- apply(SRC_sample, 1, function(r) any(r %in% c("1", "10")))
xtt <- SRC_sample[SRC_heads,]

#generate unique inidividual id to then merge to each 
ind_id <- xtt$ER30001*1000 + xtt$ER30002

#dropping those head indicators to just have famids 
xtt <- xtt[, !(names(xtt) %in% hoh)]
xtt <- as.data.frame(xtt)
xtt <- subset(xtt, select = -c(ER30001, ER30002))

xttBycol <- as.list(xtt)

xttBycol <- lapply(xttBycol, cbind, ind_id)

xtd <-lapply(xttBycol, function(x) x[!duplicated(x[[1]]),])

#Need command here to get rid of duplicates rows of famid for each list 


big = do.call(cbind, xttBycol)

#Of duplicate famids, first instance will always be head(until they die, then it goes to someone lower)
#Or someone leaves family and gets new id 

xj <- xtt[,c("ER30043", "ind_id")]
xtt.s <- xtt[,c("ER30067", "ind_id")]

xj.first <- xj[match(unique(xj$ER30043), xj$ER30043),]



#Now do this for every year and append all of them
#Need to do this unique id thing for each column
#Save each two cols as an element of a list, do operation

xtt.Two <- merge(xj.first, xtt.s, by= c("ind_id"))

my_inds <- list()

xtt_list = split(xtt,)


#NEED TO FIX THIS 
datalist = list()

for (i in xttBycol){
  xj <- xtt[i]
  xj.first <- xj[match(unique(xj[[i]]), xj[[i]]),]
  datalist[[i]] <- xj.first
}

#Eventually use this to get total ID then rename below


#Want to rename ind_identifiers to match up to family files 
names(xtt) <- 
  c(
    "V3",    # ER30001
    "V442",  # ER30020
    "V1102", # ER30043
    "V1802", # ER30067
    "V2402", # ER30091
    "V3002", # ER30117
    "V3402", # ER30138
    "V3802", # ER30160
    "V4302", # ER30188
    "V5202", # ER30217
    "V5702", # ER30246
    "V6302", # ER30283
    "V6902", # ER30313
    "V7502", # ER30343
    "V8202", # ER30373
    "V8802", # ER30399
    "V10002", # ER30429
    "V11102", # ER30463
    "V12502", # ER30498
    "V13702", # ER30535
    "V14802", # ER30570
    "V16302", # ER30606
    "V17702", # ER30642
    "V19002", # ER30689
    "V20302", # ER30733
    "V21602", # ER30806
    "ER2002", # ER33101
    "ER5002", # ER33201
    "ER7002", # ER33301
    "ER10002", # ER33401
    "ER13002", # ER33501
    "ER17002", # ER33601
    "ER21002", # ER33701
    "ER25002", # ER33801
    "ER36002", # ER33901
    "ER42002", # ER34001
    "ER47302", # ER34101
    "ER53002", # ER34201
    "ER60002"  # ER34301
    
  )


#Data frame is built below. Need to rename above variables to their proper names to see what the total frame looks like


#List of corresponding codes from PSID data, then turn into dataframe
corresponding_codes <- sapply(fam_variables_to_keep, function(x) getNamesPSID(x, cwf, years = NULL))

corresponding_codes1 <- sapply(more_fam_vars_to_keep, function(x) getNamesPSID(x, cwf, years = NULL))

corresponding_codes2 <- sapply(occ_indpre80, function(x) getNamesPSID(x, cwf, years = NULL))

corresponding_codes3 <- sapply(edu_pre85, function(x) getNamesPSID(x, cwf, years = NULL))


df2 <- as.data.frame(corresponding_codes1)
#renaming the variables in the additional variables to keep in order to gain consistency
#for info on which variables these are refer to fam_variables_to_keep above
names(df2) <- c ('V20701','V20702','V20797','V21003', 'V21004', 'V21099', 'V20436')


df1 <- as.data.frame(corresponding_codes)


df3 <- as.data.frame(corresponding_codes2)
names(df3) <- c('V20701','V20702', 'V21003', 'V21004')
#cbind this one because it doesn't correspond to other ones

df4 <- as.data.frame(corresponding_codes3)
names(df4) <- c('V20198', 'V20199' )

#Could probably put below in a loop to fill in df1
#Fills in main psid Names dataframe with those missing observations for occ, ind , edu

#Since the names are consistent all that needs to change to merge new DFs is the index on 
# right side of true 

df1$V20701 <- ifelse(is.na(df1$V20701) == TRUE, df2$V20701, df1$V20701)
df1$V20702 <- ifelse(is.na(df1$V20702) == TRUE, df2$V20702, df1$V20702)
df1$V20797 <- ifelse(is.na(df1$V20797) == TRUE, df2$V20797, df1$V20797)
df1$V21003 <- ifelse(is.na(df1$V21003) == TRUE, df2$V21003, df1$V21003)
df1$V21004 <- ifelse(is.na(df1$V21004) == TRUE, df2$V21004, df1$V21004)
df1$V21099 <- ifelse(is.na(df1$V21099) == TRUE, df2$V21099, df1$V21099)
df1$V20436 <- ifelse(is.na(df1$V20436) == TRUE, df2$V20436, df1$V20436)

df1$V20701 <- ifelse(is.na(df1$V20701) == TRUE, df3$V20701, df1$V20701)
df1$V20702 <- ifelse(is.na(df1$V20702) == TRUE, df3$V20702, df1$V20702)
df1$V21003 <- ifelse(is.na(df1$V21003) == TRUE, df3$V21003, df1$V21003)
df1$V21004 <- ifelse(is.na(df1$V21004) == TRUE, df3$V21004, df1$V21004)

#For these edits to run must change colnames above

df1$V20198 <- ifelse(is.na(df1$V20198) == TRUE, df4$V20198, df1$V20198)
df1$V20199 <- ifelse(is.na(df1$V20199) == TRUE, df4$V20199, df1$V20199)
#datt <- merge(df1, df3, by=0, all=TRUE)

PSID_names <- convertlists(df1)
rm(df1)


#Run below if want to include Jobs 2 - 4 for 
#PSID_names <- convertlists(datt)

#Rename variables to show variables that exist in each iteration
names(PSID_names)<-
  c(
    "fam_id",    # INTERVIEW YEAR SPECIFIC FAMILY INDICATOR 
    "fam_68id",  # FAMILY 1968 ID -- USE TO LINK FAMILIES OVER TIME */
    #NOTE THAT LATINO SAMPLE INTEGRATED IN SAMPLE */
    "hr_worked",   # ANNUAL HOURS WORKED BY HEAD OF HOUSEHOLD */
    "hr_worked_spouse",   # ANNUAL HOURS WORKED BY SPOUSE */
    "income",   # ANNUAL LABOR INCOME OF HEAD */
    "income_spouse",   # ANNUAL LABOR INCOME OF SPOUSE */
    "hh_taxable_income",   # HEAD AND WIFE'S TAXABLE LABOR INCOME */
    "total_income",   # TOTAL FAMILY MONEY INCOME */
    "state",   #STATE */
    #COUNTY VARIABLE SUPPRESSED IN 1992 WAVE */
    "age",   # AGE, HEAD */
    "age_spouse",   # AGE, SPOUSE */
    "gender",   # GENDER, HEAD */
    "hispanic",   # SPANISH DESCENT, HEAD */
    "race",   # RACE, HEAD */
    "hispanic_spouse",   # SPANISH DESCENT, SPOUSE */
    "race_spouse",   # RACE, WIFE */
    "occupation",   # OCCUPATION, HEAD */
    "industry",   # INDUSTRY, HEAD */
    "weekperyear_work",   # WEEKS OF WORK PER YEAR, HEAD */
    "hrperweek_work",   # HOURS PER WEEK WORKED, HEAD */
    "occupation_spouse",   # OCCUPATION, SPOUSE */
    "industry_spouse",   # INDUSTRY, SPOUSE */
    "weekperyear_work_spouse",   # WEEKS OF WORK PER YEAR, SPOUSE */
    "hrperweek_work_spouse",   # HOURS PER WEEK WORKED, HEAD */
    "hourly_wage",   # HOURLY EARNINGS, HEAD */
    "hourly_wage_spouse",   # HOURLY EARNINGS, SPOUSE */
    "family_weight",   # FAMILY WEIGHT -- REPRESENTS CORE, NON-LATINO WEIGHT */
    'educ',        #EDUC, HEAD  */
    'educ_spouse',  #EDUC, SPOUSE */
    'hlth',        # HEALTH, HEAD */
    'hlth_spouse',  #HEALTH, SPOUSE */
    'union',      #UNION, HEAD */
    'union_spouse' #UNION, SPOUSE */
  )

setDT(PSID_names, keep.rownames = TRUE)[]
colnames(PSID_names)[1] <- "year"
PSID_names$year <- gsub("Y", "", paste(PSID_names$year), fixed = TRUE)
PSID_names$year <- as.numeric(as.character(PSID_names$year))
PSID_names <- PSID_names[-1:-2,] 

write.dta(PSID_names, "PSID_names.dta")



#save(PSID_names, file ="PSID_names.rda")

# #test set below  
# 
# #get var names for 2015 iteration and use as id for variables to keep
# 
# fam_variables_to_keep <-
#   c( 
#     'V20302',  # FAMILY ID -- USE TO LINK FAMILIES OVER TIME */
#     #NOTE THAT LATINO SAMPLE INTEGRATED IN SAMPLE */ 
#     'V20344',   # ANNUAL HOURS WORKED BY HEAD OF HOUSEHOLD */
#     'V20436'   # ANNUAL LABOR INCOME OF SPOUSE */
# 
#   )
# 
# indvarsTest <- data.frame(year=c(1987,1990),ind.weight=c("ER30569","ER30641"))
# 
# #Data frame is built below. Need to rename above variables to their proper names to see what the total frame looks like
# 
# 
# #List of corresponding codes from PSID data, then turn into dataframe 
# corresponding_codesTest <- sapply(fam_variables_to_keep, function(x) getNamesPSID(x, cwf, years = c(1987, 1989)))
# 
# xwalk.yearsTest <- as.data.frame(corresponding_codesTest)
# 
# PSID_namesTest <- convertlists(xwalk.yearsTest)
# 
# rm(xwalk.yearsTest)
# 
# #Rename variables to show variables that exist in each iteration 
# names(PSID_namesTest)<-
#   c( 
#     "fam_id",  # FAMILY ID -- USE TO LINK FAMILIES OVER TIME */
#     #NOTE THAT LATINO SAMPLE INTEGRATED IN SAMPLE */ 
#     "hr_worked",   # ANNUAL HOURS WORKED BY HEAD OF HOUSEHOLD */
#     "income_spouse"   # ANNUAL LABOR INCOME OF SPOUSE */
#   )
# 
# 
# setDT(PSID_namesTest, keep.rownames = TRUE)[]
# colnames(PSID_namesTest)[1] <- "year"
# PSID_namesTest$year <- gsub("Y", "", paste(PSID_namesTest$year), fixed = TRUE)
# PSID_namesTest$year <- as.numeric(as.character(PSID_namesTest$year))

# See https://github.com/floswald/psidR for example usage 

d = build.panel(datadir = '~/PSID/familyfiles',
                fam.vars = PSID_names,
                ind.vars = indvars,
                wealth.vars = FALSE,
                SAScii = TRUE, 
                heads.only = FALSE,
                sample = "SRC",
                design = "balanced",
                verbose = TRUE)


# Call this function above. Will spit back entire data set for each year, use next few functions to get what we want
# Get row based on getNames function used above
loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

#used for colnames for total panel variable names 
substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

fpath <- "C:\\users\\Ken831\\Documents\\PSID\\familyfiles\\"
setwd(fpath)
file.names <- list.files(path = fpath, pattern= "*.rda") 

datalist=list()

for(i in 1:length(file.names)){

    year_PSID <- basename(file.names[i])
    year_PSID <- as.numeric(gsub("[^0-9]", "", year_PSID))
    year_PSID_colname <- substrRight(year_PSID, 4)
    
    varstokeep <- PSID_names[PSID_names$year == year_PSID]
    varstokeep[,1]=NULL
    #the first two years are getting frigged because of the sort, rest are fine
    #varstokeep <- apply(varstokeep, 1,(gsub("[^0-9]", "", year_PSID)) )
    varstokeep <- sort(varstokeep)
    #Need to figure out how to drop NAs and keep names in this loop
    varexist <- !is.na(varstokeep)
    varstoname <- t(t(apply(varexist, 1, function(u) paste( names(which(u)) ))))
    varstokeep <- c(t(varstokeep))
    # From that row pass as subset of columns 
    tr <- loadRData(file.names[i])
    tr <- tr[, (names(tr) %in% varstokeep)]
    names(tr)<- paste0(varstoname, year_PSID_colname)
    idname <- paste("fam_68id", year_PSID_colname, sep="")
    colnames(tr)[which(names(tr) == idname)] <- "famID"
    #Creating unique identifier for each respondent 
    # ID = 1968 family ID * 10000 + interview number
    
    
    title <- paste0 ("clean", file.names[i])
    
    save(tr, file = title)
    datalist[[i]] <- tr
}

totalpanel <- Reduce(function(dtf1, dtf2) merge(dtf1, dtf2, by = "famID", all=TRUE),
                     datalist)

save(totalpanel, file = "PSID_allyears.rda")

write.dta(totalpanel, file= "PSID_allyears.dta")
