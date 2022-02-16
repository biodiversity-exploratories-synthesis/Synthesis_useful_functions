#' Change Exploratories plot names with zeros to plot names without zeros
#
#' This function adds the original Bexis plot names (non sortable) to an existing dataset.
#' Based on a column with sortable plot names (e.g. AEG01), the function creates a column
#' with Bexis plot names (e.g. AEG1). 
#' Note: this function does the opposite of the "BEplotZeros.R" function
#'
#' @dat a dataset (data.frame) with at least one column with sortable plot names (e.g. "AEG01)
#' @column the column name of the column containing the sortable plot names
#' @plotnam the desired name of the new column with Bexis plot names. Default is "PlotNonSTD"
#' @return the same dataset with an extra column containing the Bexis plot names (e.g. "AEG1)
#' @author Caterina Penone
#' 
#' @examples
#' #create a dataset with a Bexis plot name column
#' dat <- data.frame(Bexis_plot_name = c("AEG01", "AEG02", "HEW04", "SEG08", "SEW10"), Values=1:5) 
#' dat <- BEplotNonZeros(dat, "Bexis_plot_name", plotnam = "New_plot_name")
#' 
#' @export
BEplotNonZeros <- function (dat, column, plotnam="PlotNonSTD"){
  dat <- as.data.frame(dat)
  funz <- function(x) ifelse((substr(x,4,4)==0), gsub("0", "", x),as.character(x))
  dat[,plotnam] <- sapply(dat[,column],funz)
  
  return(dat)
}
