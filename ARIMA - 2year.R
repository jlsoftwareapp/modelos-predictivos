library(ggplot2)
library(ggfortify)
library(dplyr)
library(forecast)

# Create the initial vector with the first set of numbers
solicitudes <- c(   381250 	,
                    380985 	,
                    529674 	,
                    514467 	,
                    532220 	,
                    521450 	,
                    490847 	,
                    553045 	,
                    551769 	,
                    611675 	,
                    589864 	,
                    1012606 	,
                    1088679 	,
                    908717 	,
                    1290114 	,
                    1202458 	,
                    1242604 	,
                    1092346 	,
                    1120566 	,
                    1070400 	,
                    1060222 	,
                    1016328 	,
                    846024 	,
                    1112141 	
)



# Print the combined vector to verify
print(solicitudes)


Y <- ts(solicitudes, start = c(2022,01), end= c(2023,12), frequency = 12)

autoplot(Y)



modelo_arima <- auto.arima(Y, d=1, D=1, stepwise= FALSE, approximation = FALSE, trace = TRUE)

print(modelo_arima)

#pronostico
fcst <- forecast(modelo_arima, h=12, level= c(10))
autoplot(fcst)+
  ggtitle("Pronostico")

print(fcst)
modelo_arima[["fitted"]]

