# factor
grade = c("A", "A", "B", "C", "B", "B")
f.grade = factor(grade)
f.grade
f2.grade = factor(grade, ordered=T)
f2.grade
attributes(f.grade)$levels
attributes(f2.grade)
attr(f.grade, "levels")
attr(f2.grade, "class")
lev = c("C", "B", "A")
f3.grade = factor(grade, levels=lev, ordered=T)
f3.grade
levels(f2.grade)
levels(f3.grade)
as.numeric(f2.grade)
as.numeric(f3.grade)
as.numeric(grade)

# dataframe
x1 = 1:4
x2 = c("Kim", "Lee", "Jung", "Park")
dat = data.frame(x1, x2)
dat2 = data.frame(num=x1, name=x2)
dat2$num
dat2[1]
is.data.frame(dat2[1])
is.list(dat2)
is.matrix(dat2)
a = list(x1, x2)
is.list(a)
is.data.frame(a)
dat2[[1]]
dat2$name
dat3 = data.frame(x1, x2, stringAsFactors=F)
dat3[[2]]
options(stringsAsFactors = F)
dat4 = data.frame(x1, x2)
dat4[[2]]
as.numeric(dat2$name)
as.numeric(dat3[[2]])

# array
x1 = array(1:24, dim=c(4, 3, 2))
x2 = array(1:32, dim=c(2, 2, 4, 2))
x1
x2
x1[,,1]
x2[,,3,1]

x = 1:100
sum1 = sum(x[13:100])
x = c(1:5, 10:20, 30:45, 2:5, 11:30)
x
x > 12
x[x > 12]
which(x > 2)

sum2 = sum(x[x > 12])
sum2
sum3 = sum(x[x > 10 & x < 20])
sum3

x1 = 1:10
x2 = rep(c("M", "F", "F", "M", "F"))
dat = data.frame(x1, x2)
dat
dat[dat[,2] == "M",]

# apply
x_mat = matrix(rnorm(100), 20, 5)
x_mat
help(rnorm)
apply(x_mat, 2, mean)
apply(x_mat, 2, var)
x1 = c(1, NA, 2, 3, 4)
x2 = c(NA, 3, 2, 3, NA)
mean(x1)
mean(x1, na.rm=T)
xm = cbind(x1, x2)
xm
apply(xm, 2, mean)
apply(xm, 2, mean, na.rm=T)
