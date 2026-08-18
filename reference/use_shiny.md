# Setup Shiny App

The function is used to setup a Shiny App with optional module based on
templates.

**\[experimental\]**

## Usage

``` r
use_shiny(path = getwd(), app_dir = "shinyapp", data_dir = NULL, module = F)
```

## Arguments

- path:

  the path where to setup the Shiny app (default = working directory)

- app_dir:

  the name of the app folder (default = "shinyapp")

- data_dir:

  the path of the data (if any)

- module:

  if a Shiny module should be created or not (default: FALSE)

## Value

NULL (invisibly)

## Details

When data_dir is null, DATA_HOME environment variable will not be set.

## Examples

``` r
if (FALSE) { # \dontrun{
use_shiny()
} # }
```
