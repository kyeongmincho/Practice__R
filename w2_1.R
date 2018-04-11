real = 3.5
as.integer(real)
intg = 3
is.integer(intg)
intg2 = as.integer(3)
is.integer(intg2)

ch <- c("red","blue", "yellow")
ch[1]
ch[3]
# ch2 <- c("a','b',"c")
ch2 <- c("a",'b',"c")

test = c(TRUE, FALSE, TRUE)
is.logical(test)
test2 = c(T, F, T)
as.numeric(test2)
as.character(test2)
as.logical(c(1, 0, 2, 3))
as.logical(c("T", "F"))
as.logical(c("a", "b"))
as.logical(c("t", "f"))

x = "char"
mode(x)

x = 5
is.character(x)
is.numeric(x)
is.double(x)

x = "abc"
as.double(x)

x = 1
as.character(x)
as.character(123)

vec <- c(1,2,3,4,5)
vec
vec[1]
vec[3:5]
vec[3.1:5]
3.1:5
-5:-3
pi:6.2
6:pi
help(":")
vec[7]
vec[10] = 5
vec

#if <- c(1,2,3) #if, else, for

num <- c(1,2,3) # numeric type
ch <- c("red","blue","yellow") #character type
ch
lo = c(T, F, F, T)
lo
num2 = c(1, 2, "red", "blue")
num2
lo2 = c(T, F, T, 1, 3)
lo2
lo3 <- c(T, F, "abc")
lo3

assign("x", 1:10)
x
x[3]
name = paste0("x", 1:10)
name
for (i in 1:5)
  assign(name[i], 1:10)
ls()
x1
x1 <- 1:10
x1
x2 = 5:1
x2
x3 <<- 1:20
x3
x3 = 1:5
x3

x = c(1, 2, 3)
y = c(1, 2, 3, 4)
v = 2*x + y + 1 # x=c(1,2,3,1) , 1 = (1,1,1,1)
v

z = c(4, 5)
w = 2*rep(z, 2) + y
w
help(rep)
