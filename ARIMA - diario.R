library(ggplot2)
library(ggfortify)
library(dplyr)
library(forecast)

# Create the initial vector with the first set of numbers
solicitudes <- c(   28663	,
                    45866	,
                    39666	,
                    31351	,
                    23146	,
                    50182	,
                    44960	,
                    41950	,
                    41267	,
                    50326	,
                    34008	,
                    30696	,
                    52884	,
                    43638	,
                    43593	,
                    42425	,
                    40685	,
                    32398	,
                    29707	,
                    58064	,
                    49457	,
                    39445	,
                    42188	,
                    46635	,
                    30360	,
                    28473	,
                    55551	,
                    42230	,
                    41807	,
                    39840	,
                    48190	
)



# Print the combined vector to verify
print(solicitudes)


Y <- ts(solicitudes, start = c(1,1), frequency =7)

autoplot(Y)



modelo_arima <- auto.arima(Y, d=1, D=1, stepwise= FALSE, approximation = FALSE, trace = TRUE)

print(modelo_arima)

#pronostico
fcst <- forecast(modelo_arima, h=28, level= c(10))
autoplot(fcst)+
  ggtitle("Pronostico")

print(fcst)
autoplot(modelo_arima[["fitted"]])

modelo_arima[["fitted"]]

