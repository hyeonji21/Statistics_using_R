# Chapter2. Basic R Programming
# 2.1 산술 연산자 (Arithmetic operator)

1+2
1-2
1*2
1^2
1**2
1**3
1**4
1^(1/2)

1+2*3
(1+2)*3  # 연산할 때
{1+2}*3  # 블럭처리
[1+2]*3  # 위치표현

3+
4

1+2; 3+4

# 2.2 논리.비교 연산 (Logical and comparison operator)

1 == 1
1 != 1

T # TRUE
F # FALSE

1 > 1
1 >= 1
1 < 2
2 <= 1

T+T
T+F
T-T
F-T

# 모두가 TRUE이어야 &에서 TRUE 출력
T & T
T & F
T - T
F - T

# 하나라도 TRUE이면 |에서 TRUE 출력
T | T
T | F
F | T
F | F


TRUE + 1
FALSE - 1
T + FALSE
T - F

!TRUE
TRUE | FALSE # x OR y
TRUE & FALSE # x AND y
isTRUE(TRUE) # if x is TRUE


# 2.3 기초 산술 함수 (Basic arithmetic function)
# 2.3.1 Statistical function

## 함수() 안에 들어가는 값 : "인수"라고 한다. (argument)
## 함수인지 아닌지 구분하는 방법 : "괄호" ()
## c() : 여러 값들을 묶어줌 => 집합 형태 (벡터 형태)

sum(c(2, 4, 6)) # 합계
mean(c(2, 4, 6)) # 평균
var(c(2, 4, 6)) # 분산
sd(c(2, 4, 6)) # 표준편차
median(c(2, 4, 6)) # 중앙값
max(c(2, 4, 6)) # 최대값
min(c(2, 4, 6)) # 최소값
IQR(c(2, 4, 6)) # 사분위범위
quantile(c(2, 4, 6, 8, 10), probs=c(0.25, 0.75)) # 백분위 수
range(c(2, 4, 6, 8, 10)) #최대값과 최소값

# 요약 통계본을 이용해 boxplot을 그릴 수 있다. (연관지어 생각할 것.)
# 여섯수치 요약(최소값, 1사분위수, 중앙값, 평균, 3사분위수, 최대값)
summary(c(2, 4, 6, 8, 10))
# 다섯수치 요약(최소값, 1사분위수, 중앙값, 3사분위수, 최대값)
# 여섯수치 요약에서 평균값을 뺌.
fivenum(c(2, 4, 6, 8, 10))


# 2.3.2 로그.지수 함수 (Logarithms and Exponential function )
# 로그함수 (Logarithms)
## 로그(log) => base가 무엇인지가 중요. / 숫자가 있어야 함.
## 자동으로 default 값 지정 => log(x, base = exp(1))

log(10) # 자연로그 logarithms base e of x, e=2.7182818284..
log10(10) # 상용로그 logaritms base 10 of x
log2(10) # 이진로그 logarithms base 2 of x
log(10, base=exp(1)) # 자연로그 logarithms base e of x

log(10)
log(5)
log(2.7)
log(10); log(5); log(2.7) # 세미콜론을 이용하여 한번에 결과창 확인
log(c(10, 5, 2.7))

log(10, base=10)
log(10, 10)

?log  # help창


# 지수함수 (Exponential function)

exp(1)  # 지수 e=2.7182818284..
exp(10) # 지수 e^10


# 2.3.3 삼각함수 (Trigeometric function)
# 사용할 일이 잘 없을 것이다.

cos(1) # Cosine of x
sin(1) # Sine of x
tan(1) # Tangent of x

acos(1) # Arc-cosine of x
asin(1) # Arc-sine of x
atan(1) # Arc-tangent of x

cospi(1) # cospi(x) : 코사인파이값
sinpi(1)


# 2.3.4 기타 수학 함수 (Others)

pi # 파이값(원주율)
pi + 1
abs(-3) # 절대값 absolute value of x
sqrt(3) # 제곱근 square root of x
sign(-3) # 부호함수(양수=1, 음수=-1)
         # positive와 negative를 숫자로 표현

round(2.45, 1) # 반올림
ceiling(2.45) # 정수로 올림
floor(2.45) # 정수로 내림
trunc(2.45) # 0과 x 사이의 가장 큰 정수 반환
signif(2.45, 2) # 전체 자릿수에 맞게 반올림

# x의 계승 출력 (Factorials of x (x!))
factorial(5)

# x에서 y를 고르는 조합(combination)의 수
# (y-combination of xCx or xCy)
choose(5, 3)

# 감마함수와 베타함수 (Gamma and Beta function)
gamma(4) # (x-1)!

beta(3,4) # (x-1)! * (y-1) / (x+y-1)!

# 추가문제 (logical value)
-3 == abs(-3) * sign(-3)
TRUE
TRUE + 1

# 소수점 자리 표현
# 소수 자리수 : R은 기본적으로 7자리까지 숫자를 표현
# 표현되는 자리수를 변경하고자 하면 options() 함수를 사용
pi
options(digits = 16)
pi

options(digits=24) # digits의 최대허용 자리 : 22
options(digits=22) # 보여주는 소수점 자리 : 16
pi


