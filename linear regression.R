```{r,echo=FALSE}

data("mtcars")
x = mtcars$wt 
y = mtcars$mpg 

fit = lm(y ~ x)
plot(x,y,xlab='Weight (1000lb)',ylab='MPG')
abline(fit,col="red")

coef(fit)
est = predict(fit,data.frame(x))
plot(x,y,xlab='Weight (1000lb)',ylab='MPG')
abline(fit,col="red")
points(x,est,col="blue",pch=3)
est = predict(fit,newdata=data.frame(x))
err = resid(fit)
plot(x,y,xlab='Weight (1000lb)',ylab='MPG')
segments(x,y,x,est, col="darkgreen", lwd = 2)
abline(fit,col="red")
points(x,est, col="blue", pch=3)

summary(fit)$sigma

n = length(x)
sqrt( sum(resid(fit)^2) / (n-2) )
summary(fit)
```