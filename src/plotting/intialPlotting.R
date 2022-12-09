source("functions/libraryLoader.R")
source("functions/statisticalFunctions.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","ragg","svglite","ggfortify","multcomp","ggpubr")

library_loader(libs)

data <- read.csv("filtered_data/filteredData.csv")

labs <- c("Adelie","Chinstrap","Gentoo")
pallete <- c("#332288", "#44AA99", "#DDCC77")


preplot_cl <- ggplot(data, aes(x = culmen_length_mm, y = body_mass_g, colour = species))+
  geom_point()+
  labs(x = "Culmen length (mm)", y = "Body Mass (g)")+
  scale_colour_manual(values = pallete, labels = labs)+
  theme_bw()

preplot_cl

savePlot_png("figures/intialPlot.png",30,30,600,1.8,preplot_cl)

