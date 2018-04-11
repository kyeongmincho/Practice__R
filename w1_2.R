# 0307 2018
####################################
help.start()
help(boxplot)
?boxplot
boxplot(count ~ spray, data = InsectSprays, col = lightgray)
InsectSprays
?InsectSprays
example(boxplot)


####################################
#p26 기본적인 R 명령어

x = 3
y = 15
x
y

x = c(1,3,5,7)
x[0]

{x=3; y=2}

n = 100 #number of sample
# x = 3

####################################
# p28 search() 함수
search()
library(ggplot2)
library(MASS)
require(MASS)
ls()
help(ls(2)[101])
a = library(abctools) # error
b = require(abctools) # warning 자동설치
####################################
# p29
objects(1)
ls(1)
ls(3)
ls()
remove(b)
rm(n)
rm(list = c(x,y))
rm(list=ls()) # all remove

####################################
#p32
?options
options(digits = 20) # 자릿수
pi

####################################
# p33 연습문제1
install.packages(animation)
library(animation)#1
search()
ls(2) #2
example(newton.method) #3
help.search(test) #4




#5
weight = c(64.5,67,70,84,86)
height = c(1.9,1.65,1.70,1.75,1.80)
bmi = weight/(height^2)
