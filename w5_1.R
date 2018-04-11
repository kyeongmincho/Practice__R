install.packages('xlsx')
require(xlsx)
setwd("d:/example")
dir()
dat = read.xlsx(file='food.xlsx', sheetIndex=1, as.data.frame=T,
                header=T, startRow=1)
head(dat)

x1 = data.frame(a = rnorm(10))
x1[2,1] = NA
write.xlsx(x1, file='test.xlsx', sheetName=as.character(1),
           col.names=T, row.names=F, append=F, showNA=T)
write.xlsx(x1, file='test.xlsx', sheetName=as.character(2),
           col.names=T, row.names=F, append=T, showNA=F)

for (i in 3:10)
  write.xlsx(x1, file='test.xlsx', sheetName=as.character(i),
             col.names=T, row.names=F, append=T, showNA=F)

save(list = c("dat"), file="ex_dat1.Rdata")
temp = ls()
temp
save.image(file="ex_dat2.Rdata")

rm(list=ls())
load(file="ex_dat1.Rdata")
ls()
load(file="ex_dat2.Rdata")
ls()

head(dat)
tail(dat)

length(dat[,1])
dim(dat)
dim(dat)[1]
dim(dat)[2]
nrow(dat)
ncol(dat)

v = c("a,b,c,d,e", "a,b", "d,e,f")
lapply(v, nchar)
sp = strsplit(v, ',')
sp
lapply(sp, length)
lapply(sp, paste0, 3)

sapply(v, nchar)
sapply(sp, length)
x = list(a=1:10, b=rnorm(20))
sapply(x, quantile, c(0.25, 0.5, 0.75))

install.packages('dplyr')
require(dplyr)

filter(mtcars, cyl==4, am==1)
filter(mtcars,wt>2,cyl==8)

names(mtcars)
select(mtcars, mpg, cyl, wt)
select(mtcars, -hp, -gear)

mtf = select(mtcars, mpg, am, cyl, hp, wt)
mutate(mtf,hw_rat=hp/wt)
mutate(mtf,hw_rat=hp/wt, cw_rat = cyl/wt)
arrange(mtf, mpg, desc(cyl))
arrange(mtf, am, cyl, wt)
summarize(mtcars, m_mpg=mean(mpg), v_mpg=var(mpg))
summarize(mtcars, md_mpg=median(mpg), md_wt=median(wt))
summarize(mtcars, trows=range(mpg))
mt_gr = group_by(mtcars, cyl)
mt_gr
summarize(mt_gr, m_mpg=mean(mpg), m_wt=mean(wt))