A = matrix(c(1,2,3,2,2,2,1,2,9),3,3)
A

install.packages("pracma")
library("pracma")
Rank(A)
A

A = matrix(c(1,2,3,3,6,9,15,30,45),3,3)
A
rank = Rank(A)
columns = ncol(A)
nullity = columns - rank
nullity

A = matrix(c(-5,-3,7,7,-5,3,-5,1,3),ncol = 3, byrow = T)
A
install.packages("pracma")
library("pracma")
Rank(A)
det(A)

b = matrix(c(4,-2,0,-1,2,-1,0,-2,4),ncol = 3, byrow = T)
b
Rank(b)
eigen(b)
a = matrix(c(3,1,8,4),ncol = 2, byrow = T)
c = inv(b)
B*A*c
