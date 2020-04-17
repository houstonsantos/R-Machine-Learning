# K-means

# Criando modelo 
cluster = kmeans(iris[1:4], center = 3)
cluster

# Matriz de confusão
confusao = table(iris$Species, cluster$cluster)
confusao

# Gráfico de dispersão
plot(iris[,1:4], col = cluster$cluster)
