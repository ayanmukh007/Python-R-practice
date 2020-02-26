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
