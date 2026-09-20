# Build onClick Event

This function helps building onclick event to pass complex instructions
to a given listener. This is particularly useful when working with lists
of links, most probably generated within an apply instruction over a
data.frame.

## Usage

``` r
onclick_event(target, value = "this.id", namespace = NULL, event = TRUE)
```

## Arguments

- target:

  the input to update on click.

- value:

  the value to send to the input (see details).

- namespace:

  the id of the module to target if so.

- event:

  should Shiny treat it as an event.

## Value

a character string.

## Details

`target` defines the name of the input entry to update (i.e.
input\$target).

`value` will be passed to the `target` input. By default, it will send
the id of the HTML tag (ex: actionLink, actionButton).

This behavior can be tuned to send a more complex instruction. In
particular, a list can be passed to the target input (see example).

## See also

[`action_link()`](https://thekangaroofactory.github.io/ktools/reference/action_link.md)

## Examples

``` r
if (FALSE) { # \dontrun{
# baseline:
# input$btn_clicked will get the id of the html tag
onclick_event(target = "btn_clicked")

# custom value:
# input$btn_clicked will get "foo"
onclick_event(target = "btn_clicked", value = "foo")

# custom list:
# input$btn_clicked will get the list
onclick_event(target = "btn_clicked", value = list(a = "foo", b = "bar"))

# -- shiny module:
# input$btn_clicked inside "module_id" will get 12
onclick_event(target = "btn_clicked", value = 12, namespace = "module_id")
} # }
```
