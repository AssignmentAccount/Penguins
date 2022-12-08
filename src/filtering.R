source("functions/libraryLoader.R")
source("functions/penguinFunctions.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite")

library_loader(libs)

cleanData <- read.csv("clean_data/cleanData_penguins.csv")

processedData <- process(cleanData)

filteredData <- filterData(processedData)

write.csv(filteredData,"filtered_data/filteredData.csv")

