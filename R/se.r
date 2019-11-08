#Standard error function
se <- compiler::cmpfun(function(x)
  sqrt(stats::var(x, na.rm = T) / length(x)))
