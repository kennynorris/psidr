/* 
Author: Ken Norris

Date: August 2018

Last Update: August 2018

Description: This code names the variables in the PSID panel and also drops the 
non-core sample (ie keeps SRC) and heads only. 

*/

use "C:\Users\Ken831\Dropbox\Numerical VSL\PSID_kn\PSID_formatted.dta", clear

* if 1968 ID < 2930, out of core sample. This takes care of both SEO and Latino
* oversample. 

keep if V1230 < 2930
 
*Locals for renaming purposes*

local years 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 ///
			90 91 92 93 94 95 96 97 99 01 03 05 07 09 11 13 15
			
* Data for each survey wave is for previous year 
* (ex. 1970 survey = hrs worked 1969)

#delimit ;

local 68id V1230
V1932
V2533
V3085
V3497
V3909
V4423
V5336
V5835
V6446
V7050
V7642
V8335
V8943
V10400
V11581
V12988
V14090
V15105
V16605
V18021
V19321
V20621
V22400
ER2005G
ER5005G
ER7005G
ER10005G
ER13019
ER17022
ER21009
ER25009
ER36009
ER42009
ER47309
ER53009
ER60009;

 
local hr_worked V1138
V1839
V2439
V3027
V3423
V3823
V4332
V5232
V5731
V6336
V6934
V7530
V8228
V8830
V10037
V11146
V12545
V13745
V14835
V16335
V17744
V19044
V20344
V21634
ER4096
ER6936
ER9187
ER12174;


local hr_worked99 ER16471
ER20399
ER24080
ER27886
ER40876
ER46767
ER52175
ER57976
ER65156;

local hr_worked_spouse V1148
V1849
V2449
V3035
V3431
V3831
V4344
V5244
V5743
V6348
V6946
V7540
V8238
V8840
V10131
V11258
V12657
V13809
V14865
V16365
V17774
V19074
V20374
V21670
ER4107
ER6947
ER9198
ER12185;

local hr_worked_spouse99
ER16482
ER20410
ER24091
ER27897
ER40887
ER46788
ER52196
ER57997
ER65177;

local income V1191
V1892
V2493
V3046
V3458
V3858
V4373
V5283
V5782
V6391
V6981
V7573
V8265
V8873
V10256
V11397
V12796
V13898
V14913
V16413
V17829
V19129
V20429
V21739
ER4122
ER6962
ER9213
ER12196;

local income99 ER16493
ER20425
ER24117
ER27913
ER40903
ER46811
ER52219
ER58020
ER65200;

local income_spouse V1198
V1899
V2500
V3053
V3465
V3865
V4379
V5289
V5788
V6398
V6988
V7580
V8273
V8881
V10263
V11404
V12803
V13905
V14920
V16420
V17836
V19136
V20436
V23324
ER3479
ER6480
ER8597
ER11491;



local income_spouse99 ER14757
ER18930
ER22300
ER26281
ER37299
ER43290
ER48615
ER54309
ER61349;


local totalhh_taxable_income V1205
V1906
V2507
V3060
V3472
V3872
V4386
V5297
V5796
V6408
V6998
V7590
V8283
V8891
V10277
V11419
V12818
V13920
V14935
V16435
V17851
V19151
V20451
V21959
ER4146
ER6986
ER9237
ER12069;

local totalhh_taxable_income99 ER16452
ER20449
ER24100
ER27953
ER40943
ER46851
ER52259
ER58060
ER65253;

local totalincome V1514
V2226
V2852
V3256
V3676
V4154
V5029
V5626
V6173
V6766
V7412
V8065
V8689
V9375
V11022
V12371
V13623
V14670
V16144
V17533
V18875
V20175
V21481
V23322
ER4153
ER6993
ER9244
ER12079; 

local totalincome99 ER16462
ER20456
ER24099
ER28037
ER41027
ER46935
ER52343
ER58152
ER65349;

local state V1103
V1803
V2403
V3003
V3403
V3803
V4303
V5203
V5703
V6303
V6903
V7503
V8203
V8803
V10003
V11103
V12503
V13703
V14803
V16303
V17703
V19003
V20303
V21603
ER4156
ER6996
ER9247
ER12221; 

local state99 ER13004
ER17004
ER21003
ER25003
ER36003
ER42003
ER47303
ER53003
ER60003;


