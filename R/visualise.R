#'Visualise - create map USA
#' @param referencedregion area of interest
#' @import ggplot2 
#' @export 
#' 
visualise <- function(referencedregion) {

  world_map <- ggplot2::map_data(referencedregion)
  p <- ggplot2::ggplot() + ggplot2::coord_fixed() + ggplot2::xlab("") + ggplot2::ylab("")
  
  #Add map to base plot
  base_world_messy <- p + ggplot2::geom_polygon(data=world_map, ggplot2::aes(x=long, y=lat, group=group), 
                                       colour="light green", fill="light green")
  
  cleanup <- ggplot2::theme(panel.grid.major = ggplot2::element_blank(), panel.grid.minor = ggplot2::element_blank(), 
          panel.background = ggplot2::element_rect(fill = 'white', colour = 'white'), 
          axis.line = ggplot2::element_line(colour = "white"), legend.position="none",
          axis.ticks=ggplot2::element_blank(), axis.text.x=ggplot2::element_blank(),
          axis.text.y=ggplot2::element_blank())
  
  base_world <- base_world_messy + cleanup
  
  base_world
}