# Generate a table of state variables, parameters, and initial values

The model needs to adhere to the structure specified by the modelbuilder
package. Models built using the modelbuilder package automatically have
the right structure. A user can also build a model list structure
themselves following the modelbuilder specifications. If the user
provides a file name, this file needs to be an RDS file and contain a
valid modelbuilder model structure.

## Usage

``` r
generate_tables(mbmodel, location = NULL, filename = NULL)
```

## Arguments

- mbmodel:

  modelbuilder model structure, either as list object or file name

- location:

  a path to save the simulation code to. If NULL, defaults to current
  directory.

- filename:

  a filename to save the simulation code to. If NULL, a default is
  generated (recommended).

## Value

The function does not return anything Instead, it writes a CSV file into
the specified directory; the default nams of the files are
parameter_table_model\$title.csv and parameter_table_model\$title.csv;
if the user specifies a file name, it will be that name

## Details

This function takes as input a modelbuilder model and exports a CSV
table of parameter/variable names, definitions, and initial values.

## Author

Andrew Tredennick and Andreas Handel
