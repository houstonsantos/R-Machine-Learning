# Criação de nuvem de palavra com Corpus

# Carregando bibliotecas
library(wordcloud)
library(tm)

# Criando um corpus
corpus = VCorpus(DirSource('/Users/HoustonSantos/Repositorios/R/R-MachineLearning/Dados/textos', encoding = "UTF-8"), readerControl = list(reader = readPlain, language = "eng"))

# Informações sobre o corpus
inspect(corpus) 
inspect(corpus[1:100])  
meta(corpus[[1]])  
inspect(corpus[[2]])

# Informação do texto linha a linha
as.character(corpus[[2]]) 
as.character(corpus[[2]])[1] 

# Removendo palavra sem valores semânticos
corpus = tm_map(corpus, removeWords, stopwords("english"))

# Removendo excesso de espaços(em branco)
corpus = tm_map(corpus, stripWhitespace)

# Removendo pontuação
corpus = tm_map(corpus, removePunctuation)

# Removendo números
corpus = tm_map(corpus, removeNumbers)

# Faz um tratamento de palavras que tem o mesmo sentido, como por exemplo, escrever e escrevendo, ele vai deixar tudo com escrev por exemplo
corpus = tm_map(corpus, stemDocument, language = "english")

# Vai completar estar palavras para escrevendo, de forma que fiquem todas iguais independente do tempo verbal
corpus = tm_map(corpus, stemCompletion, dictionary = corpus)

# Gerando nuvem de palavras
wordcloud(corpus, max.words = 100, random.order = T, colors = rainbow(8), rot.per = 0.5, use.r.layout = T)

# Gerando matrix dos termos frequentes
freq = TermDocumentMatrix(corpus)

# Convertendo para uma matrix do R
matriz = as.matrix(freq)

# Ordenando os dados de acordo com a frequência de forma decrescente
matriz = sort(rowSums(matriz), decreasing = TRUE)

# Colocando dados da matriz no dataframe
matriz = data.frame(word = names(matriz), freq = matriz)
head(matriz, n = 100)

# Busca os termos mais frequentes baseado no parâmetros
findFreqTerms(freq, 500, Inf)

# Retira do documento termos pouco usados, de acordo com o segundo parâmetro
removeSparseTerms(freq, 0.4)
