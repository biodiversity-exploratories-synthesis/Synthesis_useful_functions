#' Head in 2 Dimensions
#
#' This functions prints the head in 2 dimensions to the console, meaning the first 10 rows
#' and the first 10 columns. 
#' This is especially useful for datasets with many columns.
#'
#' @x a dataset (data.frame or matrix) with at least 10 columns and 10 rows
#' @return the first 10 rows and 10 columns of a dataset
#' @author Noëlle Schenk
#' @param len number of columns and rows to print out, default is 10.
#' 
#' @examples
#' # create a data.frame with many rows and many columns
#' dat <- cbind(data.frame(Plot_name = paste(c("AEG", "HEG", "SEG"), seq(1, 50), sep= "")),
#'     data.frame(matrix(0, nrow = 150, ncol = 50, dimnames = list(NULL, paste("Species", seq(1, 50), sep = "_")))))
#' head(dat) # messy output with head
#' head2D(dat) # clear output, only first 10 rows and columns
#' 
#' @export
head2D <- function(x, len=10){
  # print head in 2 dimenaions
  print(x[1:len,1:len])
}
NULL