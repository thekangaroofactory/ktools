

#' Build onClick Event
#'
#' @description
#' This function helps building onclick instruction for a listener
#' to apply / decode.
#' This is particularly usefull when working with lists of links, most probably
#' generated within an apply instruction over a data.frame.
#'
#' @param target the input to update on click
#' @param value the value to send to the input
#' @param namespace the id of the module to target if so
#'
#' @details
#' `target` defines the name of the input entry to update (i.e. input$target).
#'
#' When `value` is NULL (default), the id of the html tag on which the onClick
#' is applied will be sent.
#' This enables both strategies:
#' - send the id of the tag that has been clicked
#' - send an instruction for the target to decode (see examples)
#'
#' @returns a string to pass to an onclick parameter
#' @export
#'
#' @examples
#' # -- basic use case:
#' # input$btn_clicked will get the id of the html tag
#' onclick_event(target = "btn_clicked")
#'
#' # -- custom value:
#' # input$btn_clicked will get "foo" each time the tag is clicked
#' onclick_event(target = "btn_clicked", value = "foo")
#'
#' # -- shiny module:
#' # input$btn_clicked inside "module" will get 12 each time the tag is clicked
#' onclick_event(target = "btn_clicked", value = 12, namespace = "module")

onclick_event <- function(target, value = NULL, namespace = NULL){

  # -- namespace (ok when NULL)
  ns <- shiny::NS(namespace)

  # -- check value
  if(is.null(value))
    value <- "this.id"

  # -- return
  paste0('Shiny.setInputValue(\"', ns(target), '\", ', value, ', {priority: \"event\"})')

}
