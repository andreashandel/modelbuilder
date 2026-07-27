# Run simulations for a modelbuilder model object.

This function takes a modelbuilder model and model settings. It runs the
simulation determined by the model settings and returns simulation
results. Normally run when triggered by the user through the UI. Can
also be called directly.

## Usage

``` r
analyze_model(modelsettings, mbmodel)
```

## Arguments

- modelsettings:

  a list of model settings:

  - modeltype : A string indicating the type of model. Accepted values
    are "ode", "stochastic", and "discrete".

  - rngseed : A random number seed for the simulation.

  - nreps : Number of times to run the simulation.

  - plotscale : Log or linear scale for the x-axis, y-axis, or both.

  - scanparam : 1 if we want to scan over a parameter, 0 otherwise. Not
    available for stochastic models.

  - any input to model whose default should be overwritten

- mbmodel:

  A list which is a valid modelbuilder model object.

## Value

A list named "result" with each simulation and associated metadata as a
sub-list.

## Details

This function runs a modelbuilder model for specific settings.
