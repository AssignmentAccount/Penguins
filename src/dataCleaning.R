source("functions/libraryLoader.R")
source("functions/cleaning.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr")

library_loader(libs)

rawData_penguins <- penguins_raw

write.csv(rawData_penguins,"raw_data/rawData_penguins.csv")

cleanData_penguins <- cleaning(rawData_penguins)

names(cleanData_penguins)

write.csv(cleanData_penguins,"clean_data/cleanData_penguins.csv")

