data <- read.csv("data/dados_tratados.csv")


par(mfrow=c(1, 1), mar = c(4, 15, 2, 15))

boxplot(
  data$idade ~ data$grupo,
  ylab = "Idade",
  xlab = "Grupo",
  ylim = c(10, 90),
  notch = TRUE,
  col = "pink",
  main = "Idade dos participantes por grupo etário"
  #width = 0.2
  #outwex = 0.5,
  #boxwex = 0.2
  #boxlwd = 2
  #horizontal = TRUE
)

# Adicionar média ao gráfico 

means <-  tapply(data$idade, data$grupo, mean)

points(
  x = means, 
  pch = 2,
  col = "red"
)