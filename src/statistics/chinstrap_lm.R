source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

pdata <- read.csv("filtered_data/filteredData.csv")

Chinstrap_only <- pdata[275:342,]

histograms(Chinstrap_only)

c_cl_bodymass_lm <- lm_function_sqrt(Chinstrap_only)

summary (c_cl_bodymass_lm)

par(mfrow=c(2,2))
plot(c_cl_bodymass_lm)