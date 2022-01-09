x <- sample(10)
x
sumx <- NULL
for (i in 2:length(x)){
  sumx[i] <- sumx[i-1] + x[i]
}
sumx


x <- sample(10)
x
sumx <- x[1]
sumx
for (i in 2:length(x)){
  sumx[i] <- sumx[i-1] + x[i]
}
sumx
cumsum(x) # 0위에 sumx 계산한 것이랑 같음


x <- sample(10)
sumx <- x[1]
for (i in 2:length(x)){
  temp <- sumx[i-1] + x[i]
  sumx[i] <- temp # 밑으로 내려서 다시 할당해준 것임.
}                 # 메모리 할당 
x                  # (원래 값 없어지고 다시 새로 할당)
sumx
cumsum(x)


# 평균과 누적합 구하기
sumx <- meanx <- x[1]

for (i in 2:length(x)){
  temp <- sumx[i-1] + x[i]
  sumx[i] <- temp
  meanx[i] <- temp / i
}
sumx
meanx


# 이렇게 사용해도 되는지 ?? 확인할 것
x <- sample(10)
temp <- meanx <- x[1]
for (i in 2:length(x)){
  temp <- temp + x[i]
  meanx[i] <- temp / i
}
x
temp
meanx

# 반복 -> 중첩 많이 해야할 때 c,c++ 함께 사용하면 시너지 높아짐.
# for문 3개가 넘는 것은 비효율적
# 반복문 중첩시킨 경우 
for (i in 1:10) {
  for (j in 1:5){
    
  }
}

x <- iris[,1:4]
x
summary(x) #요약 통계량 출력
colMeans(x)  #각 변수들의 평균 값 뽑아내기


# 반복 중첩을 이용하여 변수들의 평균 구해보기 
for (i in 1:4){
  for (j in 1:150){
  }
}
