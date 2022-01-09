# Chapter5
# 조건문 / 반복문 / 사용자 정의 함수

# if.else, if 계속 -> 차이가 없음 (결과적으로)
# 시간적으로 달라질 수 있음.
# 1. 정확성 -> 2. 효율성
# 조건문을 어떻게 채울 수 있을 것인가 (빼먹지 않고)

# if (조건1) {
# 실행문
#} else {
# 실행문2
#}

# if (조건1) {
# 실행문
#} 
# if (조건2) {
# 실행문2
#}

# if (초){
#실행문
#}
#if (중){
#실행문
#}
#if (고){
#실행문
#}
#if (대){
#실행문
#}

x <- 1:5
y <- 6:10
x
y
x>3
x>1
x<1 & y>9
x<1
y<9
y>9
x<1
x<1 & y>9

x
x<3
exp(x)

if (x<3){  
# if문의 조건은 true or false가 하나만 나오게끔 해야한다. 지금은 총 5개 boolean임.
  exp(x)
}

# x[1]이 3보다 작기 때문에 true이므로 exp(x)값이 나옴.
if (x[1] < 3){
  exp(x)
}

# 작동하지 않음.
x[3]
x[3] < 3
if (x[3] < 3){
  exp(x)
}

# 작동함.
if (x[3] >= 3){
  exp(x)
}

# 작동함.
# 실행 부분에 같은 명령어를 작성함. 바람직하지 않음.
if (x[3]<3){
  exp(x)
} else{
  exp(x)
}

# 작동함.
if (x[3]<3){
  exp(x)
} else{
  log(x)
}

x[3]<3 | y>6

if (x[3]<3 | y>6){
  exp(x)
} else{
  log(x)
}

y
# 작동함.
if (x[3]<3 | y[3]>6){ # FALSE|TRUE -> TRUE
  exp(x) # 실행문
} else{
  log(x)
}


## all과 any 차이
all(x[3]<3, y[3]>6)  # all -> and와 똑같음 (모두가 true이면 true)
any(x[3]<3, y[3]>6) # any -> or과 똑같음

all(x<3, y>6) # 하나라도 false이면 false
any(x<3, y>6) # 하나라도 true이면 true

all(x[]<3, y[]>6)
x[]<3
y[]>6

# 단 하나의 true/false로 구성 되어야한다.
# and / or  ->  하나씩 true,false 비교할 때 사용
# 여러 조건들을 계속 나열했을 때 여러개의 true,false를 구성하여 만들 때는 all 사용
# 상황에 맞춰 선택하기 (if 조건안에 단 하나의 true냐 false냐? 만드는 것이 핵심)


# ifelse
# ifelse(conditions, statement1, statement2)
# ==> conditions이 true이면 statement1
#     conditions이 false이면 statement2

# if는 하나씩 요소가 들어가야하지만 
# ifelse는 여러개 true,false 들어가도 됨.
# -> 하나씩 하나씩 검토하면서 연산 
x
ifelse(x<3, exp(x), log(x)) # 작동원리 다름 (차이점 인지 중요)
exp(x)
log(x)
x<3

# --------------------------------------------------

x <- 1:10
if (x[4]==4){
  print(exp(x[4]))
}

if (x[4]==3){
  print(exp(x[4]))
} else{
  x[4] <- 3
}
x

score <- 88
if(score >= 90){
  print("A")
} else if (score >= 80){
  print("B")
} else if (score >= 70){
  print("C")
} else if (score >= 60){
  print("D")
} else{
  print("F")
}

x <- 25
y <- 75
if (x > 0 & y < 100){
  print("TRUE 입니다")
} else{
  print("FALSE 입니다")
}

x <- 3
ifelse(x %% 2 == 0, "짝수", "홀수")

x <- c(1, 2, NA, 4, 5, NA, 7)
ifelse(x %% 2 == 0, "짝수", "홀수")

#---------------------------------------

x <- 1:10
if (x[4]==4){
  print(exp(x[4]))
}

if (x[4]==3){
  print(exp(x[4]))
}else{
  x[4] <- 3  # 출력하라는 것은 아니기 때문에
  x
}
# 위에꺼 하고 나서 다시 실행하면 x[4] 값이 3으로 바뀌었기 때문에 다음에는 print(exp(x[4])) 값이 출력된다.

if (x[4]==3){
  print(exp(x[4]))
}else{
  x[4] <- 3  # 출력하라는 것은 아니기 때문에
  x
}

# ()하면 x[4]인 값이 출력됨.
(x[4] <- 3)
(x[4] <- 6)
x

score <- 88
if (score >= 90){
  print("A")
} else if (score >= 80){
  print("B")
} else if (score >= 70){
  print("C")
} else if (scoer >= 60){
  print("D")
} else{
  print("F")
}

# R은 벡터 연산 체계
x <- 1:5
y <- 6:10
x
y

# boolean 형태로 출력
x > 3
y > 9
x > 3 & y > 9
x > 3 | y > 9

x <- 25
y <- 75
if (x > 0 & y < 100){
  print("TRUE 입니다")
} else{
  print("FALSE 입니다")
}

