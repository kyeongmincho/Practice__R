# 1. Ex_data.csv 로부터 자료를 읽어서 raw_dat로 저장하시오.
setwd('G:/내 드라이브/z-Directory/대학 자료/3학년 2학기/통계 소프트웨어 및 실습/실습')
require(xlsx)
raw_dat = read.csv(file='Ex_data.csv', header=T)

# 2. head 함수를 사용하여 입력된 raw_dat를 확인하시오.
head(raw_dat)

# 3. raw_dat의 자료의 차원을 구하시오.
dim(raw_dat)

# 4. raw_dat의 첫번째 열에서 유전자의 이름을 추출하고 gene_name.txt로 저장하시오.
write.table(raw_dat[, 1], file="gene_name.txt", quote=F, sep=",")

# 5. raw_dat의 3,9,10 열의 성분을 선택하여 새로운 변수에 저장하고 sub_data.txt로 저장하시오.
#    (구분은 tab을 이용할 것)
new_var = raw_dat[, c(3, 9, 10)]
write.table(new_var, file="sub_data.txt", col.names=T, quote=F, sep="\t")

# 6. raw_dat의 31~100의 행과 21~40 사이의 짝수 열을 선택하여 새로운 변수에 저장하고
#    sub_data2.csv로 저장하시오. (구분을 comma 사용)
new_var2 = raw_dat[31:100, seq(from=22, to=40, by=2)]
write.table(new_var2, file="sub_data2.csv", row.names=F, col.names=T, sep=",")

# 7. raw_dat에서 결측값의 갯수를 구하시오.
sum(is.na(raw_dat))

# 8. raw_dat에서 결측값의 위치를 1차원 인덱스로 찾으시오.
which(is.na(raw_dat))

# 9. raw_dat에서 결측값의 위치를 2차원 인덱스로 찾으시오.
which(is.na(raw_dat), T)

# 10. 9번에서 찾은 raw_dat에서 결측값의 위치를 index변수에 저장하고 이를 활용하여 결측값이 발생한 열의
#     결측값 제외 평균을 계산하여 각 결측값을 대체하시오. (결측값제외평균계산:mean(x,na.rm=T)이용)
index = which(is.na(raw_dat), T)
for (i in 1:nrow(index))
  raw_dat[index[i, 1], index[i, 2]] = mean(raw_dat[, index[i, 2]], na.rm=T)
