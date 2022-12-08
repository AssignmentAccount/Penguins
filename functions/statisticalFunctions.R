histograms <- function(data) {
  
  hist(data$culmen_length_mm)
  hist(log(data$culmen_length_mm))
  hist(sqrt(data$culmen_length_mm))
  
}


lm_function <- function(data) {
  
  cl_bodymass_lm <- lm(body_mass_g ~ culmen_length_mm, data)
  
}

lm_function_log <- function(data) {
  
  cl_bodymass_lm <- lm(log(body_mass_g) ~ culmen_length_mm, data)
  
}

lm_function_sqrt <- function(data) {
  
  cl_bodymass_lm <- lm(sqrt(body_mass_g) ~ culmen_length_mm, data)
  
}