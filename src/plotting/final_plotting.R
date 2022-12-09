source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")
source("functions/cl_lmplot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

data <- read.csv("filtered_data/filteredData.csv")

labs <- c("Adelie","Chinstrap","Gentoo")
pallete <- c("#332288", "#44AA99", "#DDCC77")


cl_bm_plot <- cl_lmplot(data)

cl_bm_plot

savePlot_png("figures/finalPlot.png",30,10,300,1,cl_bm_plot)