cl_lmplot <- function(data) {
  
  data %>%
    ggplot(aes(x = culmen_length_mm, y = body_mass_g))+
    geom_point(alpha = 0.8)+
    geom_smooth(method = "lm", col = "black")+
    stat_regline_equation()+
    facet_grid(~species)+
    labs(x = "Culmen length (mm)", y = "Body Mass (g)", title = "Culmen length in penguins", subtitle = "Is culmen length an accurate predictor of body mass in Adelie, Chinstrap and Gentoo penguins?", caption = "The figure represents the relationship between body mass and culmen length in Adelie, Chinstrap and Gentoo species. A linear regression was computed and fit to the data as a whole and to each species respectively.
         For Adelie penguins, the regression has a P value of 2.955e-13 with a T value of 8.015 and std.error at 11.79.For Chinstrap penguins, the regression has a P value of 7.11e-06 with a T value of 4.877 and std.error at 0.099. 
         For Gentoo penguins, the regression has a P value of 2e-16 with a T value of 9.866 and std.error at 0.0778.This shows that culmen length was an accurate predictor of body mass.")+
    theme_bw()+
    theme(plot.caption = element_text(hjust = 0.5, size = 8,face = "italic"), plot.caption.position = "plot", plot.title = element_text(face = "bold"), plot.subtitle = element_text(face = "italic"))
  
}