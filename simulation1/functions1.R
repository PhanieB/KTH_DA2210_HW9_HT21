game <- function(MAX_ROUND) {
  n <- 1
  gain <- 1
  continue <- TRUE
  while (n <= MAX_ROUND && continue) {
    continue <- flip_coin()
    if (continue) {
      n <- n+1
      gain <- gain * 2
    }
  }
  return(gain)
}

flip_coin <- function() {
  # flip a coin at random
  # 1 is cross (false), stop the game
  # 2 is not cross (true), continue the game
  x <- sample(1:2, 1)
  return(x==2)
}

print_graph <- function(results) {
  plot(results[[1]], type = "l", col = 1, 
       main = "Average gain for the last n games played",
       xlab = "n", ylab = "average gain", ylim = c(0,50))
  for (j in 2:10) {
    lines(results[[j]], col = j, type = "l")
  }
}
