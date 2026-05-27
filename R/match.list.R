

#' Match Lists
#'
#' @description
#' Matches a named list against the one provided as a reference.
#'
#' @param x a named list to check.
#' @param reference a named list to use as a reference.
#'
#' @details
#' The function will drop any element from `x` that does not fit with a name
#' found in `reference` and add missing ones.
#'
#' It will also check that elements in `x` have same classes as matching element in `reference`.
#'
#' @returns a list
#' @export
#'
#' @examples
#' match.list(x = list(foo = 1), reference = list(foo = 0, bar = "dummy"))

match.list <- function(x, reference){

  # -- check inputs
  stopifnot("x argument must be a list" = is.list(x))
  stopifnot("reference argument must be a list" = is.list(reference))

  # -- check elements in x againt reference
  missing <- reference[!names(reference) %in% names(x)]
  x <- x[names(x) %in% names(reference)]
  x <- c(x, missing)

  # -- check element classes vs reference
  check <- sapply(names(reference), function(y) identical(class(x[[y]]), class(reference[[y]])))
  if(any(!check))
    stop("The list contains element(s) with unexpected types: ", names(reference)[!check])

  # -- return
  x

}
