# Carregando bibliotecas 
library(lattice)

# Boxplot
boxplot(trees)
boxplot(trees$Volume, main = 'Árvores', ylab = 'Circunferência', col = 'blue')
boxplot(trees$Volume, main = 'Árvores', ylab = 'Circunferência', col = 'blue', horizontal = TRUE)
boxplot(trees$Volume, main = 'Árvores', ylab = 'Circunferência', col = 'blue', horizontal = TRUE, outline = FALSE)
boxplot(trees$Volume, main = 'Árvores', ylab = 'Circunferência', col = 'blue', horizontal = TRUE, outline = FALSE, notch = TRUE)
boxplot.stats(trees$Volume)

bwplot(trees$Volume, main = 'Árvores', ylab = 'Circunferência')
