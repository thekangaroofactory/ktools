

#' generate a sequence of timestamps
#'
#' @param n an integer representing the desired output vector length (see details)
#'
#' @return a numeric vector of timestamps
#' @export
#'
#' @details
#' n is expected to receive an integer. If a decimal value is provided, then round()
#' will be used, which means that 2.8 will return a length 3 vector.
#'
#' @examples
#' seq_timestamp(n = 2)


seq_timestamp <- function(n = 2){

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
