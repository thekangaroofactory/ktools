

#' Count Lines
#'
#' @param p a connection object or a character string (will be passed to readLines())
#' @param verbose a logical (FALSE by default) if counts should be printed to the console
#'
#' @returns a named vector
#' @export
#'
#' @details
#' Code lines ending with a comment are counted as code lines (hence ignored from comments)
#'
#' @examples
#' infile <- tempfile()
#'
#' lines <- "#' This\n#'\n\n# comment\np <- 1\n\nif(p==1) print(p)\n"
#'
#' writeLines(lines, infile)
#' count_lines(infile)

count_lines <- function(p, verbose = FALSE) {

  # -- read
  l = readLines(p)

  # ----------------------------------------------------------------------------
  # Total lines
  # ----------------------------------------------------------------------------

  total_lines <- length(l)
  if(verbose) message("Number of lines: ", total_lines)


  # ----------------------------------------------------------------------------
  # Spacing
  # ----------------------------------------------------------------------------
  # Empty lines = "" elements

  empty_lines <- length(l[grepl("^$", l)])
  if(verbose) message("- spacing (empty lines): ", empty_lines, " / ", round(empty_lines / total_lines * 100, digits = 0), "%")


  # ----------------------------------------------------------------------------
  # Function documentation
  # ----------------------------------------------------------------------------
  # Valid documentation lines = "#'xxx" (#'\n are filtered)

  doc_lines <- length(l[grepl("^#'.+", l)])
  if(verbose) message("- function documentation: ", doc_lines, " / ", round(doc_lines / total_lines * 100, digits = 0), "%")


  # ----------------------------------------------------------------------------
  # Comments
  # ----------------------------------------------------------------------------
  # Valid comment lines = "# xxx" (will not count comments at the end of a line)

  comment_lines <- length(l[grepl("^ *# .+", l)])
  if(verbose) message("- comments: ", comment_lines, " / ", round(comment_lines / total_lines * 100, digits = 0), "%")


  # ----------------------------------------------------------------------------
  # Code
  # ----------------------------------------------------------------------------
  # Basically anything else

  code_lines <- total_lines - (empty_lines + doc_lines + comment_lines)
  if(verbose) message("- code: ", code_lines, " / ", round(code_lines / total_lines * 100, digits = 0), "%")

  # -- return
  c(total = total_lines,
    spacing = empty_lines,
    doc = doc_lines,
    comment = comment_lines,
    code = code_lines)

}
