setwd("D:/Textbook/R Computing/Homework/Homework8/Inverse Canonical Transformation Sampling")
source("headers/def_cdf_inv.R")
library(testthat)

test_that("ks_test",{
  p = 0.1
  func = def_cdf_inv(pnorm,mean=100,sd=25)
  expect_equal(func(p),qnorm(p))
})

p = 0.1
while (p < 0.9){
  test_that("ks_test",{
    func = def_cdf_inv(pnorm,mean=100,sd=25)
    expect_equal(func(p),qnorm(p))
  })
  p = p + 0.1
}
