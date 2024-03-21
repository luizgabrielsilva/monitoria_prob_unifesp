data <- read.csv("data/dados_tratados.csv")

par(mar = c(1, 20, 1, 20))

boxplot(
  data$idade,
  ylab = "Idade",              # Troque para xlab se horizontal = TRUE
  notch = TRUE,
  col = "pink"
  #width = 0.2
  #outwex = 0.5,
  #boxwex = 0.2
  #boxlwd = 2
  #horizontal = TRUE
)

# Adicionar média ao gráfico 
mean_value = mean(data$idade)
points(
  x = mean_value, 
  #y = order(mean_value),   # Descomente caso horizontal = TRUE
  pch = 2,
  col = "red"
)