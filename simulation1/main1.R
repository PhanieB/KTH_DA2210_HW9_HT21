source("./functions.R")
MAX_PAYOUT = 10^7
NUMBER_ROUND = floor(log(MAX_PAYOUT,2))
SIMULATIONS = 50000
rounds <- list()
for(j in 1:10) {
  gains <- 0
  for (i in 1:SIMULATIONS) {
    gains[i] <- game(NUMBER_ROUND)
  }
  avg_gains_so_far <- 0
  for(i in 1:SIMULATIONS){
    avg_gains_so_far[i] <- mean(gains[1:i])
  }
  rounds[[j]] <- avg_gains_so_far
}

print_graph(rounds)
