#==> Simple Linear Regression Model Building <==
bonds = read.delim("C:\\bonds.txt", row.names = 1)
bonds
View(bonds)
head(bonds)
tail(bonds)
str(bonds)
summary(bonds)

#Building Linear Regression Model
bondslm = lm(bonds$BidPrice~bonds$CouponRate)
plot(bonds$CouponRate, bonds$BidPrice,main = "Bid Price vs Coupon Rate", xlab ="Coupon Rate", ylab = "Bid Price")

abline(bondslm)

summary(bondslm)
#**************************************************************************************************************
#For description of below see NOTES - PAD 
#==> Simple Linear Regression Model Assessment <==

alpha = 0.05
n=35
p=1
qt(1-(alpha/2), n-p-1)

SSE = sum((bonds$BidPrice - bondslm$fitted.values)^2)
SSE
SSR = sum((bondslm$fitted.values - mean(bonds$BidPrice))^2)
SSR
(SSR/SSE)*(n-2)

#******************************************************************************

plot(bondslm$fitted.values, rstandard(bondslm), main = "Residual Plot", xlab = "Predicted Values for Bid Price",
     ylab = "Standardized Residuals")
abline(h = 2, lty = 2)
abline(h = -2, lty = 2)

