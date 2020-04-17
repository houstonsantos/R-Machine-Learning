# Regressão Linear Simples

# Analisando base
colnames(mtcars)
dim(cars)
head(cars)

# Calculando correlação
cor(cars)

# Crinado modelo de regreção
modelo = lm(speed ~ dist, data = cars)
modelo

# Coeficiente de determinação
summary(modelo)$r.squared

# Coeficiente de determinação ajustado
summary(modelo)$adj.r.squared

# Plotando o gráfico do modelo
plot(modelo)
plot(speed ~ dist, data = cars)
abline(modelo)

# Realizando a previsão
modelo$coefficients[1] + (modelo$coefficients[2] * 22)
predict(modelo, data.frame(dist = 22))


# Regressão Linear Simples
# Analisando base
colnames(mtcars)
dim(mtcars)
head(cars)

# Calculando correlação
cor(mtcars[1:4])

# Criando modelo de regressão
modelo = lm(mpg ~ disp, data = mtcars)
modelo

# Coeficiente de determinação
summary(modelo)$r.squared

# Coeficiente de determinação ajustado
summary(modelo)$adj.r.squared

# Plotando o gráfico do modelo
plot(modelo)
plot(mpg ~ disp, data = mtcars)
abline(modelo)

# Realizando a previsão
modelo$coefficients[1] + (modelo$coefficients[2] * 200)
predict(modelo, data.frame(disp = 200))
