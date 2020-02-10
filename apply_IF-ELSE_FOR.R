#There are a few looping functions that are pretty useful when working interactively on a commandline
#apply: Apply a function over the margins of an array or matrix

#lapply: Apply a function over a list or a vector

#tapply: Apply a function over a ragged array 

#mapply: Multivariate version of lapply 

#xxply (plyr package)

A = matrix(1:9, 3, 3)
A

#Let's start with the godfather of the family, apply(), 
#which operates on arrays. For simplicity, the tutorial limits itself to 2D arrays,
#which are also known as matrices.
#The R base manual tells you that it's called as follows: apply(X, MARGIN, FUN, ...)
#where:
#X is an array or a matrix if the dimension of the array is 2;
#MARGIN is a variable defining how the function is applied:
#when MARGIN=1, it applies over rows, whereas with MARGIN=2, it works over columns. 
#Note that when you use the construct MARGIN=c(1,2), it applies to both rows and columns; and
#FUN, which is the function that you want to apply to the data. 
#It can be any R function, including a User Defined Function (UDF).
apply(A,1,sum)

#substraction
apply(A,2,diff)
apply(A,3,diff)

A = matrix(1:9,3,3)
A
B = matrix(10:18,3,3)
B
Mukul_list = list(A, B)
Mukul_list

#lapply is used to apply a function over a list. lapply always returns a list of the same
#length as the input list
lapply(Mukul_list,sum)

#In short, mapply() applies a Function to Multiple List or multiple Vector Arguments.
source('C://Users/i341052/OneDrive - SAP SE/Desktop/BIgData-20190610T054857Z-001/R/Ex_Files_UaR_R/Exercise Files/Mukul Exercise/volume_cylinder.R')
v1 = volume_cyliner(5,1)
v1
v2 = volume_cyliner(3,3)
v3 = volume_cyliner(8,4)
mapply_func = mapply(volume_cyliner, 1:9,2)
mapply_func

radius = c(1,3,4,5)
height = c(1,2,3,6)
mapply_func = mapply(volume_cyliner, radius,height)
mapply_func

#if-else functionality
x = 8
if(x>9){ 
  x = x/2
}else if(x>10){
 x = x +1 
}else{
  x = x +2 
}
x

#FOR Loop -> By sequence function->
#LENGHT = Number of elements required
seq(from=1, to = 10,length = 5)

#by means the increament or decrement
#From = starting num
#to = End to
seq(from = 1, to = 10 , by = 3)

#for loop: Example
newDF = read.table("C:\\ABC.csv",header = T, sep = ",")
newDF
len = newDF$ID
n = length(len)
sum = 0
for (i in seq(len[1],n,1)) {
  sum = sum +i
  print(c(i,sum))
}


#for loop: Example
newDF = read.table("C:\\ABC.csv",header = T, sep = ",")
newDF
len = newDF$ID
n = length(len)
sum = 0
for (i in seq(len[1],n,1)) {
  sum = sum +i
  if(sum > 25){
    break}
  print(c(i,sum))
}


#While loop: Example
newDF = read.table("C:\\ABC.csv",header = T, sep = ",")
newDF
len = newDF$ID
len
sum = 0
i = len[1]
while (sum<25) {
  sum = sum +len[i]
  print(c(len[i],sum))
  i = i+1
}

x = 1:4
y = c(6,7)
z = x*y
z

x = c("a",1, 3>2)
x
print(as.ordered(x))

