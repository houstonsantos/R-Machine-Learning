# Grafos - Métricas

# Carregando base de dados - Grafo.graphml
grafo = read_graph(file.choose(), format = c("graphml"))
plot(grafo)

# Grau entrada e saída - direcionado
degree(grafo, mode = "all")

# Grau de entrada
degree(grafo, mode = "in")	

# Grau de saída
degree(grafo, mode = "out")

# Tamanho do vértice de acordo com o grau de entrada
grau = degree(grafo, mode = "in")
plot(grafo, vertex.size = grau)

# Verificando diâmetro - direcionando ou não direcionado
# Maior distancia entre os vértices
diameter(grafo, directed = T)
diameter(grafo, directed = F)

# Vértices qual maior diâmetro do grafo
get_diameter(grafo, directed = T)

# Cálculo da vizinhaça
neighborhood(grafo, 0, mode = c("all"))

# Verificando igualde entre grafos
grafo9 = grafo
isomorphic(grafo, grafo9)
