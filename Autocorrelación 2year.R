install.packages("forecast")

library(ggplot2)
library(forecast)

# Cargar los datos
data <- data.frame(
  tiempo_t = 1:24,
  Yt = c(381250, 380985, 529674, 514467, 532220, 521450, 490847, 553045, 551769, 611675, 589864, 1012606, 
         1088679, 908717, 1290114, 1202458, 1242604, 1092346, 1120566, 1070400, 1060222, 1016328, 846024, 1112141)
)

# Crear la gráfica de autocorrelación
acf(data$Yt, main="Autocorrelación de Yt")
