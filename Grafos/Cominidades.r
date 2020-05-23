# Grafos - Comunidades e Cliques

# Carregando bibliotecas
library(igraph)

# Carregando base de dados - Grafo.graphml
grafo = read_graph(file.choose(), format = c("graphml"))
plot(grafo)

# Detectando comunidades
comun = cluster_edge_betweenness(grafo)
comun

# Verificando cada vertice para qual comunidade ele foi atribuido
comun$membership
plot(grafo, vertex.color = comun$membership)

# Criando grafo
dist = graph(edges = c("A", "C", "A", "B", "B", "E", "B", "F", "C", "D", "G", "H", "D", "H", "E", "H", "F", "G"), directed = TRUE)
E(dist)$weight = c(2, 1, 2, 1, 2, 1, 1, 3, 1)
plot(dist, edge.label = E(dist)$weight)
dist

# Detectando comunidades
comun = cluster_edge_betweenness(dist)
comun

# Verificar o grupo em cada elemento pertence 
comun$membership

# Grafico das comunidades por cores
plot(dist, vertex.color = comun$membership, edge.color = "gray", edge.label = E(dist)$weight)

# Detecção de cliques - só para grafos não direcionados
cli = cliques(as.undirected(grafo), min = 4)
length(cli)
cli
