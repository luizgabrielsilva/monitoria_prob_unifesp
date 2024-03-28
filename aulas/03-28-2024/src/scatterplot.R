data <- read.csv("data/dados_tratados.csv")


#par(mfrow=c(1, 1), mar = c(4, 15, 2, 15))

plot(
  x = data$imc,
  y = data$nivel_glicose,
  ylab = "Nível de glicose",
  xlab = "IMC",
  col = "pink",
  main = "Relação entre IMC e nível de glicose"
  #width = 0.2
  #outwex = 0.5,
  #boxwex = 0.2
  #boxlwd = 2
  #horizontal = TRUE
)
