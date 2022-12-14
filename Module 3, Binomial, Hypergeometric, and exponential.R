#Roger H Hayden III
#9/12/2021
#Statistical Methods and Data Analysis
#binomial,hypergeometric, and exponential distributions - Module 3

#Just to continue working with R, I would like you to complete four very simple tasks. 
#The first three are using expectation and the random number generation in R for the 
#binomial, hypergeometric, and exponential distributions. The third task is to plot 
#multiple densities on a graph to see how the parameter changes the density form for the exponential.

#1) Using the function rbinom in R, generate 1000 random deviates from a B(20,.4)
#distribution, compute the sample mean and compare with the theoretical expectation.

rbinom(20, 1000, 0.4)

#2) Using the function rhyper in R, generate 1000 random deviates from a hypergeometric
#distribution with 4 white balls, 8 black balls, and 3 balls drawn without replacement.
#Compute the sample mean and compare with the theoretical expectation.

rhyper(1000,4,8,3)
Sample_Mean<-sum(rhyper(1000,4,8,3))/1000
Sample_Mean
E_X <- (3*4)/(8+4)
E_X
Difference <- abs(E_X - Sample_Mean)
Difference

#3) Using the function rexp in R, generate 1000 random deviates from an exponential with
#lambda=3. Compute the sample mean and compare with the theoretical expectation,
#which is 1/lambda.

rexp(1000,rate = 3)
Sample_Mean2<-sum(rexp(1000,rate = 3))/1000
Sample_Mean2
E_X<- 1/3
Difference<-abs(E_X - Sample_Mean2)
Difference

#4) Using the curve function in R, generate different exponential densities:
#> curve(4*exp(-4*x),.01,10)
#> curve(2*exp(-2*x),.01,10,col="red",add=T)
#> curve(1*exp(-1*x),.01,10,col="blue",add=T)
#> curve(0.5*exp(-.5*x),.01,10,col="green",add=T)

curve(4*exp(-4*x),.01,10)
curve(2*exp(-2*x),.01,10,col="red",add=T)
curve(1*exp(-1*x),.01,10,col="blue",add=T)
curve(0.5*exp(-.5*x),.01,10,col="green",add=T)
