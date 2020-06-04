#' not_in
#'
#' @description Checks for where x is not in y. The opposite of the base %in% function.
#'
#' @param x A vector.
#' @param y A comparison vector.
#'
#' @return A logical vector of equal length to x indicating which elements of x are not located in y.
#' @export
#'
not_in <- function(x, y) {
  !('%in%'(x, y))
}
