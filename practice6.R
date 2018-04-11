# 1. while 문과 조건문을 이용하여 아래와 같이 출력하는 코드를 작성하시오.
# *      *
# ***   ***
# **********
# ***   ***
# *      *
line_num = 6
total_txt = ''
while ((line_num = line_num - 1)) {
  magic_num = abs(3 - line_num)
  space_num = c(magic_num * 2, magic_num)
  aster_num = c(5 - space_num[1], 5 - 2 * space_num[2])
  line_txt = ''
  while (aster_num[1]) {
    line_txt = paste0(line_txt, '*')
    aster_num[1] = aster_num[1] - 1
  }
  while (space_num[1]) {
    line_txt = paste0(line_txt, ' ')
    space_num[1] = space_num[1] - 1
  }
  while (space_num[2]) {
    line_txt = paste0(line_txt, ' ')
    space_num[2] = space_num[2] - 1
  }
  while (aster_num[2]) {
    line_txt = paste0(line_txt, '*')
    aster_num[2] = aster_num[2] - 1
  }
  total_txt = paste0(total_txt, "\n", line_txt)
}
writeLines(total_txt)


# 2-1. 100에서부터 1까지 차례로 더해나갈 때, 처음으로 합이 3000을 넘게 만드는 수는
#      무엇인지 for문과 break 문을 이용하여 구하여라. 또한 처음으로 3000을 넘었을 때,
#      누적합은 얼마인지 구하여라.
NR_START = 1
NR_END = 100
NR_LIMIT = 3000

sum = 0
for (i in NR_END:NR_START) {
  sum = sum + i
  if (sum > NR_LIMIT) {
    cat("처음으로 합이", NR_LIMIT, "을 넘게 만드는 수는", i,
        "\n처음으로", NR_LIMIT, "을 넘었을 때의 누적합은", sum)
    break
  }
}

# 2-2. 수가 클 경우, 등차수열의 합과 바이너리 서치 활용하여 최적화 (for문은 쓰지 않음)
tic = Sys.time()
NR_START = 1
NR_END = 100000000
NR_LIMIT = 3000000000000000

left = NR_START
right = NR_END
found_nr = NA
found_sum = NA
while (T) {
  if (left > right)
    break
  mid = as.integer((left + right) / 2)
  sum = (mid + NR_END) * (NR_END - mid + 1) / 2
  if (sum <= NR_LIMIT) {
    right = mid - 1
  } else {
    left = mid + 1
    found_nr = mid
    found_sum = sum
  }
}
cat("처음으로 합이", NR_LIMIT, "을 넘게 만드는 수는", found_nr,
    "\n처음으로", NR_LIMIT, "을 넘었을 때의 누적합은", found_sum)
toc = Sys.time()
as.numeric(toc - tic, units="secs")


# 3. 1에서 50까지의 수 중에서 1과 자기 자신만을 약수로 갖는 수(소수)는
#    어떠한 것이 있으며, 총 몇 개인지 반복문 및 조건문을 사용하여 계산하여라.
primes = c()
for (i in 2:50) {
  root = sqrt(i)
  j = 2
  flag = T
  for (j in primes) {
    if (j > root)
      break
    if (i %% j == 0) {
      flag = F
      break
    }
  }
  if (flag)
    primes[length(primes) + 1] = i
}
primes
length(primes)


# 4. 3의 코드를 활용하여 30에서 50 사이의 소수의 합을 계산하는 코드를 작성하시오.
#    (단, next를 활용하여 작성하시오.)
# sum(primes[primes >= 30 & primes <= 50])
sum = 0
for (i in primes) {
  if (i < 30 | i > 50)
    next
  sum = sum + i
}
sum


# 5. x = runif(1e7, 0, 100)을 실행하고 x의 값이 5보다 크고 20보다 작은 수만 선택하여
#    합을 계산하고자 할 때, 아래와 같이 코드를 작성하시오.
x = runif(1e7, 0, 100)

# 1-1) 반복문과 조건문을 이용하여 계산하고 실행 시간을 체크하시오. (for 문, & 연산)
tic = Sys.time()
sum = 0
for (i in x) {
  if (i > 5 & i < 20)
    sum = sum + i
}
sum
toc = Sys.time()
as.numeric(toc - tic, units="secs")

# 1-2) 반복문과 조건문을 이용하여 계산하고 실행 시간을 체크하시오. (while 문, | 연산)
tic = Sys.time()
sum = 0
i = 0
l = length(x)
while ((i = i + 1) < l) {
  if (x[i] <= 5 | x[i] >= 20)
    next
  sum = sum + x[i]
}
sum
toc = Sys.time()
as.numeric(toc - tic, units="secs")

# 2) 인덱스를 이용하여 계산하고 실행 시간을 체크하시오.
tic = Sys.time()
sum = sum(x[x > 5 & x < 20])
sum
toc = Sys.time()
as.numeric(toc - tic, units="secs")
