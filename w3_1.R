# Matrix
x1 = matrix(1:10, nrow=5, ncol=2, byrow=T)
x2 = matrix(1:10, 5, 2, byrow=F)
cbind(x1, x2)
rbind(x1, x2)
as.numeric(x1)

A = matrix(1:12, 4, 3)
rownames(A) = c("n1", "n2", "n3", "n4")
colnames(A) = c("x1", "x2", "x3")
paste0("x", 1:3)
A

rname = paste0("n", 1:4)
cname = paste0("x", 1:3)
B = matrix(1:12, 4, 3, dimnames=list(rname, cname))
nrow(B)
ncol(B)

A
A[, c(-1, -3)]
A[, -1:2]
A[, -(1:2)]

A = matrix(1:12, 4, 3)
A
A[1, 2]
A[2, 3]
A[1,]
A[,2]
A[c(1,3),]
A[, 1:2]
A[, -3]
ind_mat = matrix(c(1, 2, 3, 3), 2, 2, byrow=T)
ind_mat
A[ind_mat]
A = matrix(1:12, 4, 3)
B = matrix(1, 4, 3)
A + B
A - B
t(A)
A = matrix(1:6, 2, 3)
B = matrix(1, 3, 2)
A + B
A - B
A %*% B
A %*% t(B)

A = matrix(c(1, 3, 3, 4), 2, 2)
solve(A)
sum(diag(A))
det(A)
A.eig = eigen(A)
A.eig
U = A.eig$vectors
D = diag(A.eig$values)
U
D = solve(U) %*% A %*% U
D
solve(U) %*% A %*% U
U %*% D %*% solve(U)
D
diag(A)

x = c(1, 2, 3)
y = c(1, 2, 3)
sum(x * y)
x %o% y

# List
lst1 = list(a=1:10, b=matrix(1:4, 2, 2))
lst1
lst2 = list()
lst2
lst2[[1]] = matrix(1:10, 5, 2)
lst2[[2]] = lst1
mode(lst2[1])
mode(lst2[[1]])

lst1$a
lst2$b
