#'Main - run all the previous functions
#' @importFrom SpatialHotspot read.data
#' @export 
main <- function() {
  tweets <- read.data("hurricane_harvey_tweets.gpkg")
  #moranI(tweets)
  #getisOrd(tweets)
}