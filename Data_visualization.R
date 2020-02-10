#SCATTER PLOT
x = 1:10
y = x^3
x
y
plot(y)
plot(x,type = 'l')


plot(mtcars$wt,mtcars$mpg, main = "Scatter Graph", xlab = 'Car Weight',
     ylab = 'Miles per gallon',pch = 19)


a = datasets::mtcars
a
#NAMES keeps the numbering of columns HEADER as 1,2,3
b = names(a)
b
b[1]

plot(a$wt, a$mpg, xlab = "Car Weight", ylab = "Miles per Gallon", pch = 19)

X = 1:10
Y = X^2
plot(X,Y,type = 'l')
z = c(19,17,66,44,10)
k = c("Mon","Tues", "Wed","Thrus","Fri")

barplot(z,names.arg = k, col = "red", border = "blue", main = "Testing Graph")


  