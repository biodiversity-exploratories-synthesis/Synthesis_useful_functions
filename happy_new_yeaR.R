#####################################
#
# MERRY CHRISTMAS, DEAREST R GEEKS!
#
#####################################
# by noelle schenk, 06.12.22
#
# 2 Fireworks and text

if(as.POSIXct(Sys.Date()) - as.POSIXct(c("2022-12-24 00:00:01")) > -18){
  speed <- 2
  
  par(bg = 'black')
  x <- rnorm(40, mean = 0, sd = 1)
  y <- rnorm(40, mean = 0, sd = 1)
  plot(x, y, xlim = c(-4, 4), ylim = c(-4, 4), col = "red", pch = 8)
  Sys.sleep(speed)
  
  plot(x*2, y*2, xlim = c(-4, 4), ylim = c(-4, 4), col = "red", pch = 8)
  text(0, 0, "merry christmas!", col = "orange", cex = 2)
  Sys.sleep(speed)
  
  plot(x*4, y*4, xlim = c(-4, 4), ylim = c(-4, 4), col = "red", pch = 8)
  text(0, 0, "merry christmas!", col = "red", cex = 2)
  Sys.sleep(speed)
  
  plot(x*8, y*8, xlim = c(-4, 4), ylim = c(-4, 4), col = "red", pch = 8)
  a <- rnorm(40, mean = 0, sd = 1)
  b <- rnorm(40, mean = 0, sd = 1)
  points(a, b, col = "yellow", pch = 11)
  Sys.sleep(speed)
  
  plot(a*2, b*2, xlim = c(-4, 4), ylim = c(-4, 4), col = "yellow", pch = 11)
  points(x*10, y*10, xlim = c(-4, 4), ylim = c(-4, 4), col = "red", pch = 8)
  text(0, 0, "Happy new year!", col = "red", cex = 2)
  Sys.sleep(speed)
  
  plot(a*4, b*4, xlim = c(-4, 4), ylim = c(-4, 4), col = "yellow", pch = 11)
  text(0, 0, "Happy new year!", col = "violet", cex = 3)
  Sys.sleep(speed)
  
  plot(a*8, b*8, xlim = c(-4, 4), ylim = c(-4, 4), col = "yellow", pch = 11)
  text(0, 0, "Happy new year!", col = "blue", cex = 4)
  Sys.sleep(speed)
} else {
  par(bg = 'black')
  x <- rnorm(40, mean = 0, sd = 1)
  y <- rnorm(40, mean = 0, sd = 1)
  plot(x, y, xlim = c(-4, 4), ylim = c(-4, 4), col = "black", pch = 8)
  text(0, 0.5, "Sorry, it’s not christmas time yet!", col = "orange", cex = 1.5)
  Sys.sleep(speed)
  text(0, -0.5, "what about a synthesis project instead?", col = "green", cex = 1.5)
}









