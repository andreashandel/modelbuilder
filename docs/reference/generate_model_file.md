# Create code that encodes a modelbuilder model

The model needs to adhere to the structure specified by the modelbuilder
package. Models built using the modelbuilder package automatically have
the right structure. A user can also build a model list structure
themselves following the modelbuilder specifications. The file name must
contain a valid modelbuilder Rds file.

## Usage

``` r
generate_model_file(mbmodel, location = NULL, filename = NULL)
```

## Arguments

- mbmodel:

  modelbuilder model structure, either as list object or file name (with
  complete path)

- location:

  a path to save the code to. If NULL, defaults to current directory.

- filename:

  a filename to save the code to. If NULL, a default is generated
  (recommended).

## Value

The function does not return anything Instead, it writes an R file into
the specified directory the default name of the file is
model\$title_file.R if the user specifies a file name, it will be that
name

## Details

This function takes as input an Rds file that has a modelbuilder model
stored as list it translates the list into generative code for easy,
non-GUI edits to a model

## Author

Andreas Handel
