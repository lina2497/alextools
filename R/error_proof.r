#' error_proof
#'
#' @description This code allows you to run code safely within a loop or vectorised
#' without errors breaking the operation. Should an error occur, the error message will be
#' printed to the console and NA returned.
#'
#' @param x The function/code chunk you which to safely run
#' @param return_na Logical indicating whether ot not to return NA upon error.
#'
#' @return The output of the code chunk if successful, or NA if an error occurs.
#' @export
#'

error_proof <- function(x, return_na = FALSE){
  tryCatch(
    x,
    error = function(e) {cat("ERROR :", conditionMessage(e), "\n")
      if(return_na){return(NA)}
      }
    )
}
