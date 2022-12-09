source("functions/libraryLoader.R")
source("functions/cleaning.R")
source("functions/saving_plot.R")

libs <- c("rlang","palmerpenguins","ggplot2","janitor","dplyr","svglite","ragg")

library_loader(libs)

raw_data <- penguins_raw

clean_data <- cleaning(raw_data)

badPlot <- ggplot(clean_data, aes(x = island, y = body_mass_g))+
  geom_point()

badPlot

savePlot_svg("figures/badPlot.svg",10,badPlot)

savePlot_png("figures/badPlot.png",50,50,30,5,badPlot)