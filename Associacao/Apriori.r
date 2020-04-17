# Apriori

# Carregando bibliotecas
library(arules)
library(arulesViz)

# Carregando base de dados - Transacoes.txt
transacoes = read.transactions(file.choose(), format = 'basket', sep = ',')
transacoes
summary(transacoes)
View(transacoes)
inspect(transacoes)
dim(transacoes)
image(transacoes)

# Executando mineração (associação)
regras = apriori(transacoes, parameter = list(supp = 0.5, conf = 0.5))
regras

# Verificando regras geradas
inspect(regras)

# Gráficos de regras geradas
plot(regras)
plot(regras, method = 'graph', control = list(type = 'items'))
plot(regras, method = 'matrix', control = list(type = 'items'))
plot(regras, method = 'grouped')
     