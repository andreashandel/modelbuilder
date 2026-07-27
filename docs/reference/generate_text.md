# A helper function that takes result from the simulators and produces text output

This function generates text to be displayed in the Shiny UI. This is a
helper function. This function processes results returned from the
simulation, supplied as a list.

## Usage

``` r
generate_text(res)
```

## Arguments

- res:

  A list structure containing all simulation results that are to be
  processed. This function is meant to be used together with
  generate_plots() and requires similar input information. See the
  generate_plots() function for most details. Specific entries for this
  function are 'maketext', 'showtext' and 'finaltext'. If 'maketext' is
  set to TRUE (or not provided) the function processes the data
  corresponding to each plot and reports min/max/final values
  (lineplots) or correlation coefficient (scatterplot) If 'maketext' is
  FALSE, no text based on the data is generated. If the entries
  'showtext' or 'finaltext' are present, their values will be returned
  for each plot or for all together. The overall message of finaltext
  should be in the 1st plot.

## Value

HTML formatted text for display in a Shiny UI.

## Details

This function is called by the Shiny server to produce output returned
to the Shiny UI.

## Author

Andreas Handel
