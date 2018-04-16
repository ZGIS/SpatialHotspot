#' Calculate local Moran's I
#' @param fileName name of the file
#' @importFrom spdep localmoran 
#' @export 
moranI <- function(fileName) {
  return(spdep::localmoran(fileName, listw, zero.policy=NULL, alternative = "greater", p.adjust.method="none", mlvar=TRUE, spChk=NULL))
}


