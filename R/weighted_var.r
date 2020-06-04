#' @title weighted_var
#' @description Calculate weighted variance of x using weights w.
#' @param x A numeric vector.
#' @param w A numeric vector to weight x by.
#' @param na.rm Logical indicating whether to ignore NAs.
#'
#' @return The weighted variance of x.
#' @export
#'
weighted_var <- function(x, w = NULL, na.rm = FALSE) {
  if (na.rm) {
    na <- is.na(x) | is.na(w)
    x <- x[!na]
    w <- w[!na]
  }

  sum(w * (x - stats::weighted.mean(x, w)) ^ 2) / (sum(w) - 1)
}
