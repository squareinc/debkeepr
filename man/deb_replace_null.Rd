% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lsd-utils.R
\name{deb_replace_null}
\alias{deb_replace_null}
\title{Replace NULL elements in an lsd object}
\usage{
deb_replace_null(lsd, replace = c(0, 0, 0))
}
\arguments{
\item{lsd}{An object of class lsd or a list of numeric vectors of length 3
that can be coerced to an lsd object.}

\item{replace}{A numeric vector of length 3. Default is \code{c(0, 0, 0)}, which
replaces NULL with a value of 0.}
}
\value{
Returns an object of class lsd with \code{NULL} elements replaced.
}
\description{
Replace NULL elements in an lsd object with a numeric vector.
}
\details{
Note that \code{NULL} elements in an lsd object print as NA due to the printing
method for lsd objects. \code{NULL} elements can be confirmed with \code{str()}. If
\code{c(NA, NA, NA)} is used for \code{replace} argument, the \code{NA} vector will be
coerced to numeric.
}
\examples{
# Create lsd object with NULL elements
lsd <- deb_as_lsd(list(c(15, 4, 6),
                       NULL,
                       c(9, 12, 3),
                       NULL))
str(lsd)

# Replace with default lsd value of 0
deb_replace_null(lsd = lsd)

# Replace NULL with NA
str(deb_replace_null(lsd = lsd, replace = c(NA, NA, NA)))

}
