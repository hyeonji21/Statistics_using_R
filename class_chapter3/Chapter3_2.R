## Matrix
# 3.2.1
# 3.2.1.1

# cbind() : 열로 / rbind() : 행으로

x <- 1:3
y <- 4:6
z <- 7:9
x
y
z

cbind(x,y,z)
w <- cbind(x,y,z)
w
class(w)
class(x) 
mode(x) # 숫자(정수)
mode(w) # matrix -> 숫자로 이루어져있다.

rbind(x,y,z)
w2 <- rbind(x,y,z)
w2
w

cbind(1:3, 4:6, 7:9)
cbind(1:3, y, 7:9)
w3 <- cbind(1:3, "y", 7:9) 
# 벡터의 특징) 1. 하나만 있어도 3개로 채워넣음.
#              2. 문자 > 숫자 

mode(w3)
class(w3)



# 3.2.1.2
# matrix() function
# matrix(data=NA, nrow=1 (행의 개수), 
#         ncol=1 (열의 개수), 
#         byrow=False(옆으로 할건지? 밑으로 할건지?),
#         dimnames=NULL(차원의 이름들 설정) / 행과 열 이름)

?matrix

matrix(1:12)

matrix(1:12, nrow=3)
matrix(1:12, 3)

matrix(1:12, 3, 4)
matrix(1:12, 3, 6)

matrix(1:12, 3, T)
matrix(1:12, 3, 4, T)

result <- matrix(0, 3, 4)
result
result <- matrix(NA, 3, 4)
result

# 팁
(result <- matrix(NA, 3, 4))  # 할당과 출력 한번에 가능
# print(result) <- 이것을 줄여서 적용한 것임.



# 3.2.2 
# dimnames() : 이름 지어주는 것
# colnames() : 열 이름 지정
# rownames() : 행 이름 지정

# 이름 출력해보기 
w
dimnames(w)  # 행의 이름 출력 / 열의 이름 출력

colnames(w)
rownames(w)

# 이름 변경하기 
colnames(w) <- c("a", "b", "c")
w

letters
colnames(w) <- letters[1:3]
w

colnames(w) <- LETTERS[1:3]
w

rownames(w) <- letters[1:3]
w

# 변수 이름 변경 -> colnames() 많이 쓰이므로 기억하기

# 복습)
x <- 1:12
matrix(x, 3)
matrix(c(x,y,z), 3)

# 복습
x <- matrix(1:12, 3)
x
length(x) # x의 원소 개수랑 같음.
dim(x) # 행, 열
nrow(x)
ncol(x)



x[3]
x[4]
x[c(3, 7)]
x
x[12]

y <- matrix(1:12, 3, byrow=T)
y
y[3]

c(x)
c(y)

x
x[3, 2]
x[2, 3]
x[2, 7]
x[1:2, 3]
x[1:2, 2:3]
x[c(1, 3), c(1, 4)]
x[1, 1:4]
x[1,]
x[1:2, ]
x[,c(1, 3)]

# 값을 뺄 수 있으면 넣을 수도 있다. (명심)
# 벡터값 바꾸기 
x[1:2, 1:2]
x[1:2, 1:2] <- 1:4  
x
x[1:2, 1:2] <- matrix(5:8, 2)
x

x[1,1] <- 100
x[1,2] <- 1000
x[2,1] <- 10
x

x[2:3, ]
x[, c(1,4)]

# 행의 이름 / 열의 이름
rownames(x) <- letters[1:3]
colnames(x) <- LETTERS[1:4]
x
x["b", c("A", "D")]

x[-1,]
x[,-3]
x[,-c(3, 4)]
x[-2, -c(3, 4)] # b 빠지고, c.d 빠짐
x[-2:3, -c(3, 4)]
x[-2:3]

x[-c(2:3), -c(3, 4)]
z <- x[-c(2:3), -c(3, 4)]
class(x)
class(z)
class(x[1:2, 3:4])

x[x>10]
x>10

x[,4]  # 결과 : 벡터로 한줄이 나옴.
x
x[, 4]>10
x[x[, 4]>10,]  # 행은 조건 / 열은 그대로 출력 

x4 <- x[, 4]
x[x4>10, ]

# 짝수만 추출
x[x %% 2 == 0]  
x[x %/% 2 == 0]
x %/%  2  # 몫
x %% 2  # 나머지

# 홀수만 추출
x[x %% 2 == 1]

# 3.2.4 빼내면 집어넣을 수 있다.
x
x[2, 2] <- 0
x
x[x >= 8] <- 100; x

# 3.2.5
x <- matrix(1:6, nrow=2)
x
x * 2
log2(x)

# 행렬이니까 가능한 연산 (matrix or 2차원)
rowSums(x) # 행마다 합계
colSums(x) # 열마다 합계

rowMeans(x) # 행평균
colMeans(x) # 열평균
