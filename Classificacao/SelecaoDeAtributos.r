# Técnica de seleção de atributos
# Independente do algoritmo de classificação.

# Carregando bibliotecas
library(FSelector)

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

# Visualizando dados de treino e teste
View(treino)
View(teste)
dim(treino)
dim(teste)

# Realizando seleção de atributos
random.forest.importance(class ~ ., credito)

# Criando modelo com seleção de atributos
modelo = svm(class ~ checking_status + duration + credit_history + purpose, teste)
modelo

# Realizando predição
predicao = predict(modelo, teste)
predicao

# Matriz de confusão
confusao = table(teste$class, predicao)
confusao

# Taxa de acerto
acerto = (confusao[1] + confusao[4]) / sum(confusao)
acerto

# Taxa de erro
erro = (confusao[2] + confusao[3]) / sum(confusao)
erro
