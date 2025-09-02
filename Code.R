# Set directories
setwd("~/path/to/Raw data.csv")
ptsData <- read.csv("Raw data.csv")

# Summarize the data
summary(ptsData[, c("payroll", "pts")])

# Draw histograms for points and payroll
hist(ptsData$pts, main = "Histogram of Points", xlab = "Points", ylab = "Frequency", col = "lightblue", border = "black")
hist(ptsData$payroll, main = "Histogram of Payrolls", xlab = "Payrolls", ylab = "Frequency", col = "lightgreen", border = "black")

# Split into two groups: low payroll and high payroll
high_payroll <- ptsData[ptsData$status == 1, ]
low_payroll <- ptsData[ptsData$status == 0, ]

# Summarize the points of each group
summary(high_payroll$pts)
summary(low_payroll$pts)

# Two sample t-test. Execute "t_test_result" (one-sided) and "t_test_result2" (two-sided) to see the result.
t_test_result <- t.test(high_payroll$pts, low_payroll$pts, alternative = "greater", var.equal = TRUE)
t_test_result2 <- t.test(high_payroll$pts, low_payroll$pts, alternative = "two.sided", var.equal = TRUE)

# Draw the graph of Payroll vs. Points + Linear regression line
plot(ptsData$payroll, ptsData$pts, main = "Scatter Plot: Payroll vs. Points", xlab = "Payroll", ylab = "Points", pch = 19, col = "blue")
abline(lm(pts ~ payroll, data = ptsData), col = "red", lwd = 2)

# Simple linear regression. Execute "lm_result" to see the coefficients for the regression line
lm_result <- lm(pts ~ payroll, data = ptsData)

