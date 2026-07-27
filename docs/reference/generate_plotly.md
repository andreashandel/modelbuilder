# A helper function that takes simulation results and produces plotly plots

This function generates plots to be displayed in the Shiny UI. This is a
helper function. This function processes results returned from the
simulation, supplied as a list.

## Usage

``` r
generate_plotly(res)
```

## Arguments

- res:

  A list structure containing all simulation results that are to be
  plotted. The length of the main list indicates the number of separate
  plots to make. Each list entry is itself a list, and corresponds to
  one plot and needs to contain the following information/elements:\
  1. A data frame list element called "dat" or "ts". If the data frame
  is "ts" it is assumed to be a time series and by default a line plot
  will be produced and labeled Time/Numbers. For plotting, the data
  needs to be in a format with one column called xvals, one column
  yvals, one column called varnames that contains names for different
  variables. Varnames needs to be a factor variable or will be converted
  to one. If a column 'varnames' exist, it is assumed the data is in the
  right format. Otherwise it will be transformed. An optional column
  called IDvar can be provided for further grouping (i.e. multiple lines
  for stochastic simulations). If plottype is 'mixedplot' an additional
  column called 'style' indicating line or point plot for each variable
  is needed.\
  2. Meta-data for the plot, provided in the following variables:\
  optional: plottype - One of "Lineplot" (default is nothing is
  provided),"Scatterplot","Boxplot", "Mixedplot".\
  optional: xlab, ylab - Strings to label axes.\
  optional: xscale, yscale - Scaling of axes, valid ggplot2 expression,
  e.g. "identity" or "log10".\
  optional: xmin, xmax, ymin, ymax - Manual min and max for axes.\
  optional: makelegend - TRUE/FALSE, add legend to plot. Assume true if
  not provided.\
  optional: legendtitle - Legend title, if NULL/not supplied, default is
  used\
  optional: legendlocation - if "left" is specified, top left. Otherwise
  top right.\
  optional: linesize - Width of line, numeric, i.e. 1.5, 2, etc. set to
  1.5 if not supplied.\
  optional: title - A title for each plot.\
  optional: for multiple plots, specify res\[\[1\]\]\$ncols to define
  number of columns\

## Value

A plotly plot structure for display in a Shiny UI.

## Details

This function can be called to produce plots, i.e. those displayed for
each app. The input needed by this function is produced by either
calling the run_model() function (as done when going through the UI) or
manually transforming the output from a simulate\_ function into the
correct list structure explained below.

## Author

Yang Ge, Andreas Handel
