# Regressão Logística

# Carregando base de dados - Eleicao.csv
eleicao = read.csv2(file.choose(), sep = ";", header = T)

# Analisando base
colnames(eleicao)
dim(eleicao)
head(eleicao)

# Calculando correlação
cor(eleicao$DESPESAS, eleicao$SITUACAO)

# Plotando gráfico da correlação 
plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)

# Criando modelo de regressão
modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
summary(modelo)

# Plotando grafico comparativo
points(eleicao$DESPESAS, modelo$fitted.values, pch = 4)

# Importando novos dados para teste - NovosCandidatos.csv
prevereleicao = read.csv2(file.choose(), sep = ";", header = T)
prevereleicao

# Criando coluna de resultado com previsão do modelo
prevereleicao$RESULT = predict(modelo, newdata = prevereleicao, type = "response")
prevereleicao

# Resultado percentual de chances para eleição
prevereleicao$RESULT
