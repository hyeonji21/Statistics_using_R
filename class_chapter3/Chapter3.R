# Vector -> Matrix 
# Datafrmae -> 숫자와 문자 (possible)  
# / 나머지 -> (impossible : 한 가지 데이터 유형만으로 구성)
# 세로 한줄 / 가로 한줄 : matrix 

# Array : matrix와 똑같은 성질 
#       : Matrix차원을 확장시켰다고 할 수 있음 
#         층으로 나누면 3차, 4차로 나눠짐

# Factor : Categorical data를 다룰 때 / 명목형, 순서형 존재
# 명목형 : 값을 구분 가능한 형태 ex) 성별, 종교
# 순서형 : 순서가 있는 자료 ex) 옷사이즈, 성적 
 
# Time Series : 시간 별로 만들어져있는 형태
# List : 7가지 형태 가능


## 3.1 Vector : c() 중요 (나열된 데이터 또는 개체를 단일 개체로 결합하는 함수)
## vector은 둘 이상의 요소를 가진 1차원 구조를 가지고 있다.
## 객체의 기본 형식 / 숫자,문자,복합 및 논리 값 중 한 가지 데이터 유형으로만 구성

# 3.1.1 Input of data
# 3.11 c() : function for making vector

x <- c(1, 2, 3)  # 객체 x에 숫자 1, 2, 3을 할당 
x

x <- c(1, "b", "a")   
# character > numeric : character가 이김
x

# 객체 y에 문자 a, b, a를 할당당
y <- c("a", "b", "a")
y

z <- c(T, F, TRUE); z

xx <- c(T, 1+2i, F); xx  #복소수

c(x=1, y=2)  
# 벡터 객체의 각 원소에 이름을 부여하는 것이 가능 



## 3.1.1.2 등차수열 - 공차:1 
## (Arithmetic sequence with common difference 1)

1:10  # 콜론 사용
10:1
-3:5
-1:-5
-2:-6
x <- -2:6
x
x <-2:6
x



## 3.1.1.3 seq() : General arithmetic sequence / 공통의 차이에 관계없이 산술 순서의 경우 seq()를 사용할 수 있다.
## by default값 -> 1

seq(from=1, to=5, by=0.5)  # 3가지의 argument
seq(1, 10, by=0.5)
seq(1, 10, by=0.1)
seq(1, 10, 0.05)

seq(from=1, to=10, by=1)
seq(1, 10, 1)
seq(1, 10)

seq(1, 1, 10)
seq(1, by=1, to=10)  # argument를 그냥 적어준다.

seq(1, 10, length=7)  # 1.5씩 증가됨
seq(1, 10, length=5347)  # 5347개 숫자를 동일한 간격으로 만들어줌
seq(from=1, to=5, length=10) # 10개의 숫자 출력

# 대괄호 중요
# [.. . ] : 결과값을 나타내는 위치 
# [5287] : 옆에 있는 값 -> 5287번째 위치값에 숫자가 있다.



## 3.1.1.4 rep() : Repetition

rep(1, 5)
rep("1", 5)
rep(1:5, 5, each=3)
rep(1:5, times=5, each=3)
rep(3, 10) # 3 -> 10개 만든다.
rep(2, 5)  # 2 -> 5개 만든다.

c(rep(3,10), rep(2, 5))  
c(rep(2, 5), rep(3, 10))
# 벡터와 벡터를 c()로 만들면 벡터로 바꿔준다. (잘 기억할 것)

rep(c(2,3))
rep(2:3)
rep(2:3, times=3) # times : 다같이 반복
rep(2:5, times=3)
rep(2:3, 3)

rep(2:3, each=3) # each : 각각 반복
rep(2:5, each=3)

rep(2:5, times=3, each=2) # each가 적용되고 나서 times가 적용됨. (전체가 3번)


# 3.1.1.5 paste()  # (변수이름 control할 때 많이 씀)
paste()
paste("x", 1:10, sep="-")
paste("x", 1:10, sep="_")
paste("x", 1:10, sep="/")
paste("x", 1:10, sep="")
paste(c("x", "y"), 1:10, sep="")
paste(c("x", "y", "z"), 1:10, 15:25, sep="")
paste(1:10)

paste("x", 1:10, sep="")
paste(paste("x", 1:10, sep=""), collapse="")
paste(paste("x", 1:10, sep=""), collapse="-")


# 3.1.1.6 sequence()
# 인수를 끝 값으로 받아서 출력

sequence()
sequence(1:5)
1:5
sequence(c(1,7,23))


# 3.1.1.7 scan()  #데이터 입력할 때
x <- scan()
x
x <- scan(what="")  #문자 간단하게 입력하고 싶을 때
x



# 3.1.2
x
names(x)  # x의 이름 빼내기
names(x) <- c("a", "b", "c")
x
names(x)
names(x) <- c("x", "y", "z")
names(x)


