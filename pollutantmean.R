# Clear variables
rm(list = ls())

pollutantmean <- function(diretory, pollutant, id = 1:332){
  # "directory" is a character vector of length 1 indicating the location
  # of the CSV file.
  
  # "pollutant" is a character vector of length 1 indicating the name
  # of the pollutant for which we will calculate the mean, either "sulfate" orpo
  # "nitrate".
  
  # "id" is an integer vector indicating the monitor ID numbers to be used
  
  # Return de mean of the pollutante across all monitors list in the "id"
  # vectors, ignoring NA values.
  id <- sprintf("%03d", id)
  pollutant <- read.table(paste(diretory, id, ".csv", sep = ""))
  pollutant
}