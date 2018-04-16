### Defining functions 

## Function read.data is reading the dataset to be used in the analysis
read.data <- function() {
  h <- here::here()
  tweets <- file.path(h, "..","tweetdata", "file.csv")
  return(rgdal::readOGR(tweets))
}

## Calculate local Moran's I
moranI <- function() {
  return(spdep::localmoran(tweets, listw, zero.policy=NULL, na.action=na.fail, 
                           alternative = "greater", p.adjust.method="none", mlvar=TRUE,
                           spChk=NULL))
}



