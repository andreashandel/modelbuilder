# Extract the variables and parameters from a flow

The flow must be a character string of typical modelbuilder model
structure.

## Usage

``` r
get_vars_pars(flow)
```

## Arguments

- flow:

  A modelbuilder flow, which is a character string.

## Value

A character vector of the variables and parameters, in order.

## Details

This function takes as input a modelbuilder flow and extracts the
variables and parameters (excludes the math notation).

## Author

Andrew Tredennick and Andreas Handel
