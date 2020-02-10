data = read.csv("C:\\income.csv")
data
View(data)

income_model = lm(data$ï..Income~URate+Pop+COL+PD,data = data)
summary(income_model)

data1 = read.csv("C:\\companies.csv")
data1
model = lm(data1,data = data1)
model

summary(model)
