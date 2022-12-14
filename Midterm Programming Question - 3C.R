#Roger H Hayden III
#10/18/2021
#Statistical Methods and Data Analysis
# Midterm Program Question 2C

#Simulate this probability in [b] by first developing a method to produce random deviates from this
#density. Recall you will want to equate a uniform random number on (0, 1) to the cdf and solve for x.
#Using the random deviate generation, simulate 10,000 draws of a sample of size 7, determine the
#maximum and see if the probability the maximum exceeds 1 is consistent with your result in [b].#

n=10000
M=1:n*0
for(i in 1:n)
{
  x=runif(7,0,1)
  M[i]=max((5/3)*x^(3/5))
}
P=length(subset(M,M>1))/n
P