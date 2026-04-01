#Author Young, Date: 04/1/2026, Purpose: Test T-test

#Create two groups x and y
x = rnorm(10)
y = rnorm(10)

#Plot the variables x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')
Apply T-test function on x and y
ttest = t.test(x,y)
	Welch Two Sample t-test

data:  x and y
t = -0.54704, df = 14.811, p-value = 0.5925
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.328820  0.786521
sample estimates:
 mean of x  mean of y 
0.06547736 0.33662687


