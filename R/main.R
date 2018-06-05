#'Main - run all the previous functions
#' @export 
main <- function() {
  tweets <- read.data("hurricane_harvey_tweets.gpkg")
  tweets <- tweets[1:1000,]
  zmoran <- moranI(tweets)
  zgetis <- getisOrd(tweets)
  visualise("usa")
}