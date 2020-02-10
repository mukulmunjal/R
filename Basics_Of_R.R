a = 10
b = a*5
c='hi'
print(c(a,b))
print (c)
rm(list = ls())
pi
letters
month.name
month.abb
month.name[1]
typeof("b")
is.character("b")
as.complex(a)
as.complex(c)
#Vectors -> It should be of same data type
vectors = c('AAA','DDD','FFF')
print(vectors)

#Lists -> a generic object consisting of an ordered collection of
#objects. A list could consist of a numeric vector, a logical value, a matrix,
#a complex vector, a character array, a function, and so on
emp_id = c(111,222,333,444)
emp_name = c('Mukul', 'Kapil', 'Ram', 'Shyam')
num_emp = 4
emp.list = list(emp_id, emp_name, num_emp)
print(emp.list)

# Naming the items in EMP.LIST
emp.list = list(ID = emp_id, NAME = emp_name, "No. of Emp" = num_emp )
emp.list$`No. of Emp`      

#Accessing components (indices)
#To access top level components, use double slicing operator " [[ ]]"
#and for lower/inner level components use "[ ]" along with "[[ ]]"
emp.list[[1]][3]
emp.list[[2]][3]


#Replacing the value in a LIST(From Ram to ANIL)
emp.list[[2]][3] = "Anil"
emp.list[[2]][3]
emp.list[[2]]

#Data frames are generic data objects of R, used to store tabular data(in format of table)
vector1 = c(1,2,3,4)
vector2 = c('BW','JAVA','SQL','R')
vector3 = c('For Business Warehousing(ETL)', 'Programming Language', 
            'For quering data from DB', 'Used for Data Analytics')
list_test = list(vector1, vector2, vector3)
list_test
vector4 = data.frame(vector1, vector2, vector3)
vector4

#Create a dataframe using data from a file
newDF = read.table("C:\\ABC.csv",header = T, sep = ",")
newDF
#For accessing 1st and 2nd row
print(newDF[1:5,])

#For accessing 1st and 2nd Column
newDF[,1:2]
newDF1 = data.frame(ID = newDF$ID, NAME = newDF$Name, WORK_HOURS = newDF$WH)

#subset() which extracts subset of data based on conditions -> WH = 10 
newDF2 = subset(newDF1, ID== 10)
newDF2

#Changing the value of DATA FRAME-> [[Column No.][Row No.]
newDF[[3]][10] = 15
newDF

#A dataframe can also be edited using the edit() command
#Create an instance of data frame and use edit command to open a 
#table editor, changes can be manually made
muk_table2 = edit(newDF)
muk_table2

#Adding extra rows and columns -> r.bind for ROW , c.bind for Column
addition_row = rbind(newDF1, data.frame(ID = 12, NAME = "LLL", WORK_HOURS = 8))
addition_row

additional_column = cbind(newDF1, GENDER = c('M','M','M','F','F','M','M','M','F','F'))
additional_column

#Deleting rows and columns => before ',' for rows & after ',' for columns
df = newDF[-10,-3]
df
newDF

# '!' means no(TO DELETE those) to those rows /columns which satisfy the condition

df2 = newDF[,!names(newDF)%in%c('ID')]
df2

df3 = newDF[!newDF$ID == 6,]
df3

fac = is.factor(newDF$Name)
print(newDF$Name)
#By running below command NOTICE that Name column is converted to FACTORS. These values were TEXTS
#in FILE and R automatically interpreted them as catagorial variables.
str(df3)

#When character columns are created in a data.frame, they become factors
#Factor variables are those where the character column is split into categories or factor levels
df3

df3[[1]][1] = 2
df3

df3[[2]][1] = 'A'
df3
df3[[2]][3] = 'MM'
df3

df4 = data.frame(df3$Name, stringsAsFactors = FALSE)
df4
df3[[2]][4] = "MMM"
df3
df4[2,1] = 'ccc'
df4

#Recasting dataframes - Manipulating of data frame in terms of its variables
#Reshaping of data -> to get insight
newDF1

#Recast in 2 steps -> 1. Melt 2. Cast
#Identifier variables ->Like charateristics in BW(Name or month)
#measurement variables ->Like Key figures in BW

#Call the library 'reshape2' using the library() command
#melt (data, id.vars, measure.vars, variable.name = "variable", value.name = "value")
install.packages("reshape2")
library(reshape2)
melt_df = melt(newDF1, id.vars = c("ID", "NAME"), measure.vars = "WORK_HOURS")
melt_df

#cast
#VALUE.VAR => Column of Df from which the values are to be taken from
#Columns "ID" to remain as is. Categories in column "Name" become new variables.
dcast(newDF1, ID~ NAME,value.var = "WORK_HOURS" )

#tO Add new variable to dataframe based on existing ones
install.packages("dplyr")
library("dplyr")
#mutate() command will add extra variable columns based on existing ones.
newDF1
mutate(newDF1, 'Week_hours_worked' = WORK_HOURS*5)

#creating 2 df's
id = c(1,2,3,4,5)
skill = c('BW','JAVA','SQL','R','HADDOP')
skill_usage = c('For Business Warehousing(ETL)', 'Programming Language', 
            'For quering data from DB', 'Used for Data Analytics','Big Data')
df1 = data.frame(id, skill, skill_usage)

id = c(4,2,1,3)
name = c('Ram','Shyam','Ajay','Vinay')
work_company = c('SAP', 'Accenture', 'ORACLE', 'ADOBE')
df2 = data.frame(id, name, work_company)
df1
df2

#FULL JOIN of 2 data frames with the help of DPYLR package 
#"function(dataframe1, dataframe2, by = id.variable)"
full_join(df1,df2)
right_join(df1,df2)
test <- left_join(df1,df2, by = 'id')
inner_join(df1,df2)
semi_join(df1,df2)
anti_join(df1, df2)
test

#creating MATRIX()
test_matrix = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow =  1)
test_matrix

matrix(1:3,3,3)
matrix(4:6,3,3)

#Use 'diag()' command with 4:6 => Command: diag(k,m,n)
diag(4:6,3,3)

#dim(A) will return the size of the matrix
dim(test_matrix)

#nrow(A) will return the number of rows
nrow(test_matrix)

#ncol(A) will return the number of columns
ncol(test_matrix)

#prod(dim(A)) or length(A) will return the number of elements
length(test_matrix)

#Ways to get the data without accessing row 3rd
test_matrix[1:2,]
#OR
test_matrix[-3,]

#Change the element 9 to 10
test_matrix[3,3] = 10
test_matrix[3,3]

#Access the second row and the third column
test_matrix[2,3]

#List all the elements in the second column and third row
t1 =test_matrix[,2]
t2 =test_matrix[3,]
test_matrix
test_matrix[c(1,2), -2]
t1
t2

#Matrix concatenation refers to merging of a row or column to a matrix
# Concatenation of a row to a matrix is done sing rbind()
# Concatenation of a column to a matrix is done using cbind()
# Consistency of the dimensions between the matrix and the vector should be checked before
concatenation
t3 = rbind(t1, t2)
t3 = cbind(t1, t2)
t3

#Matrix addition/subtraction & multiplication
t1+t2
t1-t2
t1*t2
t1/t2
#Regular matrix Multiplication -> a1*b1+a2*b2+a3*b3
t1%*%t2

vec1 = c(1,2,3) 
vec2 = c("Orange","Mango","Apple") 
vec3 = c(100, 200, 300)
df = data.frame(vec1, vec2,vec3)
df
df_new=recast(df,id.var="vec2",variable~vec2)
print(df_new)
