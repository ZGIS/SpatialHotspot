#' Calculate local Moran's I
#' @param tweets SpatialPointsDataFrame containing tweets
#' @importFrom spdep localmoran 
#' @export 
moranI <- function(tweets) {
  
  nb <- knn2nb(knearneigh(tweets))
  listw <- nb2listw(nb)
  
  return(spdep::localmoran(as.numeric(as.vector(tweets$tweet_id)), listw, zero.policy=NULL, alternative = "greater", p.adjust.method="none", mlvar=TRUE, spChk=NULL))
}


