data <- read.csv("data/NHANES_age_prediction.csv")


# Renomeando as colunas
new_col_names <- c("id",
                   "grupo",
                   "idade",
                   "sexo",
                   "atividades_esportivas",
                   "imc",
                   "nivel_glicose",
                   "diabetico",
                   "saude_oral",
                   "nivel_insulina")

colnames(data) <- new_col_names


# Substituindo valores nas colunas sexo, atividades_esportivas e diabetico
replacement_values_sexo <- c("M", "F")
replacement_values_outros <- c("S", "N")

data$sexo <- replace(data$sexo,                       # coluna a ser tratada
                     data$sexo %in% conditions,       # condição
                     replacement_values_sexo)         # novos valores 


data$atividades_esportivas <- replace(
  data$atividades_esportivas,
  data$atividades_esportivas %in% conditions,
  replacement_values_outros
)

data$diabetico <- replace(data$diabetico,
                          data$diabetico %in% conditions,
                          replacement_values_outros)


# Removendo valores impossíveis (linha 414)
data <- data[-c(414), ]


# Salvando os dados tratados em um arquivo CSV
write.csv(data, "data/dados_tratados.csv")