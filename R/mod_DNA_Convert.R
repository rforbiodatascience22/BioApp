#' DNA_Convert UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_DNA_Convert_ui <- function(id){
  ns <- NS(id)
  tagList(
  )
}

#' DNA_Convert Server Functions
#'
#' @noRd
mod_DNA_Convert_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_DNA_Convert_ui("DNA_Convert_1")

## To be copied in the server
# mod_DNA_Convert_server("DNA_Convert_1")
