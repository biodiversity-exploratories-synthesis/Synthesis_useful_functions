#' Add habitat type (forest/grassland) code to dataset based on plot name
#
#' This function adds the Biodiversity Exploratories habitat type (forest/grassland) to a dataset
#' that contains a column with the Exploratories plot names.
#'
#' @dat a dataset (data.frame) with at least one column with Bexis plot names (e.g. "AEG01)
#' @column the column name of the column containing plot names with zeros (e.g. "AEG01"), 
#' or without zeros (e.g. "AEG1")
#' @habitatname the desired name for the habitat. Default is "Habitat"
#' @return the same dataset with an extra column containing the habitat type (ALB, SCH, HAI)
#' @author Caterina Penone
#' 
#' @examples
#' #create a dataset with a plot name column (with or without zeros)
#' dat <- data.frame(Plot_name = c("AEG01", "AEG02", "HEW04", "SEG8", "SEW10"), Values=1:5)
#' dat <- BEaddHabitat(dat, "Plot_name", habitatname = "Habitat")
#' 
#' @export
BEaddHabitat <- function (dat, column, habitatname="Habitat"){
  dat <- as.data.frame(dat)
  funz <- function(x) ifelse(grepl(pattern="W",x), "forest", "grassland")
  dat[,habitatname] <- sapply(dat[,column],funz)
  
  return(dat)
}