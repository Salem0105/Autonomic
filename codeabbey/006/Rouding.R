# Black Catcher - Black Catcher
divide_and_round <- function(numerator, denominator) {
  result <- round(numerator / denominator)
  return(as.integer(result))
}

# Leer el número de casos
num_cases <- as.integer(readline(prompt = "Ingrese el número de casos: "))

# Procesar cada caso
for (i in 1:num_cases) {
  pair <- strsplit(readline(prompt = ""), " ")[[1]]
  numerator <- as.numeric(pair[1])
  denominator <- as.numeric(pair[2])
  
  result <- divide_and_round(numerator, denominator)
  cat(result, " ")
}

cat("\n")
