install.packages("forecast")

library(ggplot2)
library(forecast)

tiempo <- 1:31
Yt <- c(28663, 45866, 39666, 31351, 23146, 50182, 44960, 41950, 41267, 50326, 
        34008, 30696, 52884, 43638, 43593, 42425, 40685, 32398, 29707, 58064, 
        49457, 39445, 42188, 46635, 30360, 28473, 55551, 42230, 41807, 39840, 
        48190)

# Paso 2: Generar la gráfica de autocorrelación
acf(Yt, main="Gráfica de Autocorrelación de Yt")
