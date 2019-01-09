y=c(2865,2831,2685,2565,2353,2322	)
x=c(163,148,134,145,145,137)
Sxx=sum((x-mean(x))^2)


x = c(2,3,9,10,18,41,53,56,59,63,67,71,73,75,79 )
y = c(5,11,38,39,44,59,63,66,71,90,96,104,119,143,145 )
model = lm(y ~ x)
print(summary(model))
xstar = 50
predict(model, newdata = data.frame(x = c(xstar)))
