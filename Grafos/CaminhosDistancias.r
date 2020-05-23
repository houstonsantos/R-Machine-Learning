# Grafos - Caminhos e Distâncias

# Criando grafo
dist = graph(edges = c("A", "C", "A", "B", "B", "E", "B", "F", "C", "D", "G", "H", "D", "H", "E", "H", "F", "G"), directed = TRUE)
plot(dist)

# Atribuindo peso ao grafo
E(dist)$weight = c(2, 1, 2, 1, 2, 1, 1, 3, 1)
plot(dist, edge.label = E(dist)$weight)

# Verificando a distâcia entre os vértices
distances(dist, V(dist)$name == "A", V(dist)$name == "H")

# Verificando o menor caminho entre os vértices
caminho = shortest_paths(dist, V(dist)$name == "A", V(dist)$name == "H", output = c("both"))
caminho$vpath

# Percorre todos os vétices do grafo dist
for(i in 1:length(V(dist))){
  # Pinta os vertices do caminho mais curto de verde, se não de cinza
  V(dist)$color[i] = ifelse(i %in% as.vector(unlist(caminho$vpath)), "green", "gray")
}

for(i in 1:length(E(dist))){
  # Pinta às arestas do caminho mais curto de verde, se não de cinza
  E(dist)$color[i] = ifelse(i %in% as.vector(unlist(caminho$epath)), "green", "gray")
}

# Verificando grafo
plot(dist, edge.label = E(dist)$weight)
tkplot(dist, edge.label = E(dist)$weight, vertex.color="white")
