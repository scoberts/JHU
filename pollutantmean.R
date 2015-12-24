pollutantmean <- function(directory, pollutant, id=1:332)
  
{
  EPAfiles <- list.files(directory, full.names=TRUE)
  frame <- data.frame()
  for(i in id){
  
              frame <- rbind(frame, read.csv(EPAfiles[i]))
              }
  
  if (pollutant == "nitrate")
    {

    mean(frame$nitrate, na.rm=TRUE)  
     }else if (pollutant == "sulfate")
    {
    
    mean(frame$sulfate, na.rm=TRUE)  
  }
}  
  
  