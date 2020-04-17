# Qui Quadrado (teste de hipótese)

# Criando matrix de dados de homens e mulheres que assistem novela
novela = matrix(c(19,6,43,32), nrow = 2, byrow = T)
View(novela)

# Dando nomes linhas e colunas
rownames(novela) = c("Masculino", "Femenino")
colnames(novela) = c("Assite", "Não Assite")
View(novela)

# Teste de Qui Quadrado
chisq.test(novela)
