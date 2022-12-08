cleaning <- function(data) {
  
  data %>%
    clean_names() %>%
    select(-"comments") %>%
    select(-starts_with("delta")) %>%
    remove_empty(c("rows","cols"))
  
}
