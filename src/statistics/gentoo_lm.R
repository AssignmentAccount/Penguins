source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

pdata <- read.csv("filtered_data/filteredData.csv")

Gentoo_only <- pdata[152:274,]

histograms(Gentoo_only)

g_cl_bodymass_lm <- lm_function_sqrt(Gentoo_only)

summary (g_cl_bodymass_lm)

par(mfrow=c(2,2))
plot(g_cl_bodymass_lm)