local age V1239
V1942
V2542
V3095
V3508
V3921
V4436
V5350
V5850
V6462
V7067
V7658
V8352
V8961
V10419
V11606
V13011
V14114
V15130
V16631
V18049
V19349
V20651
V22406
ER2007
ER5006
ER7006
ER10009;

local age99 ER13010
ER17013
ER21017
ER25017
ER36017
ER42017
ER47317
ER53017
ER60017;

local age_spouse V1241
V1944
V2544
V3097
V3510
V3923
V4438
V5352
V5852
V6464
V7069
V7660
V8354
V8963
V10421
V11608
V13013
V14116
V15132
V16633
V18051
V19351
V20653
V22408
ER2009
ER5008
ER7008
ER10011;

local age_spouse99 ER13012
ER17015
ER21019
ER25019
ER36019
ER42019
ER47319
ER53019
ER60019; 

local gender V1240
V1943
V2543
V3096
V3509
V3922
V4437
V5351
V5851
V6463
V7068
V7659
V8353
V8962
V10420
V11607
V13012
V14115
V15131
V16632
V18050
V19350
V20652
V22407
ER2008
ER5007
ER7007
ER10010; 

local gender99 ER13011
ER17014
ER21018
ER25018
ER36018
ER42018
ER47318
ER53018
ER60018;

local hispanic V11937
V13564
V14611
V16085
V17482
V18813
V20113
V21419
V23275
ER3941
ER6811
ER9057; 

local hispanic99 ER27392
ER40564
ER46542
ER51903
ER57658
ER64809;

local hispanic_spouse V12292
V13499
V14546
V16020
V17417
V18748
V20048
V21354
V23211
ER3880
ER6750
ER8996; 

local hispanic_spouse99 ER27296
ER40471
ER46448
ER51809
ER57548
ER64670;

local race V1490
V2202
V2828
V3300
V3720
V4204
V5096
V5662
V6209
V6802
V7447
V8099
V8723
V9408
V11055
V11938
V13565
V14612
V16086
V17483
V18814
V20114
V21420
V23276
ER3944
ER6814
ER9060
ER11848; 

local race99 ER15928
ER19989
ER23426
ER27393
ER40565
ER46543
ER51904
ER57659
ER64810;


local race_spouse V12293
V13500
V14547
V16021
V17418
V18749
V20049
V21355
V23212
ER3883
ER6753
ER8999
ER11760; 

local race_spouse99 ER15836
ER19897
ER23334
ER27297
ER40472
ER46449
ER51810
ER57549
ER64671;

local occupation V1279_A
V1984_A
V2582_A
V3115_A
V3529
V3968_A
V4459_A
V5374_A
V5873_A
V6497_A
V7100_A
V7712
V8380
V9011
V10460
V11651
V13054
V14154
V15162
V16663
V18101
V19401
V20701
V22456
ER4017
ER6857
ER9108
ER12085; 

local occupation99 ER13215
ER17226
ER21145
ER25127
ER36132
ER42167
ER47479
ER53179
ER60194; 

local industry V1279_B
V1985_A
V2583_A
V3116_A
V3531_A
V3969_A
V4460_A
V5375_A
V5874_A
V6498_A
V7101_A
V7713
V8381
V9012
V10461
V11652
V13055
V14155
V15163
V16664
V18102
V19402
V20702
V22457
ER4018
ER6858
ER9109
ER12086; 

local industry99 ER13216
ER17227
ER21146
ER25128
ER36133
ER42168
ER47480
ER53180
ER60195; 

local weekpryear V1292
V1998
V2596
V3129
V3544
V3998
V4507
V5417
V5904
V6515
V7118
V7741
V8403
V9034
V10561
V11705
V13105
V14203
V15257
V16758
V18196
V19496
V20796
V22575
ER2222
ER5221
ER7317
ER10231; 

local weekpryear99 ER13362
ER17391;

local hrprweek V1293
V1999
V2597
V3130
V3545
V3999
V4508
V5418
V5905
V6516
V7119
V7742
V8404
V9035
V10562
V11706
V13106
V14204
V15258
V16759
V18197
V19497
V20797
V22577
ER2225
ER5224
ER7320
ER10232; 

local hrprweek99 ER13363
ER17393
ER21176
ER25165
ER36170
ER42203
ER47516
ER53216
ER60231;

