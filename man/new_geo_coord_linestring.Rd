% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo-coord-linestring.R
\name{new_geo_coord_linestring}
\alias{new_geo_coord_linestring}
\alias{new_geo_coord_multilinestring}
\alias{validate_geo_coord_linestring}
\alias{validate_geo_coord_multilinestring}
\alias{is_geo_coord_linestring}
\alias{is_geo_coord_multilinestring}
\alias{format.geo_coord_linestring}
\alias{print.geo_coord_linestring}
\alias{format.geo_coord_multilinestring}
\alias{print.geo_coord_multilinestring}
\alias{vec_ptype_abbr.geo_coord_linestring}
\alias{vec_ptype_abbr.geo_coord_multilinestring}
\alias{as_geo_coord_linestring}
\alias{as_geo_coord_linestring.default}
\alias{as_geo_coord_multilinestring}
\alias{as_geo_coord_multilinestring.default}
\title{S3 Details for (multi)linestring geometries}
\usage{
new_geo_coord_linestring(x = list(xy = geo_xy(), feature = integer(0)))

new_geo_coord_multilinestring(
  x = list(xy = geo_xy(), feature = integer(0), part = integer(0))
)

validate_geo_coord_linestring(x)

validate_geo_coord_multilinestring(x)

is_geo_coord_linestring(x)

is_geo_coord_multilinestring(x)

\method{format}{geo_coord_linestring}(x, ...)

\method{print}{geo_coord_linestring}(x, ...)

\method{format}{geo_coord_multilinestring}(x, ...)

\method{print}{geo_coord_multilinestring}(x, ...)

\method{vec_ptype_abbr}{geo_coord_linestring}(x, ...)

\method{vec_ptype_abbr}{geo_coord_multilinestring}(x, ...)

as_geo_coord_linestring(x, ...)

\method{as_geo_coord_linestring}{default}(x, ...)

as_geo_coord_multilinestring(x, ...)

\method{as_geo_coord_multilinestring}{default}(x, ...)
}
\arguments{
\item{x}{A (possibly) \code{\link[=geo_coord_linestring]{geo_coord_linestring()}} or \code{\link[=geo_coord_multilinestring]{geo_coord_multilinestring()}}}

\item{...}{Unused}
}
\description{
S3 Details for (multi)linestring geometries
}
