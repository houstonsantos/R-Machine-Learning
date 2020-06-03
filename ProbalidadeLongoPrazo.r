# Probabilidade a longo prazo

# Jogar um dado 6 vezes, qual a média (1 + 2 + 3 + 4 + 5 + 6 / 6 = 3,5)
x = 0

for (i in 1:6) {
  x = x + sample(1:6, 1)
}
x = x / 6
x

# Jogar 100000 vezes
b = 0

for (i in 1:100000) {
  b = b + sample(1:6, 1)
}
b = b / 100000
b
