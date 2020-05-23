# Grafos - Clássicos

# Carregando bibliotecas
library(igraphdata)

# Carregando grafo
data(Koenigsberg)
plot(Koenigsberg)

# Verificando graus do grafo
degree(Koenigsberg, mode = 'all')

# Carregando grafo
data(kite)
plot(kite)

# Carregando grafo
data(UKfaculty)
plot(UKfaculty)

comun = cluster_edge_betweenness(UKfaculty)
plot(comun, UKfaculty)
