source('C:/Users/i341052/OneDrive - SAP SE/Desktop/BIgData-20190610T054857Z-001/R/Ex_Files_UaR_R/Exercise Files/Mukul Exercise/Calculation_Function.R')
A = matrix(1:9,3,3)
A

#apply(Matrix_name, 1 = row and 2 = columns , function name(can be user defined or build in func))
apply(A, 1, exp)

#==> LAPPLY -> Gives returns a LIST of the same length as the INPUT LIST

B = matrix(10:18,3,3)
B
mylist = list(A,B)
mylist

lapply(mylist, sum)


#mapply => It is multivariant version of LAPPLY
#=> i.e. => A function that can applied to multiple LISTs simultanously

#mapply(fun, list1, list2)
# Do Remember => No. of list will always be equal to number of argumnet in the function

list1 = list(10,75,90)
list2 = list(20,25,10)

list1
list2
mapply(calc, list1,list2)

#TAAPLY => It is used to apply to SUBSET of vector(which we give) according to the combination
#of FACTORS

# SYNTAX => TAPPLY(vector(on which the function has to be performend),
#factors(these are the subset values-> BASICALLY,INDEXX), function)

ID = c(1,1,1,2,2,3,3,3)
values = c(10,20,30,40,50,60,70,80)
tapply(values, ID, sum)
