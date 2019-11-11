\name{error_proof}
\alias{error_proof}
\title{Error proof functions}
\usage{
  error_proof(x, return_na = FALSE)
}
\description{
  Wrapper using tryCatch which you can wrap a call to any function in and should the function fail it will return NA or NULL and print the error to the console. Useful when running functions in loops or lapply as an error won't break your loop.
}
\examples{
  error_proof(mean(a),return_na = TRUE)
}
\arguments{
    \item{x}{Functions you want to protect}
    \item{return_na}{Logical indicating if the user would like NA or Null to be returned}

}