# R : 객체지향적 프로그램
# 2.4 Naming and allocation of objects(객체)
# 2.4.1 객체(변수) 만들기 (Make objects)

x <- 3; x
x <- c(1, 2, 3, 4, 5)
x
sum(x)
mean(x)
c(1, 2, 3)

이름 <- "이현지"
이름

# 2.4.2 객체 목록 보기 (View list of objects)

ls() # 생성된 객체의 목록을 보기 위해 이 함수를 사용
     # 모든 객체를 보여줌
 
# 2.4.3 객체(변수) 지우기 (Remove objects)
y <- 5 
ls()

# 객체 x 삭제
rm(x)
# 남아 있는 객체 리스트 출력
ls()

rm(list=ls(all=TRUE))
ls()


# 2.5 Type of data
# 2.5.1 데이터의 기본 유형 (Basic types of data value)

# 수치형(numeric) : 
#    숫자로 이루어졌으며 정수형(integer)과 실수형(double)으로 구분한다.
# 논리형(logical) : 
#    참(TRUE)이나 거짓(FALSE)의 논리값을 나타낸다.
# 문자형(character) : 
#    문자나 문자열을 나타낸다.
# 복소수형(complex) : 
#    실수와 허수로 구성된 복소수를 나타낸다.

# model() : 데이터의 유형을 나타내 주는 함수


# 수치형
height <- 180
mode(height)

# 문자형 - 문자값은 따옴표(" 또는 ')로 둘러쌉니다.
name <- "Allen"
mode(name)
mode("Hyeon Ji")

# 논리형 - TRUE, FALSE
is_boy <- TRUE
mode(is_boy)

mode(TRUE)
mode("TRUE")

# logical 서열 : 문자형 > 숫자형 > 논리형


# 2.5.2 특수 데이터
# NULL : 비어있는 값으로 데이터 유형도 없으며 자료의 길이도 0
# NA : 결측값(missing value)
# NAN : 수학적으로 정의가 불가능한 수(예 : sqrt(-3))
# Inf, -Inf : 양의 무한대와 음의 무한대.

# 특수한 형태의 데이터들과의 연산 결과는 보통 특수한 형태의 데이터가 되고 데이터의 형식은 연산에 사용된 다른 값들과의 유형과 동일

x <- NULL
x
x <- "NULL"
x

sqrt(-3)

Inf + 10
Inf / Inf
Inf / 0   # 무한대
1 / 0     # 무한대
0 / Inf   # 0
NULL + 3
NA + 3


# 2.5.3 데이터 유형 함수 (그냥 한번 해보기)
# 데이터의 유형을 검증하기 위한 함수는 is.~형태를 이용 
# is : ~이냐 아니냐 / 숫자인지 문자인지 물어보는 기능 
# 결과 : TRUE 또는 FALSE로 반환

## is.numeric(x) : 수치형 여부
## is.double(x) : 실수형 여부
## is.integer(x) : 정수형 여부
## is.logical(x) : 논리형 여부
## is.complex(x) : 복소수형 여부
## is.character(x) : 문자형 여부
## is.na(x) : NA 여부
## is.null(x) : NULL 여부
## is.nan(x) : NaN 여부
## is.infinite(x) : 무한 수치 여부
## is.finite(x) : 유한 수치 여부

height
is.numeric(height)
name
is.numeric(name)
is.character(name)


# 2.5.4 데이터 유형 변경

# 서로 다른 유형의 데이터에 대한 연산결과 
#   -> R 프로그램에 의해 자동으로 하나의 유형으로 정의됨.
# 우선순위 : 문자형 > 복소수형 > 수치형 > 논리형
#           (character > complex > numeric > logical)

# 유형 변환 : 'as.~'함수 이용 / ~처럼 바꿔라
# as.numeric(x) : 수치형으로 변환
# as.logical(x) : 논리형으로 변환
# as.double(x) : 실수형으로 변환
# as.complex(x) : 복소수형으로 변환
# as.integer(x) : 정수형으로 변환
# as.character(x) : 문자형으로 변환

x <- "3"
x

is.numeric(x)
is.character(x)
x <- as.numeric(x)
is.numeric(x)
x

c(1, 2)
c("1", 2) # 동시에 사용하면 문제가 발생할 수 있다.


# 2.6 Built-in Constants
# Built-in constants : R에 값이 지정되어 내장되어 있는 객체

LETTERS # 영어 알파벳 대문자 26개
letters # 영어 알파벳 소문자 26개

month.abb # 영어 월 이름 약어

pi # 원주율 : 원의 지름에 대한 둘레의 비율율


# 2.7 Reserved Words
# R 예약어 -> 특별한 의미를 가지고 있는 단어 의미
# 객체의 이름을 혼동할 수 있기 때문에
#  변수명이나 사용자가 함수 등의 이름으로 사용하지 않는 것이 좋음.
# 조심해서 객체 이름을 사용할 것 !

# 에약어 : if, else, repeat, while, function, for, in, next, break, TRUE, FALSE, NULL, lnf, NAN, NA, NA_integer_, NA_real_, NA_complex_,NA_character_, .., 1, ..2 등

?reserved
