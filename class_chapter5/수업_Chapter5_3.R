# summary(iris) 결과값이랑 같은 출력창이 나오기 위한 
# 함수와 for문 만들어보기

head(iris)
summary(iris)
x <- iris[,1]
x
min(x)
quantile(x, 0.25)
median(x)
mean(x)
quantile(x, 0.75)
max(x)

# 조건식 만들기
x <- iris[,1]
m1 <- min(x)
m2 <- quantile(x, 0.25)
m3 <- median(x)
m4 <- mean(x)
m5 <- quantile(x, 0.75)
m6 <- max(x)
re <- c(m1, m2, m3, m4, m5, m6)
re


# 반복 구문
result <- NULL
for(i in 1:4){
  x <- iris[,i]
  m1 <- min(x)
  m2 <- quantile(x, 0.25)
  m3 <- median(x)
  m4 <- mean(x)
  m5 <- quantile(x, 0.75)
  m6 <- max(x)
  re <- c(m1, m2, m3, m4, m5, m6)
  names(re) <- c("min", "1st Qu.", "median", "mean", "3rd Qu.", "max")
  result <- cbind(result, re)
}
colnames(result) <- names(iris)[1:4] #칼럼 이름 설정하기
result
summary(iris)

# 컬럼 이름 만들기 (cbind 하면서)
x <- 1:3
y <- 2:4
cbind(xx=x, yy=y)



# 함수 만들기
aaa <- function(data){
  result <- NULL
  for(i in 1:4){  # dim 사용해서 변수의 개수에 맞게 사용하기
    
#if (){} (숫자형 벡터라면)
    x <- data[,i]
    m1 <- min(x)
    m2 <- quantile(x, 0.25)
    m3 <- median(x)
    m4 <- mean(x)
    m5 <- quantile(x, 0.75)
    m6 <- max(x)
    re <- c(m1, m2, m3, m4, m5, m6)
    names(re) <- c("min", "1st Qu.", "median", "mean", "3rd Qu.", "max")
  
#}
#if(){} 
    
    result <- cbind(result, re)
  }
  colnames(result) <- names(iris)[1:4]
  result
}
aaa(iris)
summary(iris)


# 위에 5번째 변수 추가해서 summary(iris)와 완전히 같은 함수 만들어보기 (if문)
iris[,1]
class(iris[,1])
is.numeric(iris[,1])  #1~4 변수까지는 이것 사용


class(iris[,5])
is.factor(iris[,5])  #5번째 변수까지 사용 (factor이므로)

is.character(iris[,5])
is.factor(iris[,5])










