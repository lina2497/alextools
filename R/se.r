#' @title se
#'
#' @param x A numeric vector
#' @param na_rm Logical indicating whether to ignore NAs
#'
#' @return The standard error of x
#' @export
#'
se <- compiler::cmpfun(function(x, na_rm = TRUE){
  sqrt(stats::var(x, na.rm = na_rm) / length(x))})
