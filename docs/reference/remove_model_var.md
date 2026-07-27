# A helper function that removes a variable to the shiny UI elements of the build tab

This function removes inputs for the last variable. This is a helper
function called by the shiny app.

## Usage

``` r
remove_model_var(values, output)
```

## Arguments

- values:

  a shiny variable keeping track of UI elements

- output:

  shiny output structure

## Value

No direct return. output structure is modified to contain text for
display in a Shiny UI

## Details

This function is called by the Shiny server to produce the Shiny input
UI elements for the build tab.

## Author

Andreas Handel
