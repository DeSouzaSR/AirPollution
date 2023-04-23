correlation <- function(directory, threshold = 0){
  # Objective:
  #   Takes a directory of data files and a threshold for complete cases and
  #   calculates the correlation between sulfate and nitrate for monitor
  #   locations where the number of completely observed cases (on all variables)
  #   is greater than the threshold. The function should return a vector of
  #   correlations between sulfate and nitrate for the monitors that meet the
  #   threshold requirement. If no monitors meet the threshold requirement, then
  #   the function should return a numeric vector of length 0.
  # 
  # Input:
  #   - a directory of data files
  #   - threshold for complete cases
  #
  # Output:
  #   - vector of correlation 
  
  complete <- completecases(directory)
  ids <- complete$id[complete$completecases >= threshold]
  list_completecases <- data.frame(row.names = c("sulfate", "nitrate"))
  correlation_vec <- c()
  for(id in ids){
    df <- read.table(paste(directory, "/", id, ".csv", sep = ""), header = TRUE,
                      sep = ",")
    df <- subset(df, (!is.na(nitrate)) & (!is.na(sulfate)))
    correlation_vec <- c(correlation_vec, cor(df$sulfate, df$nitrate))
  }
  return(correlation_vec)
}


