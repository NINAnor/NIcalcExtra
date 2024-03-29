#' Sample function for Nature index distributions
#'
#' This is a simple convenience function to draw samples from object made from NIdistributions
#'
#' @name sampleDistribution
#' @author  Jens Åström
#' @param dist object of class `NIdistribution` created by \code{makeDistribution}
#' @param nSamples Number of samples to draw. Integer.
#' @return Vector of samples
#' @export
#' @examples
#' myDist <- makeDistribution(input = "Normal", distParams = list("mean" = 1, "sd" = 0.2))
#' sampleNIDistribution(myDist, 10)
#'
#'
#'
#' @seealso \code{\link{makeDistribution}}


sampleDistribution <- function(dist, nSamples = 10){
  out <- distr::r(dist)(nSamples)
  return(out)
}