local occupation_spouse V1367_A
V2074_A
V2672_A
V3183_A
V3601_A
V4055_A
V4605_A
V5507_A
V6039_A
V6596_A
V7198_A
V7885
V8544
V9194
V10678
V12014
V13233
V14329
V15464
V16982
V18403
V19703
V21003
V22809
ER4048
ER6888
ER9139
ER12116; 

local occupation_spouse99 ER13727
ER17796
ER21395
ER25385
ER36390
ER42419
ER47736
ER53442
ER60457; 

local industry_spouse V1367_B
V2075_A
V2673_A
V3184_A
V3602_A
V4056_A
V4606_A
V5508_A
V6040_A
V6597_A
V7199_A
V7886
V8545
V9195
V10679
V12015
V13234
V14330
V15465
V16983
V18404
V19704
V21004
V22810
ER4049
ER6889
ER9140
ER12117; 

local industry_spouse99 ER13728
ER17797
ER21396
ER25386
ER36391
ER42420
ER47737
ER53443
ER60458; 

local weekpryear_spouse V1368
V2076
V2674
V3185
V3603
V4057
V4607
V5522
V6051
V6611
V7213
V7904
V8562
V9212
V10775
V12068
V13282
V14376
V15559
V17077
V18498
V19798
V21098
V22928
ER2716
ER5715
ER7811; 

local hrprweek_spouse V1369
V2077
V2675
V3186
V3604
V4058
V4608
V5523
V6052
V6612
V7214
V7905
V8563
V9213
V10776
V12069
V13283
V14377
V15560
V17078
V18499
V19799
V21099
V22930
ER2719
ER5718
ER7814
ER10714; 

local hrprweek_spouse99 ER13875
ER17963
ER21426
ER25423
ER36428
ER42455
ER47773
ER53479
ER60494; 

local hourly_wage V1567
V2279
V2906
V3275
V3695
V4174
V5050
V5631
V6178
V6771
V7417
V8069
V8693
V9379
V11026
V12377
V13629
V14676
V16150
V17536
V18887
V20187
V21493
ER4148
ER6988
ER9239
ER12217; 

local hourly_wage99 ER16514
ER20451
ER24137
ER28003
ER40993
ER46901
ER52309
ER58118
ER65315; 

local hourly_wage_spouse V1569
V2281
V2908
V3277
V3697
V4176
V5052
V5632
V6179
V6772
V7418
V8070
V8694
V9380
V11027
V12378
V13630
V14677
V16151
V17537
V18888
V20188
V21494

ER4149
ER6989
ER9240
ER12218; 

local hourly_wage_spouse99 ER16515
ER20452
ER24138
ER28004
ER40994
ER46902
ER52310
ER58119
ER65316; 

local weight V1609
V2321
V2968
V3301
V3721
V4224
V5099
V5665
V6212
V6805
V7451
V8103
V8727
V9433
V11079
V12446
V13687
V14737
V16208
V17612
V18943
V20243
V21547; 

local educ V1485
V2197
V2823
V3241
V3663
V4093
V4684
V5608
V6157
V6754
V7387
V8039
V8663
V9349
V10996
V12400
V13640
V14687
V16161
V17545
V18898
V20198
V21504
V23333
ER4158
ER6998
ER9249
ER12222; 

local educ99 ER16516
ER20457
ER24148
ER28047
ER41037
ER46981
ER52405
ER58223
ER65459; 

local educ_spouse V2687
V3216
V3638
V4102
V4695
V5567
V6116
V6713
V7346
V7998
V8622
V9308
V10955
V12401
V13641
V14688
V16162
V17546
V18899
V20199
V21505
V23334
ER4159
ER6999
ER9250
ER12223; 

local educ_spouse99 ER16517
ER20458
ER24149
ER28048
ER41038
ER46982
ER52406
ER58224
ER65460;

local health V10877
V11991
V13417
V14513
V15993
V17390
V18721
V20021
V21321
V23180
ER3853
ER6723
ER8969
ER11723;

local health99 ER15447
ER19612
ER23009
ER26990
ER38202
ER44175
ER49494
ER55244
ER62366; 

local health_spouse V10884
V12344
V13452
V14524
V15999
V17396
V18727
V20027
V21328
V23187
ER3858
ER6728
ER8974
ER11727;

local health_spouse99 ER15555
ER19720
ER23136
ER27113
ER39299
ER45272
ER50612
ER56360
ER63482;

