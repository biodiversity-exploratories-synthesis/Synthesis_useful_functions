#' Create Vector of Exploratories plot names with or without zeros
#'
#' This function creates a vector of all Forest and/or Grassland plot names, with
#' leading zeroes (sortable) or without.
#'
#' @habitat is either "W" for forest, "G" for grassland or c("W", "G") for all
#' @sortable is T or F, with T being default. T pads with 0, F does not (see examples below)
#' @return a vector of Exploratories plot names
#' @author Noelle Schenk
#' 
#' @examples
#' # sortable is T by default
#' BEcreateBEplotnames(habitat = c("W", "G"))
#' BEcreateBEplotnames(habitat = c("G"), sortable = F)
#' BEcreateBEplotnames(habitat = c("W"), sortable = T)
#' # argument habitat needs to be specified
#' BEcreateBEplotnames(sortable = T)
#' 
#' @export
BEcreateBEplotnames <- function(habitat, sortable = T){
  if(length(habitat) == 0){
    stop("argument 'habitat' is missing, with no default. Please specify habitat.")
  }
  EPchar <- rep(as.vector(outer(c("AE", "HE", "SE"), habitat, paste, sep="")), each = 50) # all characters
  if(sortable){
    EPnames <- paste(EPchar, rep(sprintf("%02d", seq(1, 50)), 3), sep = "")
  } else if(!sortable){
    EPnames <- paste(EPchar, rep(seq(1, 50), 3), sep = "")
  }
  return(EPnames)
}