# all, any 함수

x <- 1:5
y <- 6:10
x
y

all(x>3, y>9) # 모든 값들을 통틀어서 값을 주게 됨. (모두 TRUE이어야 TRUE / 하나라도 FALSE이면FALSE)
any(x>3, y>9) # 하나라도 true이면 true
              # 모두 false이면 false

i
# ifelse()
x <- 3
ifelse(x%%2 == 0, "짝수", "홀수")
# %% -> 나머지를 구해주게 됨.

# NA는 원래 그대로 값이 나옴 
x <- c(1, 2, NA, 4, 5, NA, 7)
ifelse(x %% 2 == 0, "짝수", "홀수")


# switch()
x <- 1:10
range(x)

type <- "mean"
# type을 찾고 이에 맞는 함수를 실행시켜줌.
switch(type, mean=mean(x), sd=sd(x), median=median(x), range(x))
switch("mean", mean=mean(x), sd=sd(x), median=median(x),range(x))
switch("sd", mean=mean(x), sd=sd(x), median=median(x),range(x))
switch("median", mean=mean(x), sd=sd(x), median=median(x),range(x))

switch(1, mean=mean(x), sd=sd(x), median=median(x), range(x))
switch(2, mean=mean(x), sd=sd(x), median=median(x), range(x))
switch(3, mean=mean(x), sd=sd(x), median=median(x), range(x))
switch(4, mean=mean(x), sd=sd(x), median=median(x), range(x))


# 연습문제
iris
edit(iris)

# 조건 맞는 행 모두 출력할 때
iris[iris$Species=="virginica", ]
names(iris)  # 변수 이름 뺄 때
names(iris)[5]

# 제대로 작동이 안되는 코드들
aa <- names(iris)[5]
aa

iris[names(iris)[5] == "virginica",]
iris[iris$names(iris)[5] == "virginica",]
iris[iris$aa == "virginica",]

paste("iris", aa, sep="$")
iris[paste("iris", aa, sep="$") == "virginica",]

iris[iris$Species=="virginica",]

iris
attach(iris) # --> 변수들을 모두 객체로 만들어줌
ls()  # 목록을 나타내는 리스트 
Species  # 변수 변수 하나하나를 독립적인 object로 만들어 줌 /  
iris[Species=="virginica",]
detach(iris)  # object로 만들어준 변수들이 모두 없어짐. # --> 객체 아닌 상태로 만들어줌
Species  # 결과 : 객체 'Species'를 찾을 수 없습니다

# subset 만들기 
subset(iris, Species=="virginica")

ifelse(iris$Species=="virginica",T,F)

# attach와 detach를 instance형식으로 사용해주는 것이 with임.
with(iris, ifelse(Species=="virginica", 1, 0))

# 행 번호 
nrow(iris) # 내가 가지고 있는 데이터 set에 자동적으로 넣어주기위해 사용한다.
# nrow를 대신해 dim 사용 가능 
dim(iris)

num <- 1:nrow(iris)
num

num <- 1:dim(iris)[1]
num

with(iris,ifelse(Species=="virginica", num, num))

# 101부터 150까지 값이 나오게끔 하려면 ?
with(iris, ifelse(Species=="virginica", num, 0))


# 반복을 몇 번 하는지 쉽게 알 수 있음 : for문
# frame 외울 것.

# for (i in 벡터) {

# 실행문  

# }

# 원소의 개수 : 10개 --> 반복 횟수를 결정하게 됨.
# 10번 반복하게 된다는 것
# i : 아무것도 없는 허수 / in 뒤에오는 값들을 하나씩 받아 치기도 함.
for (i in 1:10){
  
  print(iris[i,])
  
}

for (i in 1:10){
  
print(i)
  
}

x <- 1:10
for (i in x){
  
print(i)
  
}

# 합계 구하기
sum <- 0
for (i in 1:10){
  sum <- sum + i
}
sum


# 중요
# 누적합 1
sum <- 0

for (i in 1:10){
  sum <- sum + i
  print(sum)
}

# 누적합 2
sum <- 0
cumsx <- NULL

for (i in 1:10){
  sum <- sum + i
  cumsx <- sum
  print(cumsx)
}

print(cumsx)

# -------------
sum <- 0
cumsx <- NULL

for (i in 1:10){
  sum <- sum + i
  cumsx[i] <- sum  # i번째 자리에 넣기 (인덱스 작업)
}
cumsx

# ---------------
sum <- 0
cumsx <- NULL

for (i in 1:10){
  sum <- sum + i
  cumsx <- c(cumsx, sum) # 벡터로 만들게됨.
                         # 누적값 만드는 방법으로 사용할 수 있음.
}
cumsx


# ---------------
# 누적합이 나오게끔 스스로 고쳐볼 것.
# 숙제 

x <- sample(10)
x
cumsx <- 0
cumsx
for (i in 2:length(x)){  # 1부터 x 까지 (자동으로 벡터 크기를 잡아줌.)
  cumsx[i] <- cumsx[i-1] + x[i-1]
}
cumsx
