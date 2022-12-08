source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

pdata <- read.csv("filtered_data/filteredData.csv")

histograms(pdata)

cl_bodymass_lm <- lm_function_log(pdata)

summary(cl_bodymass_lm)

par(mfrow=c(2,2))
plot(cl_bodymass_lm)


