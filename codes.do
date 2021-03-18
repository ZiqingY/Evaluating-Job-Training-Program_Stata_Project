*First row replication
clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
gen growth=re78-re75
sum growth if treated==0
reg re75 treated
reg re75 treated age age2 educ black hispanic nodegree
reg re78 treated
reg re78 treated age age2 educ black hispanic nodegree
reg growth treated
reg growth treated age age2
reg re78 treated re75
reg re78 treated re75 age age2 educ black hispanic nodegree
reg re78 treated re75 age age2 educ black hispanic nodegree married


*Second row replication
clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid1.dta"
gen growth=re78-re75
sum growth if treated==0
replace age2=age^2
reg re75 treated
reg re75 treated age age2 educ black hispanic nodegree
reg re78 treated
reg re78 treated age age2 educ black hispanic nodegree
reg growth treated
reg growth treated age age2
reg re78 treated re75
reg re78 treated re75 age age2 educ black hispanic nodegree
reg re78 treated re75 age age2 educ black hispanic nodegree married


*Third row replication
clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid2.dta"
gen growth=re78-re75
sum growth if treated==0
replace age2=age^2
reg re75 treated
reg re75 treated age age2 educ black hispanic nodegree
reg re78 treated
reg re78 treated age age2 educ black hispanic nodegree
reg growth treated
reg growth treated age age2
reg re78 treated re75
reg re78 treated re75 age age2 educ black hispanic nodegree
reg re78 treated re75 age age2 educ black hispanic nodegree married


*Fourth row replication
clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid3.dta"
gen growth=re78-re75
sum growth if treated==0
replace age2=age^2
reg re75 treated
reg re75 treated age age2 educ black hispanic nodegree
reg re78 treated
reg re78 treated age age2 educ black hispanic nodegree
reg growth treated
reg growth treated age age2
reg re78 treated re75
reg re78 treated re75 age age2 educ black hispanic nodegree
reg re78 treated re75 age age2 educ black hispanic nodegree married


*Test endogeneity for columns 8 and 9
clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid1.dta"
gen growth=re78-re75
replace age2=age^2
correlate treated re75 age age2 educ black hispanic nodegree married

clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid2.dta"
gen growth=re78-re75
replace age2=age^2
correlate treated re75 age age2 educ black hispanic nodegree married

clear all
use "C:\Users\Altair\Desktop\研二\实证方法\paper replication\nsw.dta" 
drop if treated==0
append using "C:\Users\Altair\Desktop\研二\实证方法\paper replication\psid3.dta"
gen growth=re78-re75
replace age2=age^2
correlate treated re75 age age2 educ black hispanic nodegree married






























