source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

pdata <- read.csv("filtered_data/filteredData.csv")

Adelie_only <- pdata[1:151,]

histograms(Adelie_only)

a_cl_bodymass_lm <- lm_function(Adelie_only)

summary(a_cl_bodymass_lm)

par(mfrow=c(2,2))
plot(a_cl_bodymass_lm)