% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vap.R
\name{vap}
\alias{vap}
\alias{vap_dbl}
\alias{vap_chr}
\alias{vap_lgl}
\alias{vap_int}
\title{vap: Vector apply functions}
\usage{
vap_dbl(.data, .f, ...)

vap_chr(.data, .f, ...)

vap_lgl(.data, .f, ...)

vap_int(.data, .f, ...)
}
\arguments{
\item{.data}{Input object–numeric, character, list, data frame, etc.–over
which elements will be iterated. If matrix or data frame, each
column will be treated as an element.}

\item{.f}{Action to apply to each element of \code{.data}. The action can be
  articulated in one of the four following ways:
\enumerate{
\item supplying a function object (e.g., \code{mean})
\item defining a function (in-line; e.g., \code{function(x) mean(x)})
\item specifying a formula-like call where '.x' is assumed to be the iterated
  over element of \code{.data} (e.g., \code{~ mean(.x)})
\item providing a name or position of \code{.data} to return (e.g.,
  \code{1}, \code{"varname"}, etc.)
}}

\item{...}{Other values passed to function call.}
}
\value{
A double vector

A character vector

A logical vector

An integer vector
}
\description{
Functions that apply expressions to input objects and return atomic vectors
e.g., numeric (double), integer, character, logical.

vap_dbl: Iterate over input and return double(s)

vap_chr: Iterate over input and return character(s)

vap_lgl: Iterate over input and return logical(s)

vap_int: Iterate over input and return integer(s)
}
\examples{

## character
vap_chr(letters, ~ paste0(.x, "."))

## double
vap_dbl(rnorm(4), round, 3)

## logical
vap_lgl(letters, ~ .x \%in\% c("a", "e", "i", "o", "u"))

## integer
vap_int(as.data.frame(replicate(10, sample(1:10))), 8)

}
\seealso{
\code{\link{lap}}  \code{\link{dap}}

Other vap: \code{\link{vapc}}, \code{\link{vapr}}
}
\concept{vap}
