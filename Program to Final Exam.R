#Roger H Hayden III
#12/3/2021
#Statistical Methods and Data Analysis
#Final - Question 10

x=c(0.12,0.21,0.34,0.61,0.13,0.17,0.21,0.34,0.62,0.71)
y=c(0.70,0.98,1.16,1.75,0.76,0.82,0.95,1.24,1.75,1.95)
combined=c(x,y)
stdevdif<- sd(y)-sd(x)
diff<-NULL

for (i in 1:1000){
  s1 <- sample(combined, 10, replace = F)
  s2 <- combined[!(combined %in% s1)]
  stdev_s<-sd(s1)-sd(s2)
  diff<- c(diff, stdev_s)
}


pvalue<-sum(diff >= stdevdif)/1000
pvalue

