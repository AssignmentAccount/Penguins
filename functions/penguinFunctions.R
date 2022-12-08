remove_empty_flipLength <- function(data) {
  
  data %>%
    filter(!is.na(flipper_length_mm)) %>%
    select(species, flipper_length_mm)
  
}

process <- function(data) {
  
  data %>%
    filter(!is.na(flipper_length_mm)) %>%
    filter(!is.na(culmen_depth_mm)) %>%
    filter(!is.na(culmen_length_mm)) %>%
    filter(!is.na(body_mass_g))
  
}

filterData <- function(data) {
  
  data %>%
    dplyr::select(species, flipper_length_mm, culmen_length_mm, culmen_depth_mm, body_mass_g)
  
}