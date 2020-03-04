vec1 <- c(1,2,3,4,5)
#names(vec1) <- c('A','B','C','D','E')
vec1
vec2 <- c('A','B','C','D','E')
names(vec1) <- vec2

vec1
vec3 <- c(5,6,7,8,9)
vec1*vec3

sum(vec3)
mean(vec3)
sd(vec3)

vec3 > 2
vec1 !=4

vec1==2
vec1[2:3]

vec1['C']
vec1[c('B','A','D')]

vec1[vec1 > 3]
vec1 > 3


###
1:10
matrix(1:10)
matrix(1:10,ncol=5,byrow=T)

A <- c(1,2,3,4,5)
B <- c(12,13,14,15,16)
C <- matrix(c(A,B),nrow = 2, ncol = 5, byrow=T)

p <- c('Jan','feb','mar','Apr','may')
q <- c('A','B')
colnames(C) <- p
rownames(C) <- q
C
C*C
#matrix multiplication
C%*%C

colSums(C)
C
rowSums(C)
colMeans(C)
rowMeans(C)

D <- c(20,21,22,23,24)
E <- rbind(C,D)
E
avg <- rowMeans(E)
avg
E
E <- cbind(E,avg)
E
E[1,3]
E[,1]
E[1:2,3:4]

#fACTOR
temps <- c('cold','med','hot','cold','med','hot','hot','med','cold')
temps

factor(temps)
x <- factor(temps,ordered = T,levels = c('cold','med','hot'))
summary(x)


A <- c(1,2,3)
B <- c(4,5,6)
C <- rbind(A,B)
C

mat <- matrix(1:9,nrow = 3, byrow = T)
mat
is.matrix(mat)


mat2 <- matrix(1:25, nrow=5, byrow = T)
mat2
mat2[2:3,2:3]



write.csv(mtcars, file='mysample.csv')
df <- read.csv('mysample.csv')


install.packages("readxl")
library(readxl)

excel_sheets('Sample-Sales-Data.xlsx')
df <- read_excel('Sample-Sales-Data.xlsx',sheet='Sheet1')
head(df)
install.packages('xlsx')
library(xlsx)

Sys.Date()
class(as.Date('1990-01-01'))
my_date <- (as.Date('Nov-03-20',format='%b-%d-%y'))
my_date

as.Date('January,02,2020',format='%B,%d,%Y')
strptime("11:02:03",format = "%H:%M:%S")


#####Dplyr----filter,slice,arrange,select,distinct,rename,mutate,summarise
head(flights)
str(flights)
df <- flights[(flights$month==11) & (flights$day==3) &(flights$carrier=='AA'),]
head(df)
filter(flights,month==11,day==3,carrier=='AA')
head(arrange(flights,month,day,desc(dep_time)))
                 
head(select(flights,carrier,flight,distance))  
head(rename(flights,airline_carrier=carrier))

distinct(select(flights,month))
#mutate
head(transmute(flights,new_col=distance/hour))
summarise(flights,delay_avg=mean(dep_delay,na.rm=T))

summarise(flights,total_hour=sum(hour,na.rm=T))

sample_frac(flights,0.5)
head(flights)

flights %>% filter(dep_delay>1) %>% filter(carrier=='AA') %>% sample_frac(0.5)

df<- mtcars
head(df)
result <- df %>% filter((mpg>20) & (cyl==6)) %>% arrange(desc(wt)) %>% distinct(gear)
result
mutate(df,performance=(hp/wt))
mutate(df,mean=mean(mpg,na.rm = T))

a<- df %>% filter(cyl==6) %>% summarise(mean(hp,na.rm = T))
a


#gather,spread,seperate,unite

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

a <- gather(df,Quarter,Revenue,Qtr1:Qtr4)
arrange(a,year)

stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

gathered_stocks <- gather(stocks,stock,Value,X:Z)
spread(gathered_stocks,stock,Value)


#seperate,Unite








