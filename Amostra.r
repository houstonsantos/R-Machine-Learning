# Amostra aleatória
amostra1 = sample(c(0,1), 150, replace = TRUE, prob = c(0.5, 0.5))

length(amostra1[amostra1 == 0])
length(amostra1[amostra1 == 1])


# Amostra extratificada aleatória
library(sampling)
iris
amostra2 = strata(iris, c("Species"), size = c(25, 25, 25), method = "srswor")
summary(amostra2)


# Amostra extratificada aleatória, proporcional de tamanho 100
infert
amostra3 = strata(infert, c("education"), size = c(5, 48, 47), method = "srswor")
summary(amostra3)


# Amostragem sistematica aleatoria
library(TeachingSampling)
amostra4 = S.SY(150, 10)
amostra4
amostrairis = iris[amostra4,]
amostrairis
