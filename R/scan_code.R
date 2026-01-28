

#' Scan Code
#'
#' @param path a path to scan
#'
#' @returns a data.frame with counts for the scanned files
#' @export
#'
#' @examples
#' scan_code()

scan_code <- function(path = getwd()){

  # -- list matching files in path
  r = list.files(path = path,
                 pattern = '.R$',
                 full.names = TRUE,
                 recursive = TRUE)

  # -- call count_lines
  df <- as.data.frame(t(sapply(r, count_lines)))

  # -- add total counts & return
  rbind(df, all_files = colSums(df))

}
