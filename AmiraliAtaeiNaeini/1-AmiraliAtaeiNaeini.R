for(t in 0:30)
{
  vec <- c()
  for(n in 1:10000)
  {
     vec <- c(vec, sum(sample(1:6, size = t, replace = TRUE)))
  }
  flush.console()
  hist(vec, main=t, xlab="Sum", col = "Chocolate", border = "Brown", breaks=5 * t + 1, plot = TRUE)
  Sys.sleep(0.05)
}