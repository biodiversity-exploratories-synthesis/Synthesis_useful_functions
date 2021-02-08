####################################
#                                  #
# GOOD PROGRAMMING PRACTICES       #
#                                  #
####################################
# Biodiversity Exploratories Synthesis R helpdesk
# Noëlle Schenk 05.02.2021
#
# this file contains examples of practices to improve the
# readability of your code.

###
# EXAMPLE 1 - KEEP IT SIMPLE!
#
# bad example : all in one line
info_data <- data.table::fread(paste(pathtodata, "/data_assembly/helper_data/info_data.csv", sep = ""), header=T)
#
# good example : use many lines
info_data <- data.table::fread(
  paste(pathtodata, 
        "/data_assembly/helper_data/info_data.csv", 
        sep = ""), 
  header=T)


###
# EXAMPLE 2 - COMMENT YOUR CODE
#
# Bad example : comment the obvious
# read table example.csv
info_data <- data.table::fread("example.csv", header = T)
#
# Good example : comment the unexpected
# use package data.table to read in very large table "example.csv"
info_data <- data.table::fread("example.csv", header = T)


