error_proof <- function(x, return_na = FALSE){
  tryCatch(
    x,
    error = function(e) {cat("ERROR :", conditionMessage(e), "\n")
      if(return_na){return(NA)}
      }
    )
}
