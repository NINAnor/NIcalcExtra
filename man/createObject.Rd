% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createObject.R
\name{createObject}
\alias{createObject}
\title{Create an custom object}
\usage{
createObject(N = 100, mean = 1, sd = 1)
}
\arguments{
\item{N}{Number of random numbers to generate. Integer value.}

\item{mean}{Mean of random numbers.}

\item{sd}{Standard deviation of the draws.}
}
\value{
List containing
\itemize{
 \item{"RandomNumbers": The random numbers}
 \item{"TableOfNumbers": A table of the counts of individual numbers}
}
}
\description{
Test function to create new object of a custom class, which will have its own method functions.
}
\details{
This simple example will generate random numbers from a normal distribution, and produce a list with those numbers, and the bins
(the result of the table function). It will assign this list a particular class, to which we can develop specific methods. This will
probably be used a lot in the package.
}
\examples{
add(1, 1)
add(13, 1)
}
