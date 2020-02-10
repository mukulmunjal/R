  # To Load and view the csv file to data frame
data = read.csv("C:\\tripDetails.csv",row.names = 1)
  #If we have the 1st column as mere the numbering of ROWS only which in our case is true, 
  #this can be removed with row.names = 1
View(data)

  #Structure of Data
str(data)

  #Five Point summary of numeric variables
summary(data)

  #K - Means Clustering 
  #As per case study Mr. Sam task is to segregate these trips into clusters
#k_means  = kmeans(x, centers, iter.max, nstart)
  # x = data
  # centers = either we can give the no. of clusters we want to generate from data, say K 
  # OR we can give set of initial clusters. If we passed centers = 3(say k = 3) then it will choose random 
  # set of rows as initial centers
  # iter.max =  It will set the maximum no. of iteration allowed.
  # nstart = if centres is a number (say k = 3), How many random sets should be chosen?
tripcluster = kmeans(data, 3)
  #data = data
  #k = 3 -> It means I want to divide the data into 3 clusters
tripcluster

  #so it has divided the data into 3 clusters of sizes 30,46 and 15
  # and it has given the respective mean with respect to the column
  # Clustering vector:=> It say 1ss row belong to clusester 3, 2nd row belong to cluster 1 and so on.

  # Within cluster sum of squares by cluster specifies that How much is the variance in each of these 
  # clusters, The lesser the variance the better the clusters

#****************************************************************
#Method to Calculate optimal K -> How many clusters should be there
#Elbow Method
#****************************************************************
k.max = 10 #Maximum 10 clustered assumed
wss = rep(NA, k.max) #Repeating(rep) the values(NA) by k.max{It is like we are creating a vector of - 
                     #value NA which should repeat k.max number of times}
wss
nclust = list() #Initializing nclust with emplty LIST
for(i in 1:k.max){
  determingclasses = kmeans(data, i)
  wss[i] = determingclasses$tot.withinss # Total of within cluster sum of squares.
  nclust[[i]] = determingclasses$size
}
nclust
wss


plot(1:k.max, wss, type = "b", pch = 19, xlab = "Number of Clusters K",
     ylab = "Total within-clusters sum of squares :Trips ")

#type = b repersents both line and points has to be there
# So as plot says that maximum no of clusters we can have is 10 
# When we moved from 1 cluser to 2 clusers and 2 clusters to 3 clusters the total within-cluseters 
# sum of sq. values decreases drastically any then further they didn't has significant difference 

#==>So we can CHOOSE K = 3 as my optimal NO. of CLUSTERS<==