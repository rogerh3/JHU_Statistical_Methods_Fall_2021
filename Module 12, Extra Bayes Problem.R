#Roger H Hayden III
#11/21/2021
#Statistical Methods and Data Analysis
#Module 12 - Extra Bayes Problem

#a) Plot prior and posterior distributions for all 4 cases defined by the 
#following values for parameters: (r,s) = (1,1),(4,4)& (n,k) = (4,3),(20,11)

#(r,s,n,k) = (1,1,4,3)

prior <- function (r,s,theta){
  (1/beta(r,s))*(theta^(r-1))*((1-theta)^(s-1))
}
post <- function(r,s,n,k,theta){
  (1/beta((r+k),(n+s-k)))*(theta^(r+k-1))*((1-theta)^(n+s-k-1))
}
theta = seq(0,1, length = 100)
head(theta)

r = 1
s = 1
n = 4
k = 3

prior_prob = prior(r,s,theta)
post_prob = post(r,s,n,k,theta)
plot(theta,post_prob,"l")
lines(theta,prior_prob)

#(r,s,n,k) = (1,1,20,11)

prior <- function (r,s,theta){
  (1/beta(r,s))*(theta^(r-1))*((1-theta)^(s-1))
}
post <- function(r,s,n,k,theta){
  (1/beta((r+k),(n+s-k)))*(theta^(r+k-1))*((1-theta)^(n+s-k-1))
}
theta = seq(0,1, length = 100)
head(theta)

r = 1
s = 1
n = 20
k = 11

prior_prob = prior(r,s,theta)
post_prob = post(r,s,n,k,theta)
plot(theta,post_prob,"l")
lines(theta,prior_prob)

#(r,s,n,k) = (4,4,4,3)

prior <- function (r,s,theta){
  (1/beta(r,s))*(theta^(r-1))*((1-theta)^(s-1))
}
post <- function(r,s,n,k,theta){
  (1/beta((r+k),(n+s-k)))*(theta^(r+k-1))*((1-theta)^(n+s-k-1))
}
theta = seq(0,1, length = 100)
head(theta)

r = 4
s = 4
n = 4
k = 3

prior_prob = prior(r,s,theta)
post_prob = post(r,s,n,k,theta)
plot(theta,post_prob,"l")
lines(theta,prior_prob)

#(r,s,n,k) = (4,4,20,11)

prior <- function (r,s,theta){
  (1/beta(r,s))*(theta^(r-1))*((1-theta)^(s-1))
}
post <- function(r,s,n,k,theta){
  (1/beta((r+k),(n+s-k)))*(theta^(r+k-1))*((1-theta)^(n+s-k-1))
}
theta = seq(0,1, length = 100)
head(theta)

r = 4
s = 4
n = 20
k = 11

prior_prob = prior(r,s,theta)
post_prob = post(r,s,n,k,theta)
plot(theta,post_prob,"l")
lines(theta,prior_prob)

#In each one of these 4 cases, determine the probability that the coin is
#biased towards heads (theta>0.5)

r = 1
s = 1
n = 4
k = 3

a = r+k
b = n+s-k
prob1 = 1-pbeta(0.5,a,b)
prob1

r = 1
s = 1
n = 20
k = 11

a = r+k
b = n+s-k
prob2 = 1-pbeta(0.5,a,b)
prob2

r = 4
s = 4
n = 4
k = 3

a = r+k
b = n+s-k
prob3 = 1-pbeta(0.5,a,b)
prob3

r = 4
s = 4
n = 20
k = 11

a = r+k
b = n+s-k
prob4 = 1-pbeta(0.5,a,b)
prob4
