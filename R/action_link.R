

#' Action Link Input(s)
#'
#' @description
#' Wrapper function around shiny::actionLink() to produce multiple action
#' links with unique inputId's and same target input.
#'
#' @param id a vector or list of ids.
#' @param label the label for the actionLink.
#' @param target the name of the target input.
#' @param ns the namespace function to use.
#' @param pattern the pattern to generate unique inputId's.
#' @param as_character a logical if the shiny.tag should be returned or a character value.
#'
#' @details
#' The actionLink inputId will be computed based on `ns("pattern_id")` so that it should be unique
#' across different module instances.
#'
#' All produced actionLinks will target the same input with different values.
#' `input$target` will receive the inputId, from which one can extract the source id for example.
#'
#' If used from the main server, skip `ns`.
#'
#' @returns a list of shiny tags or character values.
#' @export
#'
#' @examples
#' \dontrun{
#' # -- basic use case (single actionLink):
#' action_link(id = "foo", label = "click", target = "on_click")
#'
#' # -- Send tag id to the target input:
#' # input$on_click will get "action_link_1", "action_link_2", "action_link_3"
#' action_link(id = c(1,2,3), label = "click", target = "on_click", value = NULL)
#'
#' # -- Send specific pattern to the target input:
#' # input$on_click will get "do_this_1", "do_this_2" or "do_this_3"
#' action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this")
#'
#' # -- Send specific value to the target input:
#' # input$on_click will get "do_this" no matter what link is clicked
#' action_link(id = c(1,2,3), label = "click", target = "on_click", value = "do_this")
#'
#' # -- Use with Shiny module:
#' action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this", namespace = "mod1")
#' }

action_link <- function(id, label, target, value = NULL, namespace = NULL, pattern = "action_link", as_character = FALSE){

  # -- namespace (ok when NULL)
  ns <- shiny::NS(namespace)

  # -- apply over the ids
  lapply(id, function(x){

    a <- shiny::actionLink(inputId = ns(paste0(pattern, "_", x)),
                    label = label,
                    onclick = onclick_event(target,
                                            value = value,
                                            namespace = namespace))

    if(as_character)
      paste(a)
    else a

  })

}
