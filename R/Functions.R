#' Function read.data is reading the dataset to be used in the analysis
#' @export 
read.data <- function(fileName) {
  h <- here::here()
  tweets <- file.path(h, "..","Resources", fileName)
  return(rgdal::readOGR(tweets))
}

#' Calculate local Moran's I
#' @export 
moranI <- function(fileName) {
  #return(spdep::localmoran(fileName, listw, zero.policy=NULL, na.action=na.fail, alternative = "greater", p.adjust.method="none", mlvar=TRUE, spChk=NULL))
}

#'Perform Getis-Ord
#' @export 
getisOrd <- function() {
  print("getis-ord comes here")
}

#'Perform K-means
#' @export 
Kmeans <- function() {
  print("kmeans result")
}

#'Main - run all the previous functions
#' @export 
main <- function() {
  tweets <- read.data("hurricane_harvey_tweets.gpkg")
  #moranI(tweets)
  #getisOrd(tweets)
}

