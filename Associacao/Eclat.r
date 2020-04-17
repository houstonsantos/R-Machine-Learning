# Eclat 

# Carregando bibliotecas
library(arules)
library(arulesViz)

# Carregando base de dados - Transacoes2.txt
transacoes = read.transactions(file.choose(), format = 'basket', sep = ',')
View(transacoes)
inspect(transacoes)
dim(transacoes)
image(transacoes)

# Executando mineração (associação)
regras = eclat(transacoes, parameter = list(supp = 0.1, maxlen = 15))
regras

# Verificando regras geradas
inspect(regras)
plot(regras)
plot(regras, method = 'graph', control = list(type = 'items'))
