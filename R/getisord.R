#'Perform Getis-Ord
#' @param tweets data to be analyzed
#' @importFrom spdep localG 
#' @export 
getisOrd <- function(tweets) {
  nb <- knn2nb(knearneigh(tweets))
  listw <- nb2listw(nb)
  
  return(spdep::localG(as.numeric(as.vector(tweets$tweet_id)), listw, zero.policy=NULL, spChk=NULL, return_internals=FALSE, GeoDa=FALSE))
}