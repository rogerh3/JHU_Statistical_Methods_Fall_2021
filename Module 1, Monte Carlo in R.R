#Roger H Hayden III
#9/6/2021
#Statistical Methods and Data Analysis
# Monte Carlo in R - Module 1

#In randomly selected families with three natural children, what is the probability they have a girl?

#(1) P(at least 1 girl)
#(2) equally likely chance to have boy or girl - both 1/2 and independent
#(3) P(girl) = 1/2 or 0.5

sample(c(1:4),4,replace=FALSE,prob=c(rep(.25,4)))
#Sampling from a list of 4 without replacement

sample(c("boy","girl"),3,replace=TRUE)
#sampling boys or girls

sample(c("boy", "girl"),3,replace=TRUE)=="girl"
#T or F if you get a girl or boy

sum(sample(c("boy", "girl"),3,replace=TRUE)=="girl")
#sum of girls

sum(sample(c("boy", "girl"),3,replace=TRUE)=="girl")>=1
#answers if you get any girls at all

sum(sum(sample(c("boy", "girl"),3,replace=TRUE)=="girl")>=1)
# 1 as having a girl, 0 as having no girls

count=0
  for (i in 1:1000){
    count<-count+sum(sum(sample(c("boy", "girl"),3,replace=TRUE)=="girl")>=1)}
count

#P(at least 1 girl) = 1-P(no girls) = 1-(1/2)^3 = 7/8 = 0.875

#What is the area under the function y=x^2 on (0,1)
x<-runif(5)
y<-runif(5)

y<x^2

sum(y<x^2)

sum(y<x^2)

runif(5)<runif(5)^2

sum(runif(5)<runif(5)^2)

sum(runif(5)<runif(5)^2)/5

sum(runif(5000)<runif(5000)^2)/5000
#estimation for area under y=x^2 on (0,1)

