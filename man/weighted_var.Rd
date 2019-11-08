\name{weighted_var}
\alias{weighted_var}
\title{Calculate weighted variance}
\usage{
  weighted_var(x, w, na.rm = FALSE)
}
\description{
  Calculates the variance of numeric vector x, using numeric vector of equal length y as weights.
}
\examples{
  weighted_var(1:10, 1:10)
}
\arguments{
    \item{x}{Numeric vector of raw data.}
    \item{w}{Numeric vector of weights.}
    \item{na.rm}{Logical indicating whether or not to remove NA.}
}
