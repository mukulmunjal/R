A = matrix(c(1,2,3,0,0,1), ncol = 3, byrow = T)
b = matrix(c(2,1), ncol = 1, byrow = F)
A
b
install.packages("pracma")
library("pracma")
x = t(A)%*%inv(A%*%t(A))%*%b
x


#WITH THE HELP OF GENERALIZED way ->Moore Penrose Pseudo Inverse 
library("MASS")
ginv(A)%*%b


A = matrix(c(6,5,8,11,1,2,3,4,9,4,7,10,-3,1,1,1,3,-1,-1,-1,14,7,12,17,11,8,13,18,7,0,1,2,2,-3,-4,-5,7,7,11,15), ncol = 10, byrow = F)
A

Rank(A)
