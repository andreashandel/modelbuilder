# A helper function that takes a model and generates shiny UI elements

This function generates shiny UI inputs for a supplied model. This is a
helper function called by the shiny app.

## Usage

``` r
generate_shinyinput(
  use_mbmodel = FALSE,
  mbmodel = NULL,
  use_doc = FALSE,
  model_file = NULL,
  model_function = NULL,
  otherinputs = NULL,
  packagename = NULL
)
```

## Arguments

- use_mbmodel:

  TRUE/FALSE if mbmodel list should be used to generate UI

- mbmodel:

  a valid mbmodel object

- use_doc:

  TRUE/FALSE if doc of a model file should be parsed to make UI

- model_file:

  name/path to function file for parsing doc

- model_function:

  name of function who's formals are parsed to make UI

- otherinputs:

  a text string that specifies a list of other shiny inputs to include
  in the UI

- packagename:

  name of package using this function

## Value

A renderUI object that can be added to the shiny output object for
display in a Shiny UI

## Details

This function is called by the Shiny app to produce the Shiny input UI
elements. It produces UI by 3 different ways. 1. If use_mbmodel is TRUE,
an mbmodel list structure, which needs to be provided, is used 2. If
use_mbmodel is FALSE and use_doc is TRUE, the documentation header of
the function is used. For that approach, model_file needs to contain the
name/path to the R script for the function The doc needs to have a
specific format for this. 3. If both use_mbmodel and use_doc are FALSE,
the function formals are parsed and used as UI. For that approach,
model_function needs to specify the name of the model model_function is
assumed to be the name of a function. The formals of the function will
be parsed to create UI elements. Non-numeric arguments of functions are
removed and need to be included in the otherinputs argument.
