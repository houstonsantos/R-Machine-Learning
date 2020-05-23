# Árvore de decisão

# Carregando bibliotecas
library(rpart)
library(party)

# Carregando base de dados - Credit.csv
credito = read.csv2(file.choose(), se = ',', header = T)
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

# Criando modelo de árvore - Rpart
modelo = rpart(class ~ ., data = treino, method = "class")
modelo

# Gráfico da árvore
plot(modelo)
text(modelo, use.n = T, all = T, cex = .8)

# Realisando previsão
prevteste = predict(modelo, newdata = teste)
prevteste

# Adicionando colunas bad e good 
cred = cbind(teste, prevteste)
View(cred)

# Adicionando coluna de resultado
cred['Result'] = ifelse(cred$bad >= 0.5, 'bad', 'good')
View(cred)

# Matriz de confusão
confusao = table(cred$class, cred$Result)
confusao

# Taxa de acerto
acerto = (confusao[1] + confusao[4]) / sum(confusao)
acerto

# Taxa de erro
erro = (confusao[2] + confusao[3]) / sum(confusao)
erro


# Criando modelo de árvore - Party
modelo = ctree(class ~ ., treino)

# Gráfico da árvore
plot(modelo)
plot(modelo, type = 'simple')

# Realisando previsão
predicao = predict(modelo, newdata = teste)
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
