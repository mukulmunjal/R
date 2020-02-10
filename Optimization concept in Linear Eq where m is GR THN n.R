A = matrix(c(1,2,3,0,0,1), ncol = 2, byrow = F)
b = matrix(c(1,2,5), ncol = 1, byrow = F)
A
b
install.packages("pracma")
library("pracma")
x = inv(t(A)%*%A)%*%t(A)%*%b
x


#WITH THE HELP OF GENERALIZED way ->Moore Penrose Pseudo Inverse 
library("MASS")
ginv(A)%*%b
