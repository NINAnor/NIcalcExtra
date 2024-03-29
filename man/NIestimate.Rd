% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NIestimate.R
\name{NIestimate}
\alias{NIestimate}
\title{Point Estimates and Confidence Intervals of NI}
\usage{
NIestimate(NI = matrix(1, nrow = 1, ncol = 100), kvantiler = c(0.025,
  0.5, 0.975))
}
\arguments{
\item{NI}{double matrix,    dim = (N.kom or N.reg) x \code{nsim} matrix of NI draws calculated by \code{NIcalculate}}

\item{kvantiler}{double, length = 3, Quantiles used as basis for point estimate and limits of confidence interval. Default is c(0.025,0.5,0.975)}
}
\value{
\code{NIest}, double matrix	dim=(N.kom or N.reg) x 3 	matrix of NI estimates
}
\description{
Function for calculating point estimates of the Nature Index together with confidence intervals for a set of
N.reg basic spatial units or aggregated NI-areas from a N.reg x nsim matrix of nsim simulations of NI for each area.
}
\section{Notes}{
 As default, \code{NIestimate} returns the median simulated value as the point estimate and the 0.025- and 0.975-
quantiles as limits for the confidence interval.
}

\examples{
NIestimate(NI=matrix(1,nrow=1,ncol=100),kvantiler=c(0.025,0.5,0.975))

}
\seealso{
\code{\link{NIcalculate}}
}
\author{
Bård Pedersen
}
