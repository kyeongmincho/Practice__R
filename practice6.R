# 3. 1에서 50까지의 수 중에서 1과 자기 자신만을 약수로 갖는 수(소수)는
#    어떠한 것이 있으며, 총 몇 개인지 반복문 및 조건문을 사용하여 계산하여라.
primes = c()
for (i in 2:50) {
  root = sqrt(i)
  for (j in primes) {
    if (j > root) {
      primes[length(primes) + 1] = i
      break
    }
    if (i %% j == 0)
      break
  }
  if (length(primes) == 0)
    primes[length(primes) + 1] = i
}
primes
length(primes)
