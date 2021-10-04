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








