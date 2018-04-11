unlink("test", recursive=T)
dir()

test = dir('~/')
gsub("[.]", "/", test)
t2 = grep("[.]txt$", test, value=T)
t2
gsub("[.]txt", ".pdf", t2)
txt = c("std id", "class id")
gsub(" ", "_", txt)

dat = data.frame()
edit(dat)

a = readline("Input any integer: ")
a
b = readline("Input two integers with comma :")
as.numeric(unlist(strsplit(b, "[,]")))

setwd('/Volumes/GoogleDrive/?Ç¥ ?ìú?ùº?ù¥Î∏?/z-Directory/??Ä?ïô ?ûêÎ£?/3?ïô?ÖÑ 2?ïôÍ∏?/?ÜµÍ≥? ?Üå?îÑ?ä∏?õ®?ñ¥ Î∞? ?ã§?äµ/?ã§?äµ/w4_2')
getwd()
dir()
x1 = scan(file="input_noh.txt", what=numeric())
x1[1:5]
x2 = scan(file="input_noh.txt", what=character())
x2[1:5]
x3 = scan(file="input_noh.txt")
x3[1:5]
x4 = scan(file="input_h.txt")
x4[1:5]
x5 = scan(file="input_h.txt", what=character())
x5[1:5]
x6 = as.numeric(x5)
x6[!is.na(x6)]

dat = read.table(file="input_noh.txt")
dat[1:5,]
dat2 = read.table(file="input_noh.txt", header=T)
dat2[1:2,]
dat3 = read.table(file="input_h.txt", header=F, stringsAsFactors = F)
dat3[1:2,]
dat4 = read.table(file="input_h.txt", header=T)
dat4[1:2,]
dat3[1:5, 1]
data.frame(dat3[1:5, 1], as.numeric(dat3[1:5, 1]))

x = 1:10
cat(x, file="x.txt", sep="\n")
cat(x, sep="\t")
cat("\n ", 1, "st element of x = ", x[1])
for (i in 1:10)
  cat('x[', i, ']=', x[i], '\n', sep='')  

x1 = 1:20
x2 = rep(c("A", "B", "B", "A"), 5)
x3 = rep(c(T, F), each=10)
dat = cbind(x1, x2, x3)
dat
dat = data.frame(x1, x2, x3)
dat

write.table(dat, file="test1.txt", row.names=T, col.names=T, quote=T, sep="\t")
write.table(dat, file="test2.txt", row.names=F, col.names=F, quote=F, sep="\n")
write.table(dat, file="test3.csv", sep=",")

Sys.setenv(JAVA_HOME="C:\Program Files\Java\jdk1.8.0_92")
Sys.getenv()
install.packages("xlsx")
library(xlsx)
dat = read.xlsx(file='food.xlsx', sheetIndex=1, as.data.frame=T, header=T, startRow=1)

