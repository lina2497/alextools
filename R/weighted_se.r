#Calculate weighted standard error
weighted_se <-
  function(x, w, na.rm = TRUE)
    sqrt(weighted_var(x, w, na.rm = TRUE) / length(x))
