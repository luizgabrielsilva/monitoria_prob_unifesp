data <- read.csv("data/dados_tratados.csv")

par(mar = c(4, 19, 4, 19))


barplot(
  table(data$sexo), 
  ylim = c(0, 1200),
  width = 1,
  xlab = "Sexo",
  ylab = "Quantidade",
  col = "pink",
  main = "Quantidade de Homens e Mulheres na pesquisa"
)