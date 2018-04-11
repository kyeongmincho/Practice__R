s = 0
for (i in 1:20) {
  s = s + i
  if (s >= 100)
    break
}
c(i, s)

s = 0
i = 0
while (i <= 20 & s < 100) {
  i = i + 1
  s = s + i
}
c(i, s)

s = 0
for (i in 1:10) {
  if (i %% 2 == 1)
    next
  s = s + i
}

tic = Sys.time()
sum(as.double(1:1e7))
toc = Sys.time()
as.numeric(toc - tic, units="secs")

tic = Sys.time()
s = 0
for (i in 1:1e7) {
  s = s + i
}
toc = Sys.time()
as.numeric(toc - tic, units="secs")
