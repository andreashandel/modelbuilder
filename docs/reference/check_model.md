# A function that takes a modelbuilder model and checks it for errors

This function takes a modelbuilder model object, and checks that all
specifications and constraints for modelbuilder models are met and it is
a valid model

## Usage

``` r
check_model(mbmodel)
```

## Arguments

- mbmodel:

  A model object or file name and location for the model to be loaded.

## Value

An error message if the model is not properly formulated. If model is
ok, it returns NULL.

## Details

This function is a helper function