mode(x) # x의 데이터 형태
x
names(x)



# 3.1.2.3 Length of vector
length(x)  # 벡터의 크기. 원소의 개수
length(1:100)


# 3.1.3
# 3.1.3.1. 
x <- 1:100
x
names(x)
mode(x)
length(x)

x[15] # 15번째
x[30] # 30번째

x[c(1, 6, 54, 89)]
y <- x[c(1, 6, 54, 89)]
y

x[1] <- 1000
x

x[c(1, 3, 5)] <- 500   #모두 500으로 바뀜
x

x[c(1, 3, 5)] <- c(50, 500, 5000)  # 50, 500, 5000 각각 바뀜
x

x <- 1:3
x
names(x)
names(x)[1] <- "a"
x

names(x) <- c("a", "b", "c")
x

names(x)[2] <- "x"
x

names(x)[c(2, 3)] <- c("x", "y")
x
names(x)[2:3] <- c("x","y")
x

names(x)

x["a"]  # x에 a라는 이름을 가진 값을 뽑아줘

x["a"] <- 1000
x

# 마이너스 용법
x <- 1:10
x

x[-5]  # 5번째 위치의 값을 뺌 / 수행만 한 것이지 저장은 x

# 따라서 할당을 다시 해준다.
x <- x[-5]
x
length(x)

x <- 1:10
x
y <- x[-5]
y
x

y <- x[-c(1, 2, 4, 5, 9)]
x
y

x[-c(1, 2, 4, 5, 9)]
x[-c(1, 2, 4, 5, 9)][3]
y <- x[-c(1, 2, 4, 5, 9)][3]
y

# 복습
x <- 1:10
x
mode(x)
length(x)
names(x)

# 원소를 빼면 넣을수도 있다. (잘 기억)
x[1:5]
x[c(1, 2, 3, 4, 5)]
x[seq(1, 5, 1)]

x[1:5] <- 1
x
x[1:5] <- c(1, 5, 3, 7, 9)
x


# 3.1.3.4 Elements extraction with specific condition

# sample : 표본
sample(100)
x <- sample(100, replace=T)  # 중복 표본 뽑기 가능
x
table(x)  # 도수분포표 -> frequency로


x <- c(1, 3, 5, 7, 9)

sample(1:100, 10)  # 1부터 100까지 중에서 10개 뽑음

# ex)로또 / 두가지 방법
sample(1:45, 6)
choose(45, 6)

# 비교
x==5    # x에 5가 있으면 True, 없으면 False

# 인덱스 작업
x[x==5]  #위치에 해당하는 숫자반환 (만약 5가 있었으면 5 출력)
x[c(26, 29, 43)]

x[x>5]
y <- x[x>5]
length(y)  # == sum(x>5)   

x>5
sum(x>5)

## x가 5보다 큰 값들이 몇개인지 확인하는 length(y)와 
## True인 값과 False를 더하는 것이 같다. 




x[x>=5]
x[x<=5]
x[x<5]
x[x!=5]
x[x >= 3 & x <= 7]
x[x >= 3 | x <= 7]  # x 전체를 출력하라는 것과 같은 의미.(효율적이지 x)


x
y <- sample(100)
y

y>7
x[y>7]  # y>7일때 True값인 자리에 있는 x를 뽑자

z <- sample(10)
z
z>5  # true,false로 되어있는 벡터
sum(z>5)
x[z>5]

z>5
x[c(z>5,z>5,z>5,z>5,z>5,z>5,z>5,z>5,z>5,z>5)]
x[z>5]



# 3.1.3.5 subset() : 부분집합
subset() 
subset(x, x >= 7)
subset(x, x>7)
x[x>7]


subset(x, y>7)
x[y>7]


# 3.1.3.6.
xindex <- which(x >= 5)
x[xindex]

x > 7
which(x > 7) # FALSE빼고 indexing 작업
sum(x > 7)

x[x > 7]
x[which(x > 7)]

x==10  # 찾고, 계산하기가 쉽지 않음
which(x==10)  # 찾기 쉬움

z <- which(x==10)
z  # 특성 : 벡터
x[z]
x

# 3.1.4
# R의 특성
# 크기가 맞지 않을 때 에러뜸.

x <- 1:3
x

x[1:3] <- 1:2
x

x <- 1:4
x[1:4] <- 1:2
x

y <- 5:8
y
z <- 1:3
z

x + y

x <- sample(100)
y <- sample(100)

x[5] + y[y<50]
y <- x[5] + y[y<50]
y

sqrt(x) #제곱근
sum(x)

# 벡터 만드는 함수 : c()
# 벡터와 벡터를 더하거나 seq,rep를 같이 쓰더라도 모두 형태는 결국 벡터이다.
x
y
c(x,y)
c(seq(1, 10, 0.05), rep(1, 10))

# +) 인덱싱 : [] 대괄호 필요