# K-medoids

# Carregando bibliotecas 
library(cluster)

# Criando modelo 
cluster = pam(iris[, 1:4], k = 3)
cluster

# Matriz de confusão
confusao = table(iris$Species, cluster$clustering)
confusao

# Gráfico de dispersão
clusplot(pam(x = iris[, 1:4], k = 3))
 