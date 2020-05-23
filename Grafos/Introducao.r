# Grafos - Introdução

# Carregando bibliotecas
library(igraph)

# Grafo unidirecional
grafo1 = graph(edges = c(1, 2, 2, 3, 3, 4, 4, 1))
plot(grafo1)

# Grafo bidirecional
grafo2 = graph(edges = c(1, 2, 2, 3, 3, 4, 4, 1, 1, 4, 4, 3, 3, 2, 2, 1))
plot(grafo2)

# Grafo com auto relacionamento
grafo3 = graph(edges = c(1, 2, 2, 3, 3, 4, 4, 1, 1, 1))
plot(grafo3)

# Criando grafo direcionado literal
grafo4 = graph_from_literal(1 -+ 2, 2 -+ 3, 3 ++ 4, 4 -+ 1)
plot(grafo4)

# Criando grafo não direcionado literal
grafo5 = graph_from_literal(1 - 2, 2 - 3, 3 - 4, 4 - 1)
plot(grafo5)

# Grafo com vértice isolado literal
grafo6 = graph_from_literal(1 - 2, 2 - 3, 3 - 4, 4 - 1, 5)
plot(grafo6)

# Criando grafo não direcionado 
grafo7 = graph(edges = c(1, 2, 3, 3, 3, 4, 4, 1), directed = F)
plot(grafo7)

# Grafo com vértice isolado 
grafo8 = graph(edges = c(1, 2, 2, 3, 3, 4, 4, 1), directed = F, n = 10)
plot(grafo8)

# Grafos nomeados com vértice isolados
grafo9 = graph(edges = c('A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E', 'A', 'A', 'C', 'C', 'B'), isolates = c('F', 'G'))
plot(grafo9)

# Acessando matrix adjacente de um grafo
grafo9[]

# Grafo nomeado
grafo10 = graph(edges = c('Fernando', 'Pedro' ,'Jose', 'Antonio', 'Fernando', 'Jose', 'Fernando', 'Antonio'))
plot(grafo10)

# Adicionando atributo pesso aos vértices de um grafo
V(grafo10)$Peso = c(40, 30, 30, 25)

# Adicionando atributo tipo para um grafo
V(grafo10)$type = 'Humano'
grafo10

# Lendo atributos do vértice de um grafo
V(grafo10)$name
vertex_attr(grafo10)
vertex_attr_names(grafo10)
vertex_attr(grafo10)$Peso

# Adicionando atributo TipoAmizade às arestas de um grafo
E(grafo10)$TipoAmizade = c('Amigo','Inimigo', 'Inimigo', 'Amigo')

# Adicionando peso na aresta de um grafo
E(grafo10)$weight = c(1, 2, 3, 4)

# Lendo atributos da aresta de um grafo
edge_attr(grafo10)
edge_attr_names(grafo10)

# Vértice releativo ao atributo peso
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso)

# Arestas releativo ao atributo peso
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso, edge.width = edge_attr(grafo10)$weight)

# Cores aos vértices
vertex_attr(grafo10)$Cor = c('Blue', 'Red', 'Yellow', 'Green')
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso, edge.width = edge_attr(grafo10)$weight, vertex.color = vertex_attr(grafo10)$Cor)

# Arestas curvadas
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso, edge.width = edge_attr(grafo10)$weight, vertex.color = vertex_attr(grafo10)$Cor, edge.curved = 0.4)

# Adicionando frame e titulo
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso, edge.width = edge_attr(grafo10)$weight, vertex.color = vertex_attr(grafo10)$Cor, edge.curved = 0.4, frame = TRUE, main = 'Grafo')

# Vértices quadrado
plot(grafo10, vertex.size = vertex_attr(grafo10)$Peso, edge.width = edge_attr(grafo10)$weight, vertex.color = vertex_attr(grafo10)$Cor, edge.curved = 0.4, frame = TRUE, main = 'Grafo', vertex.shape = 'square')

# Imprimindo grafo interativos 
tkplot(grafo10)
