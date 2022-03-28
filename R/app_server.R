#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @importFrom magrittr %>%
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  mod_ploting_module_server("ploting_module")
}
