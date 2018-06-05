#'Perform Getis-Ord
#' @param tweets data to be analyzed
#' @importFrom spdep localG 
#' @export 
getisOrd <- function(tweets, distance, d1,d2) {
  nb <- calc_weights(tweets, distance, d1, d2)
  listw <- nb2listw(nb)
  
  return(spdep::localG(as.numeric(as.vector(tweets$tweet_id)), listw, zero.policy=NULL, spChk=NULL, return_internals=FALSE, GeoDa=FALSE))
}