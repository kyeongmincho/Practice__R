a = as.integer(15) & as.integer(10)
a

A = T
B = F
C = c(T, T)
D = c(F, T)
A & B
A && B
C & D
C && D
A | D
C || D
C > D

a = c(1, 2)
b = c(2, 2)
d = c(3, 4)
a < b
a <= b
a > d
a >= d
a == b
a != b

A = c(T, T)
B = c(F, T)
C = c(T, T)
D = c(T, F)
A == B
C == D
all(A == B)
all(A == C)
any(A == B)
any(B == D)



x = c(1,100,30,20,4)
x = sort(x)     
order(x)
x[order(x)]

sqrt(-17 + 0i)
sqrt(-17)
complex(3, 1)
complex(3, 10, -2)
z = 0 - 1i
Re(z)
Im(z)
Mod(z)
Conj(z)
z * Conj(z)
help(Mod)
Arg(z)
pi / 2
as.complex(paste0(3,"+",2,"i"))

rep(c(1, 2), times=3)
rep(c(1, 2), times=3, each=2)
rep(rep(c(1, 2), times=3), each=2)

b = as.logical(c('TRUE', 'FALSE'))
mode(b)
b

vec = vector()
vec
vec2 = numeric()
vec2
vec2[1:3] = letters[1:3]
vec2
vec3 = logical()
vec3
vec4 = character()
vec4
vec4[1] = 1
vec4

names(vec2) = c('first', 'second', 'third')
vec2
