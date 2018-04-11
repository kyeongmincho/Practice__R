# 1.  1항이 -10 부터 시작하여 30항이 10에서 끝나는 등차수열을 생성하여 x에 저장하시오.
x = seq(from=-10, to=10, length=30)
x

# 2. "S","T","A","T","S" 의 값을 순서대로 6번 반복하여 30개의 원소를 갖는 문자열 벡터 y를 생성하시오.
y = rep(c("S", "T", "A", "T", "S"), times=6)
y

# 3. 0, 7을 각각 15번 씩 반복하여 길이 30인 벡터 z를 생성하고 이를 논리형으로 변환하여 zm에 저장하시오.
z = rep(c(0, 7), each=15)
zm = as.logical(z)
zm

# 4. 1번의 x를 이용하여 6 x 5 의 행렬을 생성하고 xmat 변수에 저장 하시오. (행기준으로 채움)
xmat = matrix(x, nrow=6, ncol=5, byrow=T)
xmat

# 5. 1,2,3의 결과를 각각 성분으로 갖는 데이터프레임 xdat 를 생성하시오.
xdat = data.frame(x, y, z, zm)
xdat

# 6. x, y, zm, xdat를 원소로 갖는 리스트를 생성하여 xlst에 저장하시오.
xlst = list(x, y, zm, xdat)
xlst

# 7. 5의 xdat 중에서 첫번째와 두번째 변수를 선택하여 행렬로 변환하시오.
as.matrix(xdat[,1:2])

# 8. 5의 xdat 중에서 첫번째와 세번째 변수를 선택하여 행렬로 변환하시오.
as.matrix(xdat[,c(1, 3)])
cbind(xdat[,1], xdat[,3]) # koremo OK

# 9. 1의 x 벡터에서 -2보다 크고 4보다 작은 원소의 합을 구하시오.
sum(x[x > -2 & x < 4])

# 10. 4의 xmat에서 행의 합, 열의 평균, 분산 값을 각각 계산하시오.
apply(xmat, 1, sum)
apply(xmat, 2, mean)
apply(xmat, 2, var)
