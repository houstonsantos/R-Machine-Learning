# Random Forest (Ensemble Learning)

# Carregando bibliotecas
library(randomForest)

# Carregando base de dados - Credit.csv
credito = read.csv2(file.choose(), sep = ',', header = T)
View(credito)
dim(credito)

# Criando amostra para treino e teste
amostra = sample(2, 1000, replace = T, prob = c(0.7, 0.3))
amostra

# Separando dados de treino e teste
treino = credito[amostra == 1,]
teste = credito[amostra == 2,]

# Criando objeto floresta
floresta = randomForest(class ~ ., data = treino, ntree = 100, importance = T)

# Plotando dados - importancia de cada atribudo 
varImpPlot(floresta)

# Previsão
previsao = predict(floresta, teste)

# Matriz de confusão
confusao = table(previsao, teste$class)
confusao

# Taxa de acerto
acerto = (confusao[1] + confusao[4]) / sum(confusao)
acerto

# Taxa de erro
erro = (confusao[2] + confusao[3]) / sum(confusao)
erro
