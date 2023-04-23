completecases <- function(directory){
  # Reports the number of completely observed cases in each data file.
  # Input:
  #   - a directory of files and
  # Output:
  #   - return a data frame where the first column is the name of the file and
  #     the second column is the number of complete cases.
  
  files <- list.files(directory)
  list_completecases <- data.frame(row.names = c("filename", "completecases"))
  
  for(onefile in files){
    df <- read.table(paste(directory, onefile, sep = ""), header = TRUE, sep = ",")
    numberrows <- nrow(df[(!is.na(df$nitrate)) & (!is.na(df$sulfate)),])
    
    list_completecases <- rbind(list_completecases,
                                data.frame(filename = onefile, completecases = numberrows)
    )
  }
  return(list_completecases)
}
