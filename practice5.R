############## x = runif(10)을 실행한 후에 아래의 문제를 적용하시오. ##############
x = runif(10)
# 1. 조건문을 사용하여 x의 원소의 합이 5보다 클 경우 "sum(x) is greater than 5"를,
#    5보다 작을 경우에는 "sum(x) is less than 5.",
#    같을 경우에는 "sum(x) is equal to 5"를 출력하는 코드를 작성하시오.
x_sum = sum(x)
if (x_sum > 5) {
  print("sum(x) is greater than 5")
} else if (x_sum == 5) {
  print("sum(x) is equal to 5")
}

# 2. 조건문을 사용하여 x의 원소 중 0.5보다 작은 값은 동일한 원소를 갖으며,
#    하고 0.5보다 크거나 같은 값은 0.3만큼 작은 값을 갖는 벡터 y를 정의하시오.
y = ifelse(x < 0.5, x, x - 0.3)

# 3. 변수 i를 이용하여 i=1일 때, x+y, i=2일 때, x-y, i=3일 때, x*y를 출력하는
#    구문을 switch 함수를 이용하여 작성하시오.
i = 3
result = switch(i, x + y, x - y, x * y)
print(result)


############## score = 65 입력하고 아래의 물음에 답하시오. ##############
score = 65
# 4. 조건문을 사용하여 score가 90 이상이면 A, 75 이상이면 B, 50 이상이면 C,
#    그 외 다른 값은 D의 값을 출력하는 코드를 작성하시오.
if (score >= 90) {
  print('A')
} else if (score >= 75) {
  print('B')
} else if (score >= 50) {
  print('C')
} else {
  print('D')
}

# 5. type 변수에 "sqrt", "square","log" 중 하나의 값을 할당한다고 할 때,
#    해당 변수값에 따라서 "sqrt"일 때는 score의 제곱근, "square"는 score의 제곱,
#    "log"는 score의 상용로그값을 출력하는 코드를 작성하시오.
type = "log"
result2 = switch(type, sqrt=sqrt(score), square=score^2, log=log10(score))
print(result2)
