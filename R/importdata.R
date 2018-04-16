#' Function read.data is reading the dataset to be used in the analysis
#' @param fileName name of the file
#' @importFrom rgdal readOGR
#' @export 
read.data <- function(fileName) {
  h <- here::here()
  tweets <- file.path(h, "..","Resources", fileName)
  return(rgdal::readOGR(tweets))
}



