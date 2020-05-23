# Normal

# Media = 8, desvio padrão = 2

# Qual a probabilidade de tirar um objeto < 6
pnorm(6, 8, 2)

# Qual a probabilidade de tirar um objeto > 6
pnorm(6, 8, 2, lower.tail = F)
1 - pnorm(6, 8, 2)

# Qual a probabilidade de tirar um objeto < 6 e > 10
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = F)
2 * pnorm(6, 8, 2)

# Qual a probabilidade de tirar um objeto < 10 e > 8
pnorm(10, 8, 2) - pnorm(8, 8, 2)
