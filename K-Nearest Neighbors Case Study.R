#To Load the neccessary libraries
library(caret)
install.packages("class")
library(class)

#To load the data
train_data = read.csv("C:\\serviceTrainData.csv", )
test_data = read.csv("C:\\serviceTestData.csv")

#To view the stired dataframes in tabular form.
View(train_data)
View(test_data)

#To See the structure of data => That includes the variables and their data type.
 str(train_data)
 str(test_data)

# To see the sunmmary of data can be obtained by SUMMARY()
# =>Gives the 5 points summary for numeric attributes in the data
 summary(train_data)
 summary(test_data)

#Implementation of K-Nearest Neighbors => knn()
#knn(train, test, cl, k = 1)
# train = DF of training set cases
# test = DF of training set cases
# cl = factor of true classification of training set
# k = Number of Neighbors considered

predictknn = knn(train = train_data[,-6], test = test_data[,-6], cl = train_data$Service, k = 3)
# where:
# train = train_data[,-6] => Gives the info. of trainaing dataset except the last column
# test = test_data[,-6] => Gives the info. of test dataset except the last column
#cl = train_data$Service => Gives the last column of TRAINAING data set as a classification factor to algorithm
#k = 3 => To sprcifyt the nearest neighbors as 3

predictknn
# The above is the output of KNN algo which has YES or NO, indicating whether service is 
# needed or not for each case of Test data

#Now understand this point carefully => IF WE do not KNOW the TRUE VALUES we can stop till this point.
#What is True value => It means the actual values present or not for which we were testing out test data
#For Ex: in our case we already have the TRUE VALUES in 6th column in TEST data for servicing of cars
#for 135 test cases, we just ignores that column and loaded the rest of the data in line 30(-6 we did) 
#So now we got the predicted values as per the output of predictknn, but we already have the TRUE values of 
# Services needed or not for training data set. SO we can now generate CONFUSION MATRIX and can see how well my
# classifier has performed(In short to match the 6th column from test data set with predictknn)
# 
# There are 2 ways to generating this confusion matrix - 
# 1st => To generate this manually
# 2nd => To use CARET package which can generte confusion matrix and along with other parameters
 
#Method - 1st => Generating Confusion matrix manually
conf_matrix = table(predictknn, test_data[,6])
conf_matrix
# If you see the out KNN has predicted them correctly as for car service is not required has No in predictknn
# and for car service is required has come YES in predictknn

#Once the Confusion matrix comes up -> we can check the accuracy of it with True values
#Accuracy = TP +TN 
#where TP = correct identification of positive labels and TN = correct identification of negitive labels
knn_accuracy = sum(diag(conf_matrix))/nrow(test_data)
knn_accuracy

#Method - 2nd - To use CARET package which can generte confusion matrix and along with other parameters
conF_Matrix = confusionMatrix(predictknn, test_data$Service)
conF_Matrix
# If you see along with confusion matrix other paramteres has came into picture.