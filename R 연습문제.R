#[ Matrix, Dataframe 연습문제 1 ]

#R에서 제공하는 state.x77 데이터셋을 이용하여 코드를 작성하시오.
#1) state.x77을 변환하여 st에 데이터프레임으로 저장하시오.
install.packages(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)
#2) st의 내용
st
#3) st의 열이름
colnames(st)
#4) st의 행 이름
rownames(st)
#5) st의 행과 개수와 열의 개수
dim(st)
#6) st의 요약 정보
str(st)
#7) st의 행별 합계와 평균을 출력하시오.
rowSums(st)
rowMeans(st)
#8) st의 열별 합계와 평균을 출력하시오.
colSums(st)
colMeans(st)
#9) Florida 주의 모든 정보를 출력하시오.
st["Florida",]
#10) 50개 주의 수입(Incom) 정보만 출력하시오.
st[,"Income"]
#11) Texas 주의 면적(Area)을 출력하시오.
st["Texas","Area"]
#12) Ohio 주의 인구(Population)와 수입(Income)을 출력하시오.
st["Ohio",c("Population","Income")]
13) 인구가 5,000 이상인 주의 데이터만 출력하시오.
st["Population" > 5000]
14) 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력하시오.
st["Income">4500 , c("Population","Income","Area")]
#15) 수입이 4,500 이상인 주는 몇 개인지 출력하시오.
table(st["Income"]>4500)
#16) 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보를 출력하시오.
condi <- "Area" > 100000 & "Frost" > 120
st[condi]
#17) 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12 미만인 주의 정보를 출력하시오.
condi2 <- "Popualtion" < 2000 & "Murder" < 12
st[condi2]
#18) 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인주 출력하시오.
a <- st["Illiteracy" > 2.0,"Income"]
mean(a)
#19) 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이를 출력하시오.
b <- st["Illiteracy" < 2.0,"Income"]
mean(b)
mean(a)-mean(b)
#20) 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력하시오.
max(st[,"Life.Exp"])
#21) Pennsylvania 주보다 수입(Income)높은 주들을 출력하시오.
st[,"Income">st["Pennsylvania","Income"]]
