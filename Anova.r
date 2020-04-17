# Análise de variança - ANOVA

# Carregando base de dados
base = read.csv2(file.choose(), sep = ';', header = T)
View(base)

# Criando análise de variança de um fator
anova = aov(Horas ~ Remedio, data = base)
summary(anova)

# Criando análise de variança de dois fatores
anova = aov(Horas ~ Remedio * Sexo, data = base)
summary(anova)

# Teste de Tukey para comparar os resultados
tukey = TukeyHSD(anova)
tukey
