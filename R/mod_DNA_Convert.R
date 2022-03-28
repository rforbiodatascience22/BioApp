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
  tagList(fluidRow(
    column(8, "DNA_sequence"),
    column(4, "random_dna_length", "generate_dna_button")
  ),
  "peptide_sequence"
  mod_dna_expression_ui <- function(id){
    ns <- NS(id)
    tagList(
      fluidRow(
        column(8, shiny::uiOutput(ns("DNA"))),
        column(4, shiny::numericInput(
          inputId = ns("dna_length"),
          value = 6000,
          min = 3,
          max = 100000,
          step = 3,
          label = "Random DNA length"
        ),
        shiny::actionButton(
          inputId = ns("generate_dna"),
          label = "Generate random DNA", style = "margin-top: 18px;"
        ))
      ),
      shiny::verbatimTextOutput(outputId = ns("peptide")) %>%
        shiny::tagAppendAttributes(style = "white-space: pre-wrap;")

    )
  } )
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
