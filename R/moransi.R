#' Calculate local Moran's I
#' @param tweets SpatialPointsDataFrame containing tweets
#' @param distance distance metrics
#' @param d1 fixed distance minimum
#' @param d2 fixed distance maximum
#' @importFrom spdep localmoran 
#' @export 
moranI <- function(tweets, distance, d1, d2) {
  
  nb <- calc_weights(tweets, distance, d1, d2)
  listw <- nb2listw(nb)
  
  return(spdep::localmoran(as.numeric(as.vector(tweets$tweet_id)), listw, zero.policy=NULL, alternative = "greater", p.adjust.method="none", mlvar=TRUE, spChk=NULL))
}


