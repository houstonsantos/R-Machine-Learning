# Fuzzy c-means

# Carregando bibliotecas 
library(e1071)

# Criando modelo 
cluster = cmeans(iris[, 1:4], centers = 3)
cluster

# Matriz de confusão
confusao = table(iris$Species, cluster$cluster)
confusao
