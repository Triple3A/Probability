repeats <- c(10,100,1000)
for (i in repeats) 
{
  file_name <- paste("Exponential", i, "repeats")
  jpeg(file_name)
  Sample <- c()
  for (j in 1:i)
  {
    Xexp <- rexp(30,rate = 1.5)
    Sample <- c(Sample,mean(Xexp))
  }
  hist(Sample,main = paste("Exponential sampling with",i,"repeats"),col = "chocolate4",prob = TRUE)
  curve(dnorm(x,mean = 1/1.5,sd = sqrt(1/(1.5*1.5*30))),lwd = 4, col = "bisque",add = TRUE)
  Sys.sleep(3) 
  flush.console()
}