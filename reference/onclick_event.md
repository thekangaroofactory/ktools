# Build onClick Event

This function helps building onclick instruction for a listener to apply
/ decode. This is particularly usefull when working with lists of links,
most probably generated within an apply instruction over a data.frame.

## Usage

``` r
onclick_event(target, value = NULL, namespace = NULL)
```

## Arguments

- target:

  the input to update on click

- value:

  the value to send to the input

- namespace:

  the id of the module to target if so

## Value

a string to pass to an onclick parameter

## Details

`target` defines the name of the input entry to update (i.e.
input\$target).

When `value` is NULL (default), the id of the html tag on which the
onClick is applied will be sent. This enables both strategies:

- send the id of the tag that has been clicked

- send an instruction for the target to decode (see examples)

## Examples

``` r
# -- basic use case:
# input$btn_clicked will get the id of the html tag
onclick_event(target = "btn_clicked")
#> [1] "Shiny.setInputValue(\"btn_clicked\", this.id, {priority: \"event\"})"

# -- custom value:
# input$btn_clicked will get "foo" each time the tag is clicked
onclick_event(target = "btn_clicked", value = "foo")
#> [1] "Shiny.setInputValue(\"btn_clicked\", foo, {priority: \"event\"})"

# -- shiny module:
# input$btn_clicked inside "module" will get 12 each time the tag is clicked
onclick_event(target = "btn_clicked", value = 12, namespace = "module")
#> [1] "Shiny.setInputValue(\"module-btn_clicked\", 12, {priority: \"event\"})"
```
