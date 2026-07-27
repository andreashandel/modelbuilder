# Extract the math symbols from a flow

The flow must be a character string of typical modelbuilder model
structure. The function also concatenates parentheses and the notation
before and after them as necessary.

## Usage

``` r
get_math(flow, flowsymbols)
```

## Arguments

- flow:

  A modelbuilder flow, which is a character string.

- flowsymbols:

  A character vector of the flow variables and parameters, as returned
  from `get_vars_pars`.

## Value

A character vector of the math symbols, in order.

## Details

This function takes as input a modelbuilder flow and extracts the math
symbols/notation.

## Author

Andrew Tredennick and Andreas Handel
