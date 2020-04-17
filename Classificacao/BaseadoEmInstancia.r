# Baseado em instância

# Carregando bibliotecas
library(class)

# Criando amostra para treino e teste
amostra = sample(2, 150, replace = T, prob = c(0.7, 0.3))
amostra

# Separando dados de treino e teste
treino = iris[amostra == 1,]
teste = iris[amostra == 2,]

# Visualizando dados de treino e teste
View(treino)
View(teste)
dim(treino)
dim(teste)

# Criando previsão 
previsao = knn(treino[, 1:4], treino[, 1:4], treino[, 5], k = 3)
previsao

# Matriz de confusão
confusao = table(treino$Species, previsao)
confusao = table(treino[, 5], previsao)
confusao
