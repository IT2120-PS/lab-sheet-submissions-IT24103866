setwd("C:\\Users\\IT24103866\\Desktop\\IT24103866")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

##Question 1
popmn<-mean(data$Weight)
popsd<-sd(data$Weight)
popvar <- var(data$Weight)

popmn
popsd
popvar

##Question 2
samples<<-matrix(nrow = 6,ncol = 25)
n<<-c

#create and assign samples of size 6 for "samples" variable.
for(i in 1:25){
  s <- sample(data$Weight, 6, replace=TRUE)
  samples[,i]<-s
  n<<-c(n,paste('S',i))
}


colnames(samples)=n

#sample means and standard deviations
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

s.means
s.sds

##Question 03
mean.samplemeans<-mean(s.means)
sd.samplemeans<-sd(s.means)

mean.samplemeans
sd.samplemeans

popmn
mean.samplemeans
popsd
popsd/sqrt(6)
sd.samplemeans