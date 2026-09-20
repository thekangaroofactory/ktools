

#' Action Link Input(s)
#'
#' @description
#' Wrapper function around shiny::actionLink() to produce multiple action
#' links with unique ids but same target input.
#'
#' @param id a vector or list of ids.
#' @param pattern the pattern to generate the actionLink ids.
#' @param label the label of the link.
#' @param icon an optional icon (passed to [shiny::actionLink()]).
#' @param target the name of the target input.
#' @param value an optional value to pass to the target input.
#' @param namespace an option character string, for the id of the module.
#' @param event a logical if shiny should treat the click as an event.
#' @param as_character a logical if the shiny.tag should be returned or a character value.
#' @param ... Named attributes to pass to the shiny::actionLink() function.
#'
#' @details
#' The actionLink `inputId` will be computed based on `namespace`, `pattern` and `id`
#' so that it should be unique across different module instances.
#'
#' All produced actionLinks will target the same input entry with different values.
#' By default, it will send the id of the link, which could be used a character
#' string to decode.
#'
#' This behavior can be tuned to send a list (see [onclick_event()]).
#' When `value` is a list, the id will be added to that list so that one can detect
#' what link was clicked.
#'
#' When the target input belongs to a shiny module server, the id of the module
#' server instance should be passed to `namespace`.
#'
#' @seealso [onclick_event()], [shiny::actionLink()]
#'
#' @returns a list of HTML tags or character values.
#' @export
#'
#' @examples
#' \dontrun{
#' # basic use case (single actionLink):
#' action_link(id = "foo", label = "click", target = "on_click")
#'
#' # Send tag id to the target input:
#' # input$on_click will get "action_link_1", "action_link_2", "action_link_3"
#' action_link(id = c(1,2,3), label = "click", target = "on_click", value = NULL)
#'
#' # Send specific pattern to the target input:
#' # input$on_click will get "do_this_1", "do_this_2" or "do_this_3"
#' action_link(id = c(1,2,3), label = "click", target = "on_click", pattern = "do_this")
#'
#' # Send specific value to the target input:
#' # input$on_click will get "do_this" no matter what link is clicked
#' action_link(id = c(1,2,3), label = "click", target = "on_click", value = "do_this")
#'
#' # Send a list of values to the target input:
#' # input$on_click will get list(a = 1, id = 1) after clicking on the first link
#' action_link(id = c(1,2,3), label = "click", target = "on_click", value = list(a = 1))
#'
#' # Use with Shiny module:
#' action_link(id = c(1,2,3), label = "click", target = "on_click",
#'             pattern = "do_this", namespace = "module_id")
#' }

action_link <- function(id, pattern = "action_link", label = "", icon = NULL, target, value = "this.id", namespace = NULL, event = TRUE, as_character = FALSE, ...){

  # -- namespace (still works when NULL)
  ns <- shiny::NS(namespace)

  # -- apply over the list of ids
  lapply(id, function(x){

    a <- shiny::actionLink(inputId = ns(paste0(pattern, "_", x)),
                           label = label,
                           icon = icon,
                           onclick = onclick_event(target, if(is.list(value)) append(value, list(id = x)) else value, namespace, event),
                           ...)

    if(as_character)
      paste(a)
    else a

  })

}
