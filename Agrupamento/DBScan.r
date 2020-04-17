# DBScan

# Carregando bibliotecas 
library(fpc)

# Criando modelo
cluster = dbscan(iris[, 1:4], eps = 0.6, MinPts = 4)

# Verificando dados do cluster criado
unique(cluster)
unique(cluster$cluster)

# Matriz de confusão
confusao = table(iris$Species, cluster$cluster)
confusao

# Gráfico de dispersão
plot(cluster, iris[, 1:4])
plot(iris[, 1:4], col = cluster$cluster)
