# A helper function that adds a variable to the shiny UI elements of the build tab

This function adds inputs for a new variable. This is a helper function
called by the shiny app.

## Usage

``` r
add_model_var(values, output, input, newVarNumber)
```

## Arguments

- values:

  a shiny variable keeping track of UI elements

- output:

  shiny output structure

- input:

  shiny input structure

- newVarNumber:

  the variable number to be assigned

## Value

No direct return. output structure is modified to contain text for
display in a Shiny UI

## Details

This function is called by the Shiny server to produce the Shiny input
UI elements for the build tab.

## Author

Andreas Handel
