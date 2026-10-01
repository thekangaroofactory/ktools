

#' Sequence of Timestamps
#'
#' `r lifecycle::badge("deprecated")`
#'
#' @param n the desired output vector length.
#'
#' @return a numeric vector of timestamps.
#' @export
#'
#' @examples
#' \dontrun{
#' seq_timestamp(n = 2)}

seq_timestamp <- function(n = 2){

  .Deprecated(new = "replicate(10, uuid())")

  # -- test if arg is an integer
  if(n %% 1 != 0)
    n <- round(n)

  # -- init sequence
  id_seq <- NULL

  # -- security test: until the output sequence has the desired length
  # based on tests, one iteration is enough but this will provide more robust output
  while(length(unique(id_seq)) != n){

    id_seq <- replicate(n = n, {
      Sys.sleep(0.0005)
      ktools::getTimestamp(silent = FALSE)})

  }

  # -- return
  id_seq

}
