# Carregando bibliotecas 
library(lattice)

# Histograma
hist(trees$Height, main = 'Árvores', ylab = 'Frequência', xlab = 'Altura')
hist(trees$Height, main = 'Árvores', ylab = 'Frequência', xlab = 'Altura', col = 'blue')
hist(trees$Height, main = 'Árvores', ylab = 'Frequência', xlab = 'Altura', col = 'blue', density = 60, breaks = 10)

histogram(trees$Volume, main = 'Árvores', ylab = 'Frequência', xlab = 'Volume', aspect = 1, type = 'count', nint = 10)

aggregate(chickwts$weight, by = list(chickwts$feed), FUN = sum)
histogram(~ weight | feed, data = chickwts)

# Densidade
densidade = density(trees$Height)
densidade
plot(densidade)

hist(trees$Height, main = NULL, ylab = NULL, xlab = NULL)
par(new = TRUE)
plot(densidade)

densityplot(CO2$conc)
densityplot(~ CO2$conc | CO2$Treatment)
densityplot(~ CO2$conc | CO2$Treatment, plot.points = FALSE)
