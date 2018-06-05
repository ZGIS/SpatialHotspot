#'Perform Getis-Ord
#' @param x data to be analyzed
#' @importFrom spdep localG 
#' @export 
getisOrd <- function(x) {
  nb <- knn2nb(knearneigh(x))
  listw <- nb2listw(nb)
  
  return(spdep::localG(as.numeric(as.vector(x$tweet_id)), listw, zero.policy=NULL, spChk=NULL, return_internals=FALSE, GeoDa=FALSE))
}