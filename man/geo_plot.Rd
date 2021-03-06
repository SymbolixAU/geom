% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo-plot.R
\name{geo_plot}
\alias{geo_plot}
\alias{geo_plot_add}
\alias{plot.geo_coord}
\alias{plot.geo_wkt}
\alias{plot.geo_wkb}
\alias{geo_plot_add.default}
\alias{geo_plot_add.geo_coord_point}
\alias{geo_plot_add.geo_coord_linestring}
\alias{geo_plot_add.geo_coord_polygon}
\alias{geo_plot_add.geo_coord_multipoint}
\alias{geo_plot_add.geo_coord_multilinestring}
\alias{geo_plot_add.geo_coord_multipolygon}
\title{Plot geometry vectors}
\usage{
geo_plot(x, ..., asp = 1, xlim = NULL, ylim = NULL, xlab = "", ylab = "")

geo_plot_add(x, ...)

\method{plot}{geo_coord}(x, ...)

\method{plot}{geo_wkt}(x, ...)

\method{plot}{geo_wkb}(x, ...)

\method{geo_plot_add}{default}(x, ...)

\method{geo_plot_add}{geo_coord_point}(x, ...)

\method{geo_plot_add}{geo_coord_linestring}(x, ...)

\method{geo_plot_add}{geo_coord_polygon}(x, ..., rule = "evenodd")

\method{geo_plot_add}{geo_coord_multipoint}(x, ...)

\method{geo_plot_add}{geo_coord_multilinestring}(x, ...)

\method{geo_plot_add}{geo_coord_multipolygon}(x, ..., rule = "evenodd")
}
\arguments{
\item{x}{A geometry-like object}

\item{...}{Passed to plotting functions for features: \code{\link[graphics:points]{graphics::points()}}
for point and multipoint geometries, \code{\link[graphics:lines]{graphics::lines()}} for linestring
and multilinestring geometries, and \code{\link[graphics:polypath]{graphics::polypath()}} for polygon
and multipolygon geometries.}

\item{asp, xlim, ylim, xlab, ylab}{Passed to \code{\link[graphics:plot]{graphics::plot()}}}

\item{rule}{One of "evenodd" or "winding": controls the appearance of
holes in polygons. See \code{\link[graphics:polypath]{graphics::polypath()}}.}
}
\value{
\code{x}, invisibly.
}
\description{
Currently, only geometries of the same type can be plotted in the same
plot call (geometries are promoted to mutli-geometries if needed).
}
\examples{
geo_plot(geo_wkt("POINT (10 40)"))
geo_plot(geo_wkt("LINESTRING (30 10, 10 30, 40 40)"))
geo_plot(geo_wkt("MULTIPOINT ((10 40), (40 30))"))
geo_plot(geo_wkt("MULTILINESTRING ((10 10, 20 20, 10 40), (40 40, 30 30, 40 20, 30 10))"))
geo_plot(geo_wkt("POLYGON ((30 10, 10 30, 40 40, 30 10))"))
geo_plot(
  geo_wkt(
    "MULTIPOLYGON (((40 40, 20 45, 45 30, 40 40)),
      ((20 35, 10 30, 10 10, 30 5, 45 20, 20 35), (30 20, 20 15, 20 25, 30 20)))"
  ),
  col = "grey10"
)

}
