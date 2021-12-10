setwd("D:/Textbook/R Computing/Homework/Homework8/Rejection Sampling")
source("main/rejection_sampling.R")
library(testthat)

test_that("ks_test",{
  set.seed(1234567890)
  out = rejection_sampling(100,dnorm,function(x) dt(x,1),function(n) rt(n,1),1.52)
  ks = ks.test(out,pnorm)
  expect_gt(ks$p.value,0.01)
})

test_that("ks_test",{
  set.seed(1234567890)
  out = rejection_sampling(100,dnorm,function(x) dt(x,1),function(n) rt(n,1))
  ks = ks.test(out,pnorm)
  expect_gt(ks$p.value,0.01)
})

######

test_that("ks_test",{
  set.seed(1234567890)
  out = rejection_sampling(100,dnorm,function(x) 1/2*exp(-abs(x)),function(n) rexp(n,1)*(2*rbinom(n,1,0.5)-1),1.32)
  ks = ks.test(out,pnorm)
  expect_gt(ks$p.value,0.01)
})

test_that("ks_test",{
  set.seed(1234567890)
  out = rejection_sampling(100,dnorm,function(x) 1/2*exp(-abs(x)),function(n) rexp(n,1)*(2*rbinom(n,1,0.5)-1))
  ks = ks.test(out,pnorm)
  expect_gt(ks$p.value,0.01)
})
