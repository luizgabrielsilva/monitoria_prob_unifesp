data <- read.csv("data/dados_tratados.csv")

par(mar = c(4, 19, 4, 19))


my_hist <- hist(
  data$idade,
  #breaks = 30,
  right=FALSE
)

total <- sum(my_hist$counts)
my_hist$counts <- cumsum(my_hist$counts)
my_hist$density <- my_hist$counts / total

plot(my_hist,
     xlab="Idade",
     ylab="Frequência (relativa) acumulada",
     main ="Idade",
     freq = FALSE,
     col="pink",
     border="black"
)
