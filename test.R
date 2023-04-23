rm(list = ls())

source("correlation.R")
source("completecases.R")

cr <- correlation("data/specdata", 2000)                
n <- length(cr)                
cr <- correlation("data/specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
