x <- rep(0, 100)

for(i in 1:6000)
{
  rmd_guest = sample(1:100, size = 1, replace = TRUE)
  x[rmd_guest] = x[rmd_guest] + 1
  max = 0
  min = x[1]
  for(j in x)
  {
    if(j > max)
      max = j
    if(j < min)
      min = j
  }
  flush.console()
  hist(x, main = i, xlab = "Budget$", col = "Brown", breaks = max - min, plot = TRUE, las = 1)
  Sys.sleep(0.05)
}