local union V4479
V5383
V5878
V6496
V7099
V7710
V8378
V9009
V10459
V11650
V13053
V14153
V15161
V16662
V18100
V19400
V20700
V22455
ER2080
ER5079
ER7175
ER10090; 

local union99 ER15555
ER19720
ER23136
ER27113
ER39299
ER45272
ER50612
ER56360
ER63482;


local union_spouse V4862
V6595
V7197
V7883
V8542
V9192
V10677
V12013
V13232
V14328
V15463
V16981
V18402
V19702
V21002
V22808
ER2574
ER5573
ER7669
ER10572;


local union_spouse99 
ER13726
ER17795
ER21401
ER25397
ER36402
ER42431
ER47749
ER53455
ER60470;

#delimit cr

foreach x of varlist `68id'{
	local i = `i' + 1
	rename `x' famid_1968_`i'
}


local i = 1968
foreach x of varlist `hr_worked'{
	local i = `i' + 1
	rename `x' hr_worked`i'
}


local i = 1997
foreach x of varlist `hr_worked99'{
	local i = `i' + 2
	rename `x' hr_worked`i'
}
	
local i = 1968
foreach x of varlist `hr_worked_spouse'{
	local i = `i' + 1
	rename `x' hr_worked_spouse`i'
}

local i = 1997
foreach x of varlist `hr_worked_spouse99'{
	local i = `i' + 2
	rename `x' hr_worked_spouse`i'
}

local i = 1968
foreach x of varlist `income'{
	local i = `i' + 1
	rename `x' income`i'
}

local i = 1997
foreach x of varlist `income99'{
	local i = `i' + 2
	rename `x' income`i'
}

local i = 1968
foreach x of varlist `income_spouse'{
	local i = `i' + 1
	rename `x' income_spouse`i'
}

local i = 1997
foreach x of varlist `income_spouse99'{
	local i = `i' + 2
	rename `x' income_spouse`i'
}

local i = 1968
foreach x of varlist `totalhh_taxable_income '{
	local i = `i' + 1
	rename `x' totalhh_taxable_income`i'
}

local i = 1997
foreach x of varlist `totalhh_taxable_income99'{
	local i = `i' + 2
	rename `x' totalhh_taxable_income`i'
}

local i = 1968
foreach x of varlist `totalincome '{
	local i = `i' + 1
	rename `x' totalincome`i'
}

local i = 1997
foreach x of varlist `totalincome99'{
	local i = `i' + 2
	rename `x' totalincome`i'
}

local i = 1968
foreach x of varlist `state'{
	local i = `i' + 1
	rename `x' state`i'
}

local i = 1997
foreach x of varlist `state99'{
	local i = `i' + 2
	rename `x' state`i'
}

local i = 1968
foreach x of varlist `age'{
	local i = `i' + 1
	rename `x' age`i'
}

local i = 1997
foreach x of varlist `age99'{
	local i = `i' + 2
	rename `x' age`i'
}

local i = 1968
foreach x of varlist `age_spouse'{
	local i = `i' + 1
	rename `x' age_spouse`i'
}

local i = 1997
foreach x of varlist `age_spouse99'{
	local i = `i' + 2
	rename `x' age_spouse`i'
}

local i = 1968
foreach x of varlist `gender'{
	local i = `i' + 1
	rename `x' gender`i'
}

local i = 1997
foreach x of varlist `gender99'{
	local i = `i' + 2
	rename `x' gender`i'
}

local i = 1968
foreach x of varlist `hispanic'{
	local i = `i' + 1
	rename `x' hispanic`i'
}

local i = 1997
foreach x of varlist `hispanic99'{
	local i = `i' + 2
	rename `x' hispanic`i'
}

local i = 1968
foreach x of varlist `hispanic_spouse'{
	local i = `i' + 1
	rename `x' hispanic_spouse`i'
}

local i = 1997
foreach x of varlist `hispanic_spouse99'{
	local i = `i' + 2
	rename `x' hispanic_spouse`i'
}

local i = 1968
foreach x of varlist `race'{
	local i = `i' + 1
	rename `x' race`i'
}

local i = 1997
foreach x of varlist `race99'{
	local i = `i' + 2
	rename `x' race`i'
}

local i = 1968
foreach x of varlist `race_spouse'{
	local i = `i' + 1
	rename `x' race_spouse`i'
}

local i = 1997
foreach x of varlist `race_spouse99'{
	local i = `i' + 2
	rename `x' race_spouse`i'
}

