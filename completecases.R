completecases <- function(directory, id = 1:332){
  # Reports the number of completely observed cases in each data file.
  # Input:
  #   - a directory of files
  #   - id an integer vector indicating the monitor ID numbers to be used
  # Output:
  #   - return a data frame where the first column is the name of the file and
  #     the second column is the number of complete cases.
  
  # Format IDs
  ids <- sprintf("%03d", id)
  
  list_completecases <- data.frame(row.names = c("id", "completecases"))
  
  for(id in ids){
    df <- read.table(paste(directory, "/", id, ".csv", sep = ""), header = TRUE, sep = ",")
    numberrows <- nrow(df[(!is.na(df$nitrate)) & (!is.na(df$sulfate)),])
    
    list_completecases <- rbind(list_completecases,
                                data.frame(id = id, completecases = numberrows)
    )
  }
  return(list_completecases)
}
