#' Add Region code to dataset based on plot name
#
#' This function adds the Biodiversity Exploratories region code (ALB, SCH, HAI) to a dataset
#' that contains a column with the Exploratories plot names.
#' Note that the function currently only works with sortable plot names (e.g. "AEG01"), but not
#' with Bexis plot names (e.g. "AEG1"). I will update it soon! In the meantime, please use the 
#' function BEplotZeros.R to add a column with sortable plot names.
#'
#' @dat a dataset (data.frame) with at least one column with Bexis plot names (e.g. "AEG01)
#' @column the column name of the column containing the Bexis plot names with zeros (e.g. "AEG01)
#' @regionam the desired name for the region code. Default is "Explo"
#' @return the same dataset with an extra column containing the region code (ALB, SCH, HAI)
#' @author Caterina Penone
#' 
#' @examples
#' #create a dataset with a plot name column
#' dat <- data.frame(Plot_name = c("AEG01", "AEG02", "HEW04", "SEG08", "SEW10"), Values=1:5)
#' dat <- BEaddRegion(dat, "Plot_name", regionam = "Explo")
#' 
#' @export
BEaddRegion <- function (dat, column, regionam="Explo"){
  dat <- as.data.frame(dat)
  plots<-data.frame(plotID=c(paste("AEW",formatC(1:50, width=2, flag="0"),sep=""),
                             paste("AEG",formatC(1:50, width=2, flag="0"),sep=""),
                             paste("SEW",formatC(1:50, width=2, flag="0"),sep=""),
                             paste("SEG",formatC(1:50, width=2, flag="0"),sep=""),
                             paste("HEW",formatC(1:50, width=2, flag="0"),sep=""),
                             paste("HEG",formatC(1:50, width=2, flag="0"),sep="")),
                    Explo=c(rep("ALB",100),rep("SCH",100),rep("HAI",100)))
  names(plots)[2] <- regionam
  dat<-merge(dat, plots, by.x=column, by.y="plotID", all.x=T, all.y=F)
  return(dat)
}
