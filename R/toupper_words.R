

#' Capitalize First Letters
#'
#' @param s a character string
#' @param strict a logical to indicate if other characters should be forced to lower
#'
#' @returns a character string
#' @export
#'
#' @examples
#' toupper_words("this is an example")

toupper_words <- function(s, strict = FALSE) {

  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if(strict) tolower(s) else s},
                           sep = "", collapse = " " )

  sapply(strsplit(s, split = " "), cap, USE.NAMES = !is.null(names(s)))

}
