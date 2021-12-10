setwd("D:/Textbook/R Computing/Homework/Homework8/Inverse Canonical Transformation Sampling")
source("main/inverse_sampling.R")
library(testthat)

set.seed(123456789)
x = inverse_sampling(100,pnorm,qnorm,mean=100,sd=25)

test_that("ks_test",{
  ks_test_out = ks.test(x,pnorm,qnorm,mean=100,sd=25)
  expect_gt(ks_test_out$p.value,0.01)
})

#######
x = inverse_sampling(100,pnorm,mean=100,sd=25)
test_that("ks_test",{
  ks_test_out = ks.test(x,pnorm,mean=100,sd=25)
  expect_gt(ks_test_out$p.value,0.01)
})
