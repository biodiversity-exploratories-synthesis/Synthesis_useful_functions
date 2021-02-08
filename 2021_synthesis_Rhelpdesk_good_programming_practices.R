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


###
# EXAMPLE 6 - PLAN YOUR PROGRAM
#
# Describe your problem and the steps you need to do to solve it.
# Example problem : Plot a normal distribution with mean = 0 and sd = 1.
# Example planning : 
#    - generate a normally distributed dataset with mean = 0 and sd = 1
#        - search internet which function can generate normally distributed data
#        - look up help of this function in R
#        - try out function
#        - make vector x with normally distributed data
#    - make the plot
#        - search internet which function to use for plotting
#        - make title and axis labels

help(rnorm)
rnorm(4, mean = 0, sd = 1)
x <- rnorm(40, mean = 0, sd = 1) # first parameter : length of vector
plot(x)
# plot() just shows the data.points. Maybe a Histogram would fit better?
#TODO plot histogram. 


###
# EXAMPLE 9 - USE A CODE STYLE
#
# examples taken from tidyverse code style 
# http://adv-r.had.co.nz/Style.html and https://style.tidyverse.org/syntax.html#long-lines

# Good
average <- mean(feet / 12 + inches, na.rm = TRUE)
# Bad
average<-mean(feet/12+inches,na.rm=TRUE)

# Good
do_something_very_complicated(
  something = "that",
  requires = many,
  arguments = "some of which may be long"
)
# Bad
do_something_very_complicated("that", requires, many, arguments,
                              "some of which may be long"
)



###
# NAMING THINGS
#
# good names reduce comments
60 <- time_tolerance # seconds
60 <- time_tolerance_in_seconds


###
# READ ERROR MESSAGES
#
# read the error messages
x <- as.factor("A", "B", "C")
help("as.factor")
# the function encodes a vector, I gave the elements of a vector,
#    not the vector itself.
x <- as.factor(c("A", "B", "C"))
