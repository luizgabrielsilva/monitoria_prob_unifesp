data <- read.csv("data/dados_tratados.csv")

par(mar = c(4, 19, 4, 19))


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