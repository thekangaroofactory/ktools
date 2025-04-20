

# ------------------------------------------------------------------------------
# Shiny module UI
# ------------------------------------------------------------------------------

# -- Define ui
module_UI <- function(id) {

  # -- namespace
  ns <- NS(id)

  # -- return
  wellPanel(textOutput(ns("output")))

}
