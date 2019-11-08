#calculate weighted variance
weighted_var <- function(x, w = NULL, na.rm = FALSE) {
  if (na.rm) {
    na <- is.na(x) | is.na(w)
    x <- x[!na]
    w <- w[!na]
  }

  sum(w * (x - stats::weighted.mean(x, w)) ^ 2) / (sum(w) - 1)
}
