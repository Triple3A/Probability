repeats <- c(10,100,1000)
for (i in repeats) 
{
  file_name <- paste("Poison", i, "repeats")
  jpeg(file_name)
  Sample <- c()
  for (j in 1:i)
  {
    Xpoi <- rpois(30,lambda = 2.5)
    Sample <- c(Sample,mean(Xpoi))
  }
  hist(Sample,main = paste("Possion sampling with",i,"repeats"),col = "chocolate4",prob = TRUE)
  curve(dnorm(x,mean = 2.5,sd = sqrt(2.5/30)),lwd = 3, col = "bisque",add = TRUE)
  Sys.sleep(3)
  flush.console()
}

