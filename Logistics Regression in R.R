#CASE STUDY
training_data = read.csv("C:\\crashTest_1.csv")
testing_data = read.csv("C:\\crashTest_1_TEST.csv")
View(training_data)
View(testing_data)
str(training_data)

summary(training_data)

#GLM function => Used for logistics regression model
logisfit = glm(formula = training_data$CarType~., family ='binomial', data = training_data)
logisfit
summary(logisfit)

logistrain = predict(logisfit, type = 'response')
plot(logistrain)

tapply(logistrain, training_data$CarType, mean)


#**********************************************************
#Predicting on test data

logisPred = predict(logisfit, newdata = testing_data, type = 'response')
plot(logisPred)

logisPred

#Creating a new Column in Testing data that if my threshold(0.5) if the predicted value
#is less that 0.5 assign hatchback else SUC

testing_data[logisPred<=0.5,"LogisPred"]="Hatchback"
testing_data[logisPred>0.5,"LogisPred"]="SUV"
testing_data

#Confusion Matrix

library(caret)
install.packages("e1071")
library(e1071)
View(testing_data)
confusionMatrix(table(testing_data[,7],testing_data[,6]), positive = 'Hatchback')

predicted = testing_data[,8]
reference = testing_data[,7]
u <- union(predicted, reference)
u
t <- table(factor(predicted, u), factor(reference, u))
t
confusionMatrix(t)
