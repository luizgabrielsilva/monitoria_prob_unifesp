data <- read.csv("data/dados_tratados.csv")


par(mfrow=c(1,2), mar = c(4, 4, 4, 4))

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

my_hist <- hist(
  data$idade,
  xlab="Idade",
  ylab="Frequência (relativa)",
  ylim=c(0, 0.025),
  right=FALSE,
  main ="Idade",
  #breaks = 30,
  freq = FALSE,
  col="pink",
  border="black",
)

my_hist