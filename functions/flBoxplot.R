fl_boxplot <- function(data) {
  
  data %>%
    ggplot(aes(x = species,y = flipper_length_mm)) +
    geom_boxplot(aes(color = species),width = 0.3,show.legend = FALSE)+
    geom_jitter(aes(color = species),alpha = 0.3,show.legend = FALSE,position = position_jitter(width = 0.2, seed = 0)) +
    scale_colour_manual(values = pallete) +
    scale_x_discrete(labels = labs) +
    labs(x = "Penguin Species",y = "Flipper Length (mm)")+
    theme_bw()
  
}