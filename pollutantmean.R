# Clear variables
rm(list = ls())

pollutantmean <- function(diretory, pollutant, id = 1:332){
  # INPUT
  #   - directory: a character vector of length 1 indicating the location of the
  #     CSV file.
  #   - pollutant: a character vector of length 1 indicating the name of the
  #     pollutant for which we will calculate the mean, either "sulfate" or
  #     "nitrate".
  #   - id: an integer vector indicating the monitor ID numbers to be used
  # OUTPUT
  #   - Return de mean of the pollutant across all monitors list in the "id"
  #     vectors, ignoring NA values.
  
  # Format IDs
  ids <- sprintf("%03d", id)
  
  # Identify pollutant and make column of the classes
  if(pollutant == "sulfate"){
    str.colClasses <- c("NULL", "numeric", "NULL", "NULL")
  } else {
    str.colClasses <- c("NULL", "NULL", "numeric", "NULL")
  }
  
  df = data.frame() # Empty data frame
  for(id in ids){
    df2 <- read.table(paste(diretory, id, ".csv", sep = ""),
                    skip = 1,         
                    header = FALSE, sep = ",",
                    colClasses = str.colClasses)
    
    df <- rbind(df, df2)
  }
  
  mean(df[,1], na.rm = TRUE)
}
