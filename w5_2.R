x = rnorm(10, mean=1, sd=2)
x
which(x==min(x))
indx = which.min(x)
indx
x[indx]
min(x)
which(x==max(x))
indx = which.max(x)
indx
x[indx]
max(x)

x = 1:5
y = -2:2
if (any(x < 0))
  print(x)
if (any(y < 0))
  print(abs(y))  
if (y < 0)
  print(y)  
if (any(y < 0)) {
  print(abs(y))
  cat("\n y contains negative values")
}

if (pi > 3) cat("\n expr(T)") else cat("\n expr(F)")
x = 1:5
if (length(x) == 5) {
  if (sum(x) == 15) {
    cat("\n Vector x length=", length(x), ", sum = ", sum(x))
  } else {
    cat("\n Vector x length !=", length(X))
  }
}

x = c(10, 3, 6, 9)
y = c(1, 5, 4, 12)
ifelse(x > y, x, y)
score = c(80, 75, 40, 98)
grade = ifelse(score >= 50, "pass", "fail")
data.frame(score, grade)
y = -2:2
ifelse(y >= 0, y, -y)
abs(y)

tmp = c(3, -1, 1, -2, 0)
sn = ifelse(tmp > 0, "pos", ifelse(tmp < 0, "neg", "zero"))
data.frame(tmp, sn)
x = c(1, 3, 2, 5, 2)
i = 2
switch(i, mean(x), median(x), sd(x), var(x))
type = "mean"
switch(type, mean=mean(x), sd=sd(X), var=var(x))
