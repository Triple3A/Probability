x <- rep(50, 200)

for(i in 1:7000)
{
  rmd_guest = sample(1:200, size = 2, replace = FALSE)
  x[rmd_guest[1]] = x[rmd_guest[1]] - 1
  x[rmd_guest[2]] = x[rmd_guest[2]] + 1
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
  hist(x, main = i, xlab = "Budget$", col = "Blue", border = "Dark Blue", breaks = max - min, plot = TRUE, las = 1)
  Sys.sleep(0.05)
}