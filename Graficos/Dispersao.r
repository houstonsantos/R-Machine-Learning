# Dispersão
plot(trees$Girth, trees$Volume, main = 'Árvores', ylab = 'Circunferência', xlab = 'Volume', col = 'blue')
plot(trees$Girth, trees$Volume, main = 'Árvores', ylab = 'Circunferência', xlab = 'Volume', col = 'blue', pch = 20)
plot(jitter(trees$Girth), trees$Volume, main = 'Árvores', ylab = 'Circunferência', xlab = 'Volume', col = 'blue', pch = 20)
plot(trees$Girth, trees$Volume, main = 'Árvores', ylab = 'Circunferência', xlab = 'Volume', col = 'blue', pch = 20, type = 'l')

xyplot(CO2$conc ~ CO2$uptake)
xyplot(CO2$conc ~ CO2$uptake | CO2$Type)
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment)

# Legenda
plot(CO2$conc, CO2$uptake, col = CO2$Treatment, pch = 20)
legend('bottomright', legend = c('nonchilled', 'chilled'), cex = 1, fill = c('black', 'red'))
