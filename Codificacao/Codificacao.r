# Categorical Encoding

# Carregando bibliotecas
library(mltools)
library(data.table)

# Carregando base de dados - Titanic
Titanic
class(Titanic)
View(Titanic)

# Tranformando Titanic em um data frame
tit = as.data.frame(Titanic)
class(tit)

# Label Encoding
labenc = data.matrix(tit[,1:3])
View(labenc)

# One-Hot Encoding
hotenco = one_hot(as.data.table(tit[,1:3]))
View(hotenco)


# Feature Scaling

# Padronizando dados - Z-Score
boxplot(iris[, 1:4])
iris_padr = scale(iris[, 1:4])
View(iris_padr)
boxplot(iris_padr)

# Normalizando dados
normaliza = function(x){
  return((x - min(x)) / (max(x) - min(x)))
}

iris_norm = normaliza(iris[, 1:4])
View(iris_norm)
boxplot(iris_norm)
