install.packages("forecast")

library(ggplot2)
library(forecast)

# Vector de datos
Yt <- c(1242604, 1092346, 1120566, 1070400, 1060222, 1016328, 846024, 1112141, 1182609, 1079202, 1305043, 1313547)

# Generar la gráfica de autocorrelación
acf(Yt, main="Gráfica de Autocorrelación de Yt", xlab="Lag", ylab="ACF")