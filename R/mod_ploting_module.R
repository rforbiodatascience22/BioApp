#' ploting_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ploting_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("abundance")
        )
    )
  ))
}


    
#' ploting_module Server Functions
#'
#' @noRd 
mod_ploting_module_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide %>%
          replication::hist_from_seq() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

    
## To be copied in the UI
# mod_ploting_module_ui("ploting_module_1")
    
## To be copied in the server
# mod_ploting_module_server("ploting_module_1")
