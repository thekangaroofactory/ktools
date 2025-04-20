

# ------------------------------------------------------------------------------
# Module Server logic
# ------------------------------------------------------------------------------

module_server <- function(id) {
  moduleServer(id, function(input, output, session) {

    # --------------------------------------
    # Init
    # --------------------------------------

    MODULE <- paste0("[", id, "]")
    cat(MODULE, "Starting module server... \n")

    # -- get namespace
    ns <- session$ns


    # --------------------------------------------------------------------------
    # Outputs
    # --------------------------------------------------------------------------

    # -- sample_output
    #output$output <- renderText(paste("From the", id, "module"))


    # -- Return value
    # Define module return value here
    # (for reactives, return the reference instead of the value)


  })
}

