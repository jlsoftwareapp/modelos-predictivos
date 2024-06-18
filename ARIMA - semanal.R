library(ggplot2)
library(ggfortify)
library(dplyr)
library(forecast)

# Create the initial vector with the first set of numbers
solicitudes <- c(   215667	,
                    213914	,
                    223629	,
                    286988	,
                    274317	,
                    248520	,
                    219651	,
                    258098	,
                    268285	,
                    265752	,
                    271155	,
                    265898	,
                    223279	,
                    275324	,
                    285596	,
                    287155	,
                    353242	,
                    302783	,
                    258533	,
                    310909	,
                    307324	,
                    300961	,
                    287677	,
                    284325	
)



# Print the combined vector to verify
print(solicitudes)


Y <- ts(solicitudes, start = c(1), frequency =6)

autoplot(Y)



modelo_arima <- auto.arima(Y, d=1, D=1, stepwise= FALSE, approximation = FALSE, trace = TRUE)

print(modelo_arima)

#pronostico
fcst <- forecast(modelo_arima, h=12, level= c(10))
autoplot(fcst)+
  ggtitle("Pronostico")

print(fcst)
autoplot(modelo_arima[["fitted"]])

modelo_arima[["fitted"]]

