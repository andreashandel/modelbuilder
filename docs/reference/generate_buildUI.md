# A helper function that takes a model and generates the shiny UI elements for the build tab

This function generates empty inputs or inputs for a supplied model.
This is a helper function called by the shiny app.

## Usage

``` r
generate_buildUI(mbmodel, output)
```

## Arguments

- mbmodel:

  a modelbuilder model structure

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
