

#' Capitalize First Letter
#'
#' @param x a character vector, or an object that can be coerced to character by as.character.
#'
#' @returns a character vector
#' @export
#'
#' @examples
#' toupperfirst("capitalize first letter")
#' toupperfirst(1)

toupperfirst <- function(x) {

  # -- check input type
  if (!is.character(x))
    x <- as.character(x)

  # -- capitalize first letter
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))

  # -- return
  x

}
