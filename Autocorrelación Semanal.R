install.packages("forecast")

library(ggplot2)
library(forecast)

tiempo <- 1:24
Yt <- c(215667, 213914, 223629, 286988, 274317, 248520, 219651, 258098, 268285, 265752, 
        271155, 265898, 223279, 275324, 285596, 287155, 353242, 302783, 258533, 310909, 
        307324, 300961, 287677, 284325)

acf(Yt, main="Gráfica de Autocorrelación de Yt")
