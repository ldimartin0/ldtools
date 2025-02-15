% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_lm.R
\name{geom_lm}
\alias{geom_lm}
\title{A Convenient \code{ggplot2} Function for Linear Regression Plotting}
\usage{
geom_lm(method = "lm", se = FALSE, formula = y ~ x, ...)
}
\arguments{
\item{method}{Smoothing method (function) to use, accepts either
\code{NULL} or a character vector, e.g. \code{"lm"}, \code{"glm"}, \code{"gam"}, \code{"loess"}
or a function, e.g. \code{MASS::rlm} or \code{mgcv::gam}, \code{stats::lm}, or \code{stats::loess}.
\code{"auto"} is also accepted for backwards compatibility.  It is equivalent to
\code{NULL}.

For \code{method = NULL} the smoothing method is chosen based on the
size of the largest group (across all panels). \code{\link[stats:loess]{stats::loess()}} is
used for less than 1,000 observations; otherwise \code{\link[mgcv:gam]{mgcv::gam()}} is
used with \code{formula = y ~ s(x, bs = "cs")} with \code{method = "REML"}. Somewhat anecdotally,
\code{loess} gives a better appearance, but is \eqn{O(N^{2})}{O(N^2)} in memory,
so does not work for larger datasets.

If you have fewer than 1,000 observations but want to use the same \code{gam()}
model that \code{method = NULL} would use, then set
\verb{method = "gam", formula = y ~ s(x, bs = "cs")}.}

\item{se}{Display confidence interval around smooth? (\code{TRUE} by default, see
\code{level} to control.)}

\item{formula}{Formula to use in smoothing function, eg. \code{y ~ x},
\code{y ~ poly(x, 2)}, \code{y ~ log(x)}. \code{NULL} by default, in which case
\code{method = NULL} implies \code{formula = y ~ x} when there are fewer than 1,000
observations and \code{formula = y ~ s(x, bs = "cs")} otherwise.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}
}
\description{
This function is an exact duplication of \code{ggplot2::geom_smooth()} with defaults more appropriate for statistics and econometrics. By default, \code{geom_lm()} plots with \code{method = "lm"} for a linear trend line and with \code{se = FALSE} because plotting standard errors around a linear trend confuses the viewer more than it demonstrates statistical uncertainty.
}
\examples{
ggplot(mpg, aes(displ, hwy)) +
  ggplot2::geom_point() +
  geom_lm()
}
