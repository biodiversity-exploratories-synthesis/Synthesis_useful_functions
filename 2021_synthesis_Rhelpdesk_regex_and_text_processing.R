######################################################
#                                                    #
# REGULAR EXPRESSIONS AND TEXT PROCESSING IN R       #
#                                                    #
######################################################
# Biodiversity Exploratories Synthesis R helpdesk
# Noëlle Schenk 05.02.2021
#
# this file contains examples and exercises for text processing and 
# regular expressions in R.

###
# RESOURCES
#
# stringr documentation https://www.rdocumentation.org/packages/stringr/versions/1.4.0
# regular expressions in R : https://stat.ethz.ch/R-manual/R-devel/library/base/html/regex.html
# R regex vignette tutorial : https://cran.r-project.org/web/packages/stringr/vignettes/regular-expressions.html
# Cheatsheet : https://rstudio.com/wp-content/uploads/2016/09/RegExCheatsheet.pdf
install.packages("stringr")
require(stringr)

###
# REGULAR EXPRESSIONS
x <- c("why", "video", "cross", "extra", "deal", "authority")
str_subset(x, "[aeiou]") # gives subset of matches
str_detect(x, "[aeiou]") # tells you if there’s any match to the pattern
str_count(x, "[aeiou]")  # counts number of matches per word


