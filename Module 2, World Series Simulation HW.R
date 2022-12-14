#Roger H Hayden III
#9/12/2021
#Statistical Methods and Data Analysis
# World Series Simulation - Module 2

#Consider a Baseball World Series (best of 7 game series) in which team A 
#theoretically has a 0.55 chance of winning each game against team B. 
#Simulate the probability that team A would win a World Series 
#against team B by simulating 1000 World Series. You many use any 
#software to conduct the simulation. 

#P(Team A win) = 0.55
#P(Team B win) = 0.45

x<-rbinom(1000,7,0.55)

prob<-length(subset(x,x>=4))/1000
prob

