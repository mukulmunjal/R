#REad description from NOTEPAD
data = read.csv("C:\\nyc.csv")
View(data)

plot(data, main = "PairWise Scatter Plots")
round(cor(data),3)

#lm(dependant var~ independant.var1 + indep.var2)

nyc_model = lm(Price~Food+Decor+Service+East, data = data)
#OR can be written as
nyc_model = lm(data$Price~., data = data)
nyc_model
summary(nyc_model)


nyc_model2 = lm(Price~Food+Decor+East, data = data)
summary(nyc_model2)

nyc_model3 = lm(Price~Service+Decor+East, data = data)
summary(nyc_model3)