local i = 1968
foreach x of varlist `occupation'{
	local i = `i' + 1
	rename `x' occupation`i'
}

local i = 1997
foreach x of varlist `occupation99'{
	local i = `i' + 2
	rename `x' occupation`i'
}

local i = 1968
foreach x of varlist `industry'{
	local i = `i' + 1
	rename `x' industry`i'
}

local i = 1997
foreach x of varlist `industry99'{
	local i = `i' + 2
	rename `x' industry`i'
}


local i = 1968
foreach x of varlist `weekpryear'{
	local i = `i' + 1
	rename `x' weekpryear_work`i'
}

local i = 1997
foreach x of varlist `weekpryear99'{
	local i = `i' + 2
	rename `x' weekpryear_work`i'
}

local i = 1968
foreach x of varlist `weekpryear_spouse'{
	local i = `i' + 1
	rename `x' weekpryear_work_spouse`i'
}

local i = 1968
foreach x of varlist `hrprweek'{
	local i = `i' + 1
	rename `x' hourperweek_work`i'
}

local i = 1997
foreach x of varlist `hrprweek99'{
	local i = `i' + 2
	rename `x' hourperweek_work`i'
}

local i = 1968
foreach x of varlist `hrprweek_spouse'{
	local i = `i' + 1
	rename `x' hourperweek_work_spouse`i'
}

local i = 1997
foreach x of varlist `hrprweek_spouse99'{
	local i = `i' + 2
	rename `x' hourperweek_work_spouse`i'
}


local i = 1968
foreach x of varlist `occupation_spouse'{
	local i = `i' + 1
	rename `x' occupation_spouse`i'
}

local i = 1997
foreach x of varlist `occupation_spouse99'{
	local i = `i' + 2
	rename `x' occupation_spouse`i'
}

local i = 1968
foreach x of varlist `weight'{
	local i = `i' + 1
	rename `x' fam_weight`i'
}

local i = 1968
foreach x of varlist `industry_spouse'{
	local i = `i' + 1
	rename `x' industry_spouse`i'
}

local i = 1997
foreach x of varlist `industry_spouse99'{
	local i = `i' + 2
	rename `x' industry_spouse`i'
}

local i = 1968
foreach x of varlist `hourly_wage'{
	local i = `i' + 1
	rename `x' hourly_wage`i'
}

local i = 1997
foreach x of varlist `hourly_wage99'{
	local i = `i' + 2
	rename `x' hourly_wage`i'
}

local i = 1968
foreach x of varlist `hourly_wage_spouse'{
	local i = `i' + 1
	rename `x' hourly_wage_spouse`i'
}

local i = 1997
foreach x of varlist `hourly_wage_spouse99'{
	local i = `i' + 2
	rename `x' hourly_wage_spouse`i'
}

local i = 1968
foreach x of varlist `educ'{
	local i = `i' + 1
	rename `x' educ`i'
}

local i = 1997
foreach x of varlist `educ99'{
	local i = `i' + 2
	rename `x' educ`i'
}

local i = 1968
foreach x of varlist `educ_spouse'{
	local i = `i' + 1
	rename `x' educ_spouse`i'
}

local i = 1997
foreach x of varlist `educ_spouse99'{
	local i = `i' + 2
	rename `x' educ_spouse`i'
}

local i = 1968
foreach x of varlist `health'{
	local i = `i' + 1
	rename `x' health`i'
}

local i = 1997
foreach x of varlist `health99'{
	local i = `i' + 2
	rename `x' health`i'
}

local i = 1968
foreach x of varlist `health_spouse'{
	local i = `i' + 1
	rename `x' health_spouse`i'
}

local i = 1997
foreach x of varlist `health_spouse99'{
	local i = `i' + 2
	rename `x' health_spouse`i'
}

local i = 1968
foreach x of varlist `union'{
	local i = `i' + 1
	rename `x' union`i'
}

local i = 1997
foreach x of varlist `union99'{
	local i = `i' + 2
	rename `x' union`i'
}

local i = 1968
foreach x of varlist `union_spouse'{
	local i = `i' + 1
	rename `x' union_spouse`i'
}

local i = 1997
foreach x of varlist `union_spouse99'{
	local i = `i' + 2
	rename `x' union_spouse`i'
}


save "C:\Users\Ken831\Dropbox\Numerical VSL\PSID_kn\PSID_cleaned.dta", replace
