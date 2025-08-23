
# -- helper: create folder
create_folder <- function(){

  # -- create folder
  testdata_path <- file.path(system.file("tests", "testthat", package = "ktools"), "testdata")
  dir.create(testdata_path, recursive = TRUE, showWarnings = TRUE)

  # -- return
  testdata_path

}

# -- helper: cleanup function
clean_all <- function(path = NULL){

  unlink(path, recursive = TRUE)

}
