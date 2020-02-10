n=16
x = seq(1,n,2)
for (i in x) {
  if (i == 5){
    print(i)
    break
  }
}

x1=matrix(10:18,3,3)
x2=matrix(11:19,3,3)
x1
x2
m =cbind(apply(x1,1,min),apply(x2,1,max))
print(m)
y =apply(m,1,mean)
print(y)
help(matrix)

x =c(1:4) 
y =c(6,3) 
x *y
sample(1:100, 3)

x=c(55,44,55,77) 
x[c(FALSE,TRUE,FALSE,TRUE)]
x[c(F,T,F)]

mylist=list("Apple","Mango","Orange",c("Jan","May","Nov"),"125","90","150")
mylist[[4]][2]

mylist=list("Apple","Mango","Orange",c("Jan","May","Nov"),"125","90","150")
mylist  = append(mylist[[4]], "Dec")
mylist

A =matrix(c(1:12), nrow = 3, ncol = 4, byrow = T)
A[1,4]
b=diag(x = A,nrow = 3,ncol = 4)

A = matrix(11:35, 5, 5)
A

b=diag(x = A,nrow = 5,ncol = 5)
is.matrix(A)
1Transport1. = 10

