# Binomial

# Qual a probalidade de jogar uma moeda 5 vezes e dar cara 3 vezes
dbinom(3, 5, 0.5)

# Qual a probabilidade de você passar em um sinal de 4 tempos 0,1,2,3,4 sinais verdes
dbinom(0, 4, 0.25)
dbinom(1, 4, 0.25)
dbinom(2, 4, 0.25)
dbinom(3, 4, 0.25)
dbinom(4, 4, 0.25)

# Calcula a probalidade acumulativa
pbinom(4, 4, 0.25)

# Prova 12 questões, qual a probabilidade de acerta 7, tendo 4 alternativas cada
dbinom(7, 12, 0.25)
