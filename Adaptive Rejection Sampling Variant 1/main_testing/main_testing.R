setwd("D:/Textbook/R Computing/Homework/Homework8/Adaptive Rejection Sampling Variant 1")
source("main/main.R")

set.seed(1234567890)
h = function(x,mu,sigma) -(x-mu)^2/(2*sigma^2)-0.5*log(2*pi*sigma^2)
interval=c(-Inf,Inf)
mu = 3
sigma = 2
x = mu+c(-1,1)*sigma

adaptive_rejection_sampling(h,interval,x,mu=mu,sigma=sigma) # -Inf  -2.060473
