

#' Output Shiny UI
#'
#' @description
#' Basic wrappers around *Output functions
#'
#' @param id the id of the module. Can be a vector of ids in case of sub module.
#' @param output the name of the output
#' @param type the type of output: ui (default), plot, table
#' @param ... other arguments to pass to the *Output function
#'
#' @returns the ui object
#' @importFrom shiny ns.sep
#' @importFrom shiny uiOutput
#' @importFrom shiny plotOutput
#' @importFrom DT DTOutput
#' @export
#'
#' @examples
#' simple_ui(id = "my_module", output = "my_output")

simple_ui <- function(id, output, type = "ui", ...){

  # -- check param
  if(length(id) > 1)
    id <- paste(id, collapse = shiny::ns.sep)

  # -- namespace
  ns <- shiny::NS(id)

  # -- return
  switch(type,

         # -- renderUI
         ui = shiny::uiOutput(ns(output), ...),

         # -- renderPlot
         plot = shiny::plotOutput(ns(output), ...),

         # -- renderDT
         table = DT::DTOutput(ns(output), ...))

}
