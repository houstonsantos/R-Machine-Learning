# T de Student

# Uma pesquisa mostra que cientista de dados ganham 75 por hora
# Media de 75, amostra 9, Desvio padrão 10, qual a probabilidade de selecionar uma pessoa que ganha > 80
# t = 1.5 (tabela t de Student) e graus de liberda = 8
pt(1.5 ,8)

# Qual a probabilidade do salário ser > 80
pt(1.5, 8, lower.tail = F)
1 - pt(1.5 ,8)
