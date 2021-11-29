source("./functions2.R")
LAMBDA <- 300
DAYS <- 20*365
results <- 0
for (i in 1:DAYS) {
  results[i] <- patients_per_day(LAMBDA)
}
print_graph(results)
