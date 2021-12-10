setwd("D:/Textbook/R Computing/Homework/Homework8/Adaptive Rejection Sampling Variant 1")
source("headers/header.R")

adaptive_rejection_sampling <- function(h,interval,x,...){
  #browser()
  # ...  reprents additional arguments to h other x, like mu,sigma
  # h(x,mu,sigma)
  f <- function(x,...){
    return(exp(h(x,...)))
  }
  # making an empty environment to keep the envelopes in 
  envelope_env = new.env()
  
  initialize_envelope_info(envelope_env,f,interval,x,...)
  # this function has no output 
  # just side effects updating the environment envelope_env 
  # mu and sigma are in the ... slot for this function 
  # they are the inputs to h in addition to x
  
  # getting a new point to demonstrate the updating function 
  x_new = rnorm(1)
  y_new = h(x_new,...)
  
  update_environment_info(envelope_env,f,x_new,y_new,...)
  envelope_env #-1.764012 21.056380
  x_val = upper_envelope_sample(envelope_env) 
  upper_y_val = upper_envelope_evaluate(x_val, envelope_env, log=TRUE) 
  lower_y_val = lower_envelope_evaluate(x_val, envelope_env, log=TRUE)

  return(c(lower_y_val, upper_y_val))
}
