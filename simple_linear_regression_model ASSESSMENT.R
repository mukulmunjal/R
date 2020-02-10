income = read.csv("C:\\income_data.csv", header = T)
income
summary(income)
incomelm = lm(income$ï..COL~income$PD)
summary(incomelm)


plot(incomelm$fitted.values, rstandard(incomelm), main = "Residual Plot", xlab = "Predicted Values for Bid Price",
     ylab = "Standardized Residuals")
abline(h = 2, lty = 2)
abline(h = -2, lty = 2)
