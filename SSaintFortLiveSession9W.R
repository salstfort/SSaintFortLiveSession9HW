# Salnave Saint-Fort
# MSDC 6306 Doing Data Science - 404
# Summer 2016
# SSaintFortLiveSession9HW

# Cod to load data:
data(ukcars)

# Plot the time series. Can you identify seasonal fluctuations and/or a trend? 
plot(ukcars)

# Use a classical decomposition to calculate the trend-cycle and seasonal indices. 
fitd <- decompose(ukcars)
plot(fitd)


# Do the results support the graphical interpretation from part (a)? 
# Answer:  Yes

# Compute and plot the seasonally adjusted data. 
eeadj <- seasadj(fitd)
plot(eeadj)

# Change one observation to be an outlier (e.g., add 500 to one observation), and recompute the seasonally adjusted data. What is the effect of the outlier? 
ukcars2 <- ts(c(ukcars[1:54],ukcars[55]+500,ukcars[56:191]),start=c(1978,1),frequency=12)
plot(ukcars2)

# Does it make any difference if the outlier is near the end rather than in the middle of the time series? 

plot(ukcars, col="gray",
     main="Electrical equipment manufacturing",
     ylab="New orders index", xlab="")
lines(fit$time.series[,2],col="red",ylab="Trend")

•	Use STL to decompose the series. 
fit <- stl(ukcars, s.window=5)
plot(fit)