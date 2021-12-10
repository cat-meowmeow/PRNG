setwd("D:/Textbook/R Computing/Homework/Homework8/Rejection Sampling")
source("headers/def_env_const.R")

rejection_sampling <- function(n,targ_pdf,prop_pdf,prop_ran,env_const){
  # input checks
  if (n%%1 != 0 | n<1){ #if n not positive number
    stop("type change, n should be positive number")
  }
  if (missing(env_const)){
    env_const <- def_env_const(targ_pdf,prop_pdf)
  }
  # accept or reject 
  i = 1
  accept = c()
  prop_value = prop_ran(n)
  count = 0

  while (i<n & count < n) {
    if (runif(1) <= (targ_pdf(prop_value[i]))/(env_const*prop_pdf(prop_value[i]))){
      accept = cbind(accept,prop_value[i])
      i = i+1
      count = count +1
    }else{
      prop_value = prop_ran(n)
      i = 1
    }
  }
  # 
  return(accept)
}
