% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_increasing.R
\name{is_increasing}
\alias{is_increasing}
\title{Determine Whether a Vector is Increasing or Decreasing}
\usage{
is_increasing(vec, strictly = FALSE, na.rm = FALSE)
}
\arguments{
\item{vec}{A numerical vector.}

\item{strictly}{Does a difference of zero count as increasing/decreasing? By default, \code{c(1, 1, 2)} is increasing, with \code{strictly = TRUE} it is not.}

\item{na.rm}{A logical value indicating whether \code{NA} values should be stripped before the vector is determined to be increasing or decreasing.}
}
\value{
logical.
}
\description{
\code{is_increasing()} and \code{is_decreasing()} are trivial wrapper functions to enhance code readability. They determine whether a numerical vector is increasing or decreasing monotonically. \code{strictly} (default \code{FALSE}) excludes cases where the difference between consecutive elements is zero.
}
\examples{
is_increasing(c(1:10))
is_increasing(c(1, 2, 2, 2, 3), strictly = TRUE)
is_decreasing(c(3, 2, 2, 5, 3, 2, 1))
}
