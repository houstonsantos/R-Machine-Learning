# Poisson

# Média de 2 acidentes por dia, probabilidade para 3 acidente
dpois(3, lambda = 2)

# Probabilidade para 3 acidente ou menos
ppois(3, lambda = 2)

# Probabilidade para mais de 3 acidente
ppois(3, lambda = 2, lower.tail = F)
