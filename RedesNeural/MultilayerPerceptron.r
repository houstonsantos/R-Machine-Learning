# MultiLayer Parceptron

# Carregando bibliotecas
library(neuralnet)

# Carregando base de dados
myiris = iris

# Adicionando coluna binarizada
myiris = cbind(myiris, myiris$Species == 'setosa')
myiris = cbind(myiris, myiris$Species == 'versicolor')
myiris = cbind(myiris, myiris$Species == 'virginica')

# Alterando nomes de colunas
names(myiris)[6] = 'setosa'
names(myiris)[7] = 'versicolor'
names(myiris)[8] = 'virginica'
summary(myiris)

# Criando amostra para treino e teste
amostra = sample(2, 150, replace = TRUE, prob = c(0.7, 0.3))
amostra

# Separando dados de treino e teste
treino = myiris[amostra == 1,]
teste = myiris[amostra == 2,]
dim(treino)
dim(teste)

# Criando modelo de rede neural
modelo = neuralnet(setosa + versicolor + virginica ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, treino, hidden = c(5, 4))
modelo

# Gráfico da rede neural
plot(modelo)

# Testando modelo
tmodelo = compute(modelo, teste[, 1:4])

# Verificando resultado
tmodelo$net.result

# Criando tada frame para resultado
resultado = as.data.frame(tmodelo$net.result)
names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'
head(resultado)

# Atualizando data frame 
resultado$class = colnames(resultado[, 1:3])[max.col(resultado[, 1:3], ties.method = 'first')]
head(resultado)
resultado

# Matriz de confusão
confusao = table(resultado$class, teste$Species)
confusao

# Taxa de acerto
sum(diag(confusao) * 100 / sum(confusao))
acerto = (confusao[1] + confusao[5] + confusao[9]) / sum(confusao)
acerto

# Taxa de erro
erro = (confusao[6] + confusao[8]) / sum(confusao)
erro
