# Séries temporais

# Carregando bibliotecas
library(forecast)

# Explorando
AirPassengers
View(AirPassengers)

# Verificando data de inicio e fim da série
start(AirPassengers)
end(AirPassengers)

# Gerando gráfico
plot(AirPassengers)

# Dados agregados
plot(aggregate(AirPassengers))

# Agregado por mês
monthplot(AirPassengers)

# Verificando determinado período
subst = window(AirPassengers, start = c(1960, 1), end = c(1960, 12))
subst

# Gráfico de subst
plot(subst)


# Decomposição
dec = decompose(AirPassengers)
dec

# Valores da decomposição
dec$seasonal
dec$trend
dec$random
dec$figure

# Gráfico da decomposição
plot(dec)


# Previsão | Forecast
# Calculando a média móvel
mediamovel = ma(AirPassengers, order = 12)
mediamovel

# Forecast
previsao = forecast(mediamovel, h = 12)
previsao

# Plotando a previsão 
plot(previsao)

#
arima = auto.arima(AirPassengers)
arima
previsao2 = forecast(arima, h = 12)
previsao2
plot(previsao2)
