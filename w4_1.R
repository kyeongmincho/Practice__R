#Input & Output
myname = "Jason Bourne"
paste("My name is", myname, sep=" ")
file_id = 1533 # file name
paste("Dataset_", file_id, ".txt", sep="")
paste(LETTERS[1:5], 1:5) #vector arguments
# (default) collapse = NULL
paste("A", "B", collapse='/')
paste(c("A", "B"), collapse='/')
paste(c("A", "B"), 1:2, collapse='/')
paste(c("A", "B"), 1:2,sep="?", collapse='/')
paste(c("A", "B"), 1:2,sep="", collapse='/')
paste0(c("A", "B"), 1:2, collapse='/')
paste0(LETTERS[1:5], letters[1:5])

test = c("abcedefg", "AFFY1245820")
nchar(test)

f_name = "AFFY1245820"
substr(f_name, 5, nchar(f_name))

strtrim("ABCDEF", 3)
strtrim(rep("abcdef", 3), c(1, 4, 10))

x = c(as = "asfef", qu="qwerty", "yuiop[", "b", "stuff.blaf.yeah")
x
strsplit(x, "e")
strsplit(x, "[a-e]")
strsplit(x, "[a-f]")
strsplit(x, "[aleu]")
unlist(strsplit("a.b.c", "."))
unlist(strsplit("a.b.c", "[.]"))
unlist(strsplit("a.b.c", ".", fixed=TRUE)) # fixed -> 정규표현식 사용 안 함

getwd()
setwd('~/../././././././././././../')
dir.create('example')
setwd('example')
getwd()
dir()
dir.create('./test')
dir()
test = dir('/')
t1 = grep('^[A-Ca-c][a-z]', test)
t2 = grep(".exe$", test, value=T)
t3 = grep("^[BbCc].+exe$", test, value=T)
colors()
grep("red", colors(), value=T)
