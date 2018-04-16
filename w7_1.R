wd_count = function(x, sep=" ") {
  temp = gsub("[(),.?!/ ]", sep, x)
  temp = unlist(strsplit(temp, sep))
  temp = temp[temp != ""]
  return(table(temp))
}
tx_data = c("Hello, I like statistics.",
            "I want to go out.",
            "You need to take a break.",
            "You are no nice.")
res = wd_count(tx_data)
sort(res, decreasing=T)

"a" %in% names(res)
intersect(c("I", "He"), names(res))
setdiff(c("I", "He"), names(res))
union(c("I", "He"), names(res))

fibo = function(n) {
  if (n == 1)
    return(1)
  if (n == 2)
    return(rep(1, 2))
  x = rep(1, n)
  for (i in 3:n)
    x[i] = x[i - 1] + x[i - 2]
  return(x)
}
fibo(1)
fibo(2)
fibo(30)

fibr = function(n) {
  if (n == 0) return(0)
  if (n == 1) return(1)
  return(fibr(n - 1) + fibr(n - 2))
}
fibr(1)
fibr(2)
fibr(30)

system.time(fibo(30))
system.time(fibr(30))

a = c(1, 3, 5, 6)
mean.k = function(x, k)
  return(mean(x^k))
mean.k(a, 2)
mean.k(a)

mean.k2 = function(x, k=3)
  return(mean(x^k))
mean.k2(a, 2)
mean.k2(a)

std.ftn = function(x)
  return(mean(x), var(x), (x-mean(x)) / sd(x))
std.ftn(a)

std.ftn2 = function(x)
  return(list(mean=mean(x), var(x), (x-mean(x)) / sd(x)))
std.ftn2(a)
std.ftn2

mat = matrix(1:12, 4, 3)
apply(mat, 1, function(x) return(x - prod(x)))

a = c(1, 3, 5)
noact = function(x) {
  loc = 3
  return(loc)
}
noact(a)
loc
a = c(1, 3, 5)
noact = function(x) {
  a[1] = 3
  return(a)
}
noact(10)
a

a = c(1, 3, 5)
noact = function(x) {
  a[1] = 3
  glb <<- c(1, 2)
  return(a)
}
noact(10)
a
glb
a = c(1, 3, 5)
noact = function(x, type=1) {
  if (type == 1)
    a[1] = 3
  if (type == 2)
    a[1] <<- 3
  return(a)
}
noact(10)
a
noact(5, 2)
a