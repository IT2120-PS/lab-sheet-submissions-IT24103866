setwd("C:\\Users\\User\\OneDrive\\Desktop\\IT24103866")
getwd()

#1.1
backing_time <- rnorm(25,mean =45, sd= 2)
print(backing_time)

#1.2
t.test(backing_time,mu=46,alternative = 'less')