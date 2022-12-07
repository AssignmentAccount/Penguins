remove_empty_flipLength <- function(data) {
  
  data %>%
    filter(!is.na(flipper_length_mm)) %>%
    select(species, flipper_length_mm)
  
}