# Regressão Linear Multipla

# Analisando base
colnames(mtcars)
dim(mtcars)
head(mtcars)

# Calculando correlação
cor(mtcars[1:4])

# Criando modelo de regressão
modelo = lm(mpg ~ disp + hp + cyl, data = mtcars)
modelo

# Coeficiente de determinação
summary(modelo)$r.squared

# Coeficiente de determinação ajustado
summary(modelo)$adj.r.squared

# Realizando a previsão
predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))
