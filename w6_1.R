s = 0
for (i in 1:100) {
  s = s + 1
}

sum(1:100)

for (i in 1:5) {
  if (i %% 2 == 1)
    cat(rep("*", i), "\n")
}

dir.create('./datafile')
f_pre = './datafile/file_'
f_suf = '.txt'
dat = mtcars
n = nrow(dat)
cut = 10
nfile = ceiling(n / cut)
for (i in 1:(nfile - 1)) {
  ind = (cut * (i - 1) + 1):(cut * i)
  write.table(dat[ind,], file=paste0(f_pre, i, f_suf), sep = '\t')
  print(i)
}
ind = (cut * i + 1):n
write.table(dat[ind,], file=paste0(f_pre, i + 1, f_suf), sep = '\t')

#parsing
ch = c("A/B/C/D/F", "A/AA", "BB/B", "Quit", "CC/C")
xp = list()
i = 1
while (ch[i] != "Quit" & i <= length(ch)) {
  xp[[i]] = strsplit(ch[i], '/')
  print(xp[[i]])
  i = i + 1
}
table(unlist(xp))
