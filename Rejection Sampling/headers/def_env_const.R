def_env_const = function(targ_pdf,prop_pdf){
  # define f which has one x
  f <- function(x){
    if (targ_pdf(x) < .Machine$double.eps){
      return(0) 
    }
    else{
      return(targ_pdf(x)/prop_pdf(x))
    }
  }
  # call optimize
  opt = optimize(f,interval=c(-1,1)*10,maximum = TRUE,tol=.Machine$double.eps^0.5)
  # 
  return(opt$objective)
}

