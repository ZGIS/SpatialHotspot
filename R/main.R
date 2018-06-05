#'Main - run all the previous functions
#' @export 
main <- function() {
  tweets <- read.data("hurricane_harvey_tweets.gpkg")
  tweets <- tweets[1:1000,]
  zmoran <- moranI(tweets, "fixed", 0, 100)
  zgetis <- getisOrd(tweets, "fixed", 0, 100)
  visualise("usa")
}