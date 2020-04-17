# Hierárquico

# Criando modelo
cluster = hclust(dist(iris[, 1:4]))

# Gráfico dendograma
plot(cluster, hang = -1, label = iris$Species)
