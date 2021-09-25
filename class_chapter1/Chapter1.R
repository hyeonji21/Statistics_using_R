# Chapter1. R

## 패키지
# 만약 2개 이상의 패키지를 한번의 명령으로 설치할때는 c() 함수를 사용하여 한꺼번에 지정
# ex) install.packages(c("패키지명", "패키지명"))

# 만약 CRAN이 아닌 다른 저장소에 저장된 패키지를 설치할때는 그에 맞는 절차를 거쳐야 함.
# 그 중 많이 사용되는 Github로 부터 패키지를 다운 받아 설치하고자 한다면 devtools 패키지가 먼저 설치되어 있어야함.
install.packages("devtools")
# devtoo::install_github("패키지 경로명")

## 패키지 관리

install.packages()  # 설치된 패키지 보기

# 패키지가 설치된 폴더 보기
.libPaths()

# 로드된 패키지 보기
search()

# 패키지 언로드 하기 (메모리에서 내리기)
# detach(package:ggplot2, unload=TRUE)

# 설치된 패키지 제거하기
# remove.packages("rpart")

# 패키지 업데이트하기
# 모든 패키지 업데이트
# update.packages()
# 특정 패키지 업데이트
# update.packages(oldPkgs = c("패키지명", "패키지명"))


install.packages("tidyverse") 
# tidyverse 패키지 설치 (많이 쓰게 될 것임)
library(tidyverse) # ggplot2 패키지 로드 
# (tidyverse 패키지 내에 ggplot2 패키지 존재)


x <- c("a", "a", "b", "c")
qplot(x) # ggplot2에 있는 함수 qplot 사용하기 (막대그래프 출력)
