# Turn a model into a set of differential equations displayed as LaTeX/HTML object

The model needs to adhere to the structure specified by the modelbuilder
package models built using the modelbuilder package automatically have
the right structure a user can also build a model list structure
themselves following the specifications if the user provides a file
name, this file needs to contain an object called 'model' and contain a
valid modelbuilder model structure

## Usage

``` r
generate_equations(mbmodel)
```

## Arguments

- mbmodel:

  modelbuilder model structure, either as list object or file name

## Value

The function returns equations as an html object

## Details

This function takes as input a model and produces output that displays
ODE equations

## Author

Andreas Handel
