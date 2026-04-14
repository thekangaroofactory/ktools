

#' Output Shiny UI
#'
#' @description
#' Basic wrappers around *Output functions
#'
#' @param id the id of the module. Can be a vector of ids in case of sub module.
#' @param output the name of the output
#' @param type the type of output: ui (default), plot, table
#'
#' @returns the ui object
#' @export
#'
#' @examples
#' simple_ui(id = "my_module", output = "my_output")

simple_ui <- function(id, output, type = "ui", ...){

  # -- check param
  if(length(id) > 1)
    id <- paste(id, collapse = ns.sep)

  # -- namespace
  ns <- NS(id)

  # -- return
  switch(type,

         # -- renderUI
         ui = uiOutput(ns(output), ...),

         # -- renderPlot
         plot = plotOutput(ns(output), ...),

         # -- renderDT
         table = DT::DTOutput(ns(output), ...))

}
