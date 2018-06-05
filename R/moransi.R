#' Calculate local Moran's I
#' @param tweets SpatialPointsDataFrame containing tweets
#' @importFrom spdep localmoran 
#' @export 
moranI <- function(tweets, distance, d1, d2) {
  
  nb <- calc_weights(tweets, distance, d1, d2)
  listw <- nb2listw(nb)
  
  return(spdep::localmoran(as.numeric(as.vector(tweets$tweet_id)), listw, zero.policy=NULL, alternative = "greater", p.adjust.method="none", mlvar=TRUE, spChk=NULL))
}


