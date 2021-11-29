patients_per_day <- function(lambda) {
  duration <- 0
  patients <- 0
  while (duration < 1) {
    duration <- duration + rexp(1,lambda)
    patients <- patients +1
  }
  return(patients)
}

print_graph <- function(results) {
  
  hist(results,
       main = "Histogram of patients per day",
       xlab = "Number of patients",
       col = "darkblue",
       breaks = 20
  )
  axis(labels=NA,side=1,at=c(seq(from=230,to=370,by=10)))
  axis(labels=NA,side=2,at=c(seq(from=0,to=2250,by=250)))
}