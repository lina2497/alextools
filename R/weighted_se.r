
#' @title weighted_se
#' @description Calculate weighted standard error of x using weights w.
#' @param x A numeric vector
#' @param w A numeric vector of weights
#' @param na.rm Logical indicating wheter NA's should be removed.
#'
#' @return The weighted standard error of x.
#' @export
#'

weighted_se <-
  function(x, w, na.rm = TRUE) {
    sqrt(weighted_var(x, w, na.rm = TRUE) / length(x))
  }
