library(dplyr)
library(ggformula)
NLSdata <- read.csv("C:\\Users\\Amanda Kay Montoya\\Documents\\Psyc 100A\\NLS Data\\NLSdata.csv")
NLSdata$HeightTotalIn <- NLSdata$HeightFt2010*12 + NLSdata$HeightIn2010

summary(NLSdata$HrsSleep2009)
gf_histogram(~HrsSleep2009, data = NLSdata, bins = 15)

gf_histogram(~LifeSat2008, data = NLSdata, bins = 10)

gf_jitter(HrsSleep2009~Cohab2009, data = NLSdata, color = "blue")

summary(lm(HrsSleep2009~Cohab2009, data = NLSdata))

summary(lm(HrsSleep2009~Sex, data = NLSdata))

summary(lm(HrsSleep2009~Ethnicity, data = NLSdata))

summary(lm(HrsSleep2009~as.factor(BdayMonth), data = NLSdata))

summary(lm(HrsSleep2010~HrsSleep2009, data = NLSdata))

summary(lm(HrsSleep2009~LifeSat2008, data = NLSdata))

summary(lm(HrsSleep2009~Income2009, data = NLSdata))

summary(lm(Income2009~HeightTotalIn+Sex, data = NLSdata))

summary(NLSdata$Weight2010)
