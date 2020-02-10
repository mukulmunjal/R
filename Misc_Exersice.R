a = 1:10
b = a*10
c = c(a,b)
c 
d = c(009,007)
d
save(a,file = "abc.txt")
save.image()
load(file = "abc.txt")

is.character(as.Date("31-07-2019"))
as.numeric("a")

x = c(1,2,3,4,5)
z = list( "id" = a,"wh" = x)
z$id
x
z = list(z,"New Element Added" = d)
print(z)

fl = read.table("c:\\abc.csv", header = T, sep = ",", stringsAsFactors = F)
fl
fl[[2]][2]
fl[,-2]

fl
subs = subset(fl, WH == 13&ID >= 4)
print(subs)

#TO EDIT THE TABLE (in prompt screen)
edit(fl)
row_addition = rbind(fl, "new_row" = c(11, "KKK", 19))
row_addition

column_addition = cbind(fl, "new_col" = 1:10)
column_addition
fl
fl[-10,]
names(fl)

fl = fl[,!names(fl) %in% c("WH")]
fl


#Recasting - Melt and Cast

library("reshape2")
fl1 = melt(fl,id.vars = c("ID","WH"), measure.vars = "Name")

fl1
fl2 = dcast(fl1, ID+variable ~ Name,value.var = "value")
fl2

#recast(DATA, CAST ARGUMENTS--> We give what variable to keep as is and what to change,
#MELT ARGUMENTS--> We Specify the ID and measurement variables)
recast(fl,variable+ID+Name~'New_Time', id.var = c("ID", "Name"),measure.var = "WH")

library("dplyr")
fl_new = mutate(fl,wh_log = log(fl$WH))
fl_new

dummy_matrix = matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3,byrow = T)
dummy_matrix1 = matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3)
dummy_matrix
dummy_matrix1

dim(dummy_matrix1)
rownames(dummy_matrix) = c("Mukul Row 1", "Mukul Row 2", "Mukul Row 3")
colnames(dummy_matrix) = c("Mukul Col 1", "Mukul Col 2", "Mukul Col 3")

dummy_matrix1_new = rbind(dummy_matrix1, c(9,9,9))
dummy_matrix1_new
volume_cyliner(1,1)
