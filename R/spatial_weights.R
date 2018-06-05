#' Calculate spatial weights for points&/polygons
#' @param tweets SpatialPointsDataFrame containing tweets
#' @importFrom spdep localmoran 
#' @export 
calc_weights <- function(tweets, distance, d1,d2) {
  
  if(strcmp(distance, "fixed")){
    nb <- dnearneigh(coordinates(tweets), d1, d2)
  } else if(strcmp(distance, "knn")){
    nb <- knn2nb(knearneigh(tweets))
  }
  return(nb)
}







