complete <- function(directory, id = 1:332) {
  
  ## 
  ## Getthe location of the CSV files
  ##
  EPAfiles <- list.files(directory, full.names=TRUE)
  nobscount <- numeric(0)
  dframe <- data.frame()
  for(i in id){
    #loop through the specified ids
      ##  aggregate observation counts
    nobscount <- c(nobscount, nrow(na.omit(read.csv(EPAfiles[i]))))
  }
  #print the table
  data.frame(id = id, nobs = nobscount)
 
}