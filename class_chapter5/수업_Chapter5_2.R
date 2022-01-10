x <- iris[, 1:4]
x
head(x) #데이터 프레임
colMeans(x)
dim(x)

meanx <- NULL
# sumx <- 0  (여기에다가 적으면 합이 누적됨.)
for (i in 1:dim(x)[2]){
  
  sumx <- 0
  for (j in 1:dim(x)[1]){
    sumx <- sumx + x[j,i]
  }
  
  meanx[i] <- sumx / dim(x)[1]  
  #j번째랑 상관없이 i번째일때 걸리도록 함.
}

meanx # 평균값만 나옴
colMeans(x)  #변수 이름과 함께 평균이 나옴.

# 추가) 꾸미기
# 평균값에다 이름 넣기
names(x)
names(meanx) <- names(x)  #meanx 이름에다가 names(x) 넣기
meanx

# for문 : 반복횟수를 알고 있을 떄
# while 문 : 언제 반복을 끝내야하는지를 알고 있을 때
# (반복횟수(반복수준)는 모름) / ()의 조건을 만족하는 동안에

i <- 1
while (i < 3){
  print(i)
  i <- i + 1
}

sumx <- 0
i <- 1
while(i <= 10){
  sumx <- sumx + i
  i <- i + 1
}
sumx


# repeat: 일단은 돌려라 
sumx <- 0
i <- 1
repeat {
  
  sumx <- sumx + i  # 10까지 돌린 것임.
  i <- i+1
  
  if (i > 10) break
}
sumx



# 사용자 정의 함수
sumx <- function(x){
  
  sumx <- 0
  i <- 1
  while(i <= 10){ #10까지 더하기 (i <= 100)이면 100까지 더하기
    sumx <- sumx + i
    i <- i + 1
  }
  sumx
}
# (x) 상관없이 값만 출력하겠다는 뜻 
sumx(10)
sumx(100)


# x 인수 사용
sumx <- function(x){
  
  sumx <- 0
  i <- 1
  while(i <= x){ 
    sumx <- sumx + i
    i <- i + 1
  }
  sumx
}
sumx(1)
sumx(10)
sumx(100)
sumx(1000)
sumx(10000)
sumx(100000)
sumx(1000000)
sumx(10000000)
sumx(100000000)
sumx(1000000000)

sumx <- function(x=10){
  
  sumx <- 0
  i <- 1
  while(i <= x){ 
    sumx <- sumx + i
    i <- i + 1
  }
  sumx  #함수 끝나면 출력해야할 것이 없기 때문에 
        #명령어를 적어야 함. (print 안써도 출력하라는 명령어임.)
}
sumx()

# 최종 출력이 안됨.
sumx <- function(x=10){
  
  sumx <- 0
  i <- 1
  while(i <= x){ 
    sumx <- sumx + i
    i <- i + 1
  }
  # sumx
}
sumx()


x <- 1:10
sumx <- function(x){
  datax <- x  #함수의 argument x임. (벡터 y로 할당해줘도 x에 y가 들어가므로 괜찮.)
              # -> x자리는 x자리로 받아쳐서 가능. 
  sumx <- 0
  
  for (i in 1:length(datax)){  #1차원에서 데이터 개수 구하기 : length (2차원에서는 dim)
    sumx <- sumx + datax[i] #datax 원소가 끝날 때까지 더해줌.
  }
  sumx
}

sumx  #r이면 console창에 함수의 부분이 출력됨.
class(sumx)
sum #r에서 만든 함수가 아니라는 것. (함수의 부분이 안나옴.)
sumx(x)
sumx(1:100)  # x가 벡터 형태


x <- sample(1:1000, 100)
x
sumx(x)  #x를 sample로 100개 뽑고, 이에 관련한 합을 구하는 함수를 수행한다.


y <- sample(1:1000, 100)  #y를 할당하고,
y
sumx(y) #sumx의 x자리에 y를 넣음. (x로 인식하게 됨. -> x의 자리임)



