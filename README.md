# AirPollution
Data Science - Johns Hopkins University - Programming Assignment 1: Air Pollution

You will write three functions that are meant to interact with dataset that accompanies this assignment. The dataset is contained in a zip file specdata.zip that you can download from the Coursera web site.

[Link to dataset](https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip)

* Part 1: Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. To test pollutantmean function
  - `pollutantmean("data/specdata/", "nitrate", 1:10) --> 0.7976266`
  - `pollutantmean("data/specdata/", "nitrate", 23) --> 1.280833`
  - `pollutantmean("data/specdata/", "nitrate", 70:72) --> 1.706047`
  - `pollutantmean("data/specdata/", "sulfate", 1:10) --> 4.064128`
* Part 2: Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. 
* Part 3: Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0.

