# Basic plotting for adjacency lists

Plots an adjacency list as a set of nodes and edges, with optional
coordinate values for each node. Edge thickness is proportional to the
number of edges between each pair of nodes. Self loops are represented
with larger points.

## Usage

``` r
# S3 method for class 'adj'
plot(x, y = NULL, edges = NULL, nodes = TRUE, xlab = NA, ylab = NA, ...)
```

## Arguments

- x:

  An `adj` list

- y:

  Optional matrix of coordinates for each node. If `NULL`, nodes are
  plotted along the diagonal. Other types are accepted as long as they
  are convertible to a 2-column matrix with `as.matrix(y)[, 1:2]`, which
  is run internally.

- edges:

  Type of line to use when drawing edges. Passed to
  [`graphics::lines()`](https://rdrr.io/r/graphics/lines.html). When `y`
  is `NULL`, defaults to `"s"` (step function); otherwise defaults to
  `"l"` for a straight line.

- nodes:

  If `TRUE`, nodes are plotted as points; if `FALSE`, only edges are
  plotted.

- xlab, ylab:

  Labels for the x- and y-axes.

- ...:

  Additional arguments passed on to the initial
  [`plot()`](https://rdrr.io/r/graphics/plot.default.html) of the nodes.

## Value

`NULL`, invisibly.

## Examples

``` r
plot(adj(2, c(1, 3), 2))

plot(adj(2, c(1, 2, 3), c(2, 2, 2), self_loops="allow", duplicates="allow"))


a <- adj(konigsberg$bridge_to, ids = konigsberg$area, duplicates = "allow")
plot(a, konigsberg[c("x", "y")])
```
