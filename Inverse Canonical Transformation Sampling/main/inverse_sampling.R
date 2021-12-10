setwd("D:/Textbook/R Computing/Homework/Homework8/Inverse Canonical Transformation Sampling")
source("headers/def_cdf_inv.R")

inverse_sampling = function(n,cdf,cdf_inv,...){
  if (missing(cdf) & missing(cdf_inv)){
    stop("No cdf found")
  }
  if (n%%1 != 0 | n<1){ #if n not positive number
    stop("type change, n should be positive number")
  }
  if(missing(cdf_inv)){
    warning("cdf_inv not supplied, numerical root finding utilized, this is inefficient")
    cdf_inv = def_cdf_inv(cdf,...)
  }
  
  V_cdf_inv = Vectorize(cdf_inv, vectorize.args = names(formals(cdf_inv))[1])
  
  return(V_cdf_inv(runif(n),...))
}