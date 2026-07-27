# Produce a default stratifier list for use with the generate_stratification function

The model needs to adhere to the structure specified by the modelbuilder
package. Models built using the modelbuilder package automatically have
the right structure. A user can also build a model list structure
themselves following the modelbuilder specifications. If the user
provides a file name, this file needs to be an RDS file and contain a
valid modelbuilder model structure.

## Usage

``` r
generate_stratifier_list(mbmodel)
```

## Arguments

- mbmodel:

  modelbuilder model structure, either as list object or file name

## Value

The function returns a stratifier object (a list).

## Details

This function takes as input a modelbuilder model and returns a list of
all parameters and the variables by which to stratify the default is to
stratify by each variable that shows up in a flow for that parameter

## Author

Andrew Tredennick and Andreas Handel
