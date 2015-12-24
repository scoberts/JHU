corr <- function(directory, threshold = 0) {
 
  EPAfiles <- list.files(directory, full.names=TRUE)
  corrsn <- numeric(0)
  #
  nobsnum <- complete("specdata")
  nobsnum <- nobsnum[nobsnum$nobs > threshold, ]
  for(i in nobsnum$id ){
    m <- (read.csv(EPAfiles[i]))
    corrsn <- c(corrsn, cor(m$sulfate, m$nitrate,  use = "pairwise.complete.obs"))
  }
  
  return(corrsn)
}