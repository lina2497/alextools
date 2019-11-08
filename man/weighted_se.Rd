\name{weighted_se}
\alias{weighted_se}
\title{Calculate weighted standard error}
\usage{
  weighted_se(x, w, na.rm = TRUE)
}
\description{
  Calculates the standard error of numeric vector x, using numeric vector of equal length y as weights.
}
\examples{
  weighted_se(1:10, 1:10)
}
\arguments{
    \item{x}{Numeric vector of raw data.}
    \item{w}{Numeric vector of weights.}
    \item{na.rm}{Logical indicating whether or not to remove NA.}
}
