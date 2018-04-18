# 1. 하나의 벡터를 입력받아 벡터의 길이, 원소의 합, 원소의 곱, 최솟값, 최댓값, 평균, 분산을
#    반환하는 함수를 작성하고 x = 1:10에 대한 결과를 확인하시오.
get_vec_info = function(v) {
  return(c(length(v), sum(v), prod(v), min(v), max(v), mean(v), var(v)))
}
get_vec_info(c(1,5,3,2,3,5))


# 2. 1에서 작성한 함수를 활용하여 하나의 벡터와 하나의 인수를 입력 받아 추가로 입력한 인수의
#    값이 1인 경우 벡터의 길이, 2인 경우 원소의 합과 같이 특정값을 선택할 수 있도록 함수를 작성하시오.
#    x=1:10의 값을 이용하여 각각의 경우에 대해서 결과를 확인하시오.
get_vec_selected_info = function(v, num) {
  ret = switch(num, length(v), sum(v), prod(v), min(v), max(v), mean(v), var(v))
  return(ret)
}
get_vec_selected_info(c(1,5,3,5,8,3,6,5,6,7), 7)


# 3. 2에서 작성한 함수에서 새로운 인수를 생략 시 원소의 곱을 출력하도록 default 설정을 적용하시오.
get_vec_selected_info = function(v, num=3) {
  ret = switch(num, length(v), sum(v), prod(v), min(v), max(v), mean(v), var(v))
  return(ret)
}
get_vec_selected_info(c(1,5,3,5,8,3,6,5,6,7))


# 4. 이차방정식 ax^2 + bx + c = 0 에서 판별식 D = b^2 - 4ac와 근의 공식을 x = (-b +- sqrt(D)) / 2a 이용,
#    이차방정식의 해를 반환하는 함수를 작성하시오.
#    a=0인 경우에는 1차 방정식의 해로 계산하여 출력
#    a,b,c의 값은 사용자가 입력.
#    실수해가 존재하지 않을 경우는 복소수 해를 반환
solve_quad_eq = function(a, b, c) {
  if (a == 0)
    return(-c / b)
  
  D = b^2 - 4 * a * c
  if (D > 0) {
    return(c((-b + sqrt(D)) / 2 * a, (-b - sqrt(D)) / 2 * a))
  } else if (D == 0) {
    return(-b / (2 * a))
  } else {
    D = D + 0i
    return(c((-b + sqrt(D)) / 2 * a, (-b - sqrt(D)) / 2 * a))
  }
}
solve_quad_eq(0, 2, 3)
solve_quad_eq(1, 5, 4)
solve_quad_eq(1, 4, 4)
solve_quad_eq(1, 2, 4)
