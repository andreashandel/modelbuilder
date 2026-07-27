# A helper function that removes a the shiny UI elements for a flow of the build tab

This function removes inputs for the flows of a specified variable. This
is a helper function called by the shiny app.

## Usage

``` r
remove_model_flow(values, input, output)
```

## Arguments

- values:

  a shiny variable keeping track of UI elements

- input:

  shiny input structure

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
