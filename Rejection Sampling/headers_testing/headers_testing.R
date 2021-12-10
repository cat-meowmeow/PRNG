setwd("D:/Textbook/R Computing/Homework/Homework8/Rejection Sampling")
source("headers/def_env_const.R")
library(testthat)

test_that("ks_test",{
  x = def_env_const( dnorm, function(x) 1/pi/(1+x^2))
  expect_lt(x,1.521)
})
test_that("ks_test",{
  x = def_env_const( dexp, function(x) 1/(1+x)^2)
  expect_lt(x,1.472)
})
