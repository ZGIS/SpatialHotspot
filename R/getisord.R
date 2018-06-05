#'Perform Getis-Ord
#' @param x data to be analyzed
#' @importFrom spdep localG 
#' @export 
getisOrd <- function(x) {
  return(spdep::localG(x, listw, zero.policy=NULL, spChk=NULL, return_internals=FALSE, GeoDa=FALSE))
}