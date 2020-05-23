# Deep Learning

# Carregando bibliotecas
library(h2o)

# Carregando base de dados treino - Train.csv.gz
treino = h2o.importFile(file.choose())

# Carregando base de dados teste - Test.csv.gz
teste = h2o.importFile(file.choose())

# Verificando dados de treino e teste
dim(treino)
dim(teste)

# Transformando em Factor
treino[,785] = as.factor(treino[,785])
teste[,785] = as.factor(teste[,785])

# Criando modelo
modelo = h2o.deeplearning(x = colnames(treino[, 1:784]), y = 'C785', training_frame = treino, validation_frame = teste, distribution = 'AUTO', activation = 'RectifierWithDropout', hidden = c(64, 64, 64), sparse = TRUE, epochs = 20)

# Gráfico do modelo
plot(modelo)

# Verificar a performance do modelo
h2o.performance(modelo)

# Testando modelo
treino[20, 785]
predicao = h2o.predict(modelo, newdata = treino[20, 1:784])
predicao$predict
