% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/areaweights.R
\name{areaweights}
\alias{areaweights}
\title{Weighting for areas}
\usage{
areaweights(Municipalities = as.character(1:10),
  Regions = as.character(rep(1:5, 2)), Area.municipality = runif(10),
  Indicators = c("ind1", "ind2"))
}
\arguments{
\item{Municipalities}{character        length=length(Municipality)    vector of names of basic spatial units}

\item{Regions}{character        length=length(Municipality)    vector of names of aggregated spatial units that the corresponding municipality is a part of.}

\item{Area.municipality}{double        length=length(Municipality)    vector of relevant basic spatial unit areas}

\item{Indicators}{character        length=length(Indicators)    vector of the names of all indicators included in the calculation}
}
\value{
Weights.reg.area	double array	dim=length(Municipality) x length(Indicators) x length(unique(Regions)) array of area weights.
}
\description{
Function that calculates relevant area weights (Wk) for chosen spatial resolution of the NI output.
I.e. areaweights.fct calculates Wk for a set of aggregated, nonoverlapping, spatial units each
consisting of one to many basic spatial units (municipalities).
}
\details{
In the Norwegian implementation Wks are weights based on the area the major habitat in question covers
in each basic spatial unit. An alternative is to use the total area of the spatial unit, etc.
Wk is the relevant municipality area divided by the corresponding total area of the aggregate.
Municipalities outside the aggregate receive weights equal zero
Area weights are relevant when NI is calculated for aggregates of basic spatial units.

The weights are stored in a three-dimensional array to be included in the calculation of the nature index in
a subsequent call to NIcalculation.fct.
In the array weights are repeated for each indicator included in the current calculation of NI.
}
\section{Notes}{

}

\examples{
\dontrun{
##Add example, here, possibly as a don't run
tt <- areaweights.fct(Municipalities=as.character(1:10),
Regions=as.character(rep(1:5,2)),
Area.municipality=runif(10),
Indicators=c("ind1","ind2"))
}

}
\author{
Bård Pedersen
}
