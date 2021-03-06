% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo-wkt.R
\name{geo_wkt}
\alias{geo_wkt}
\title{Create and validate well-known text}
\usage{
geo_wkt(x = character())
}
\arguments{
\item{x}{A character vector containing well-known text}
}
\value{
A \code{\link[=new_geo_wkt]{new_geo_wkt()}}
}
\description{
Like other geo types, \code{\link[=geo_wkt]{geo_wkt()}} doesn't convert its input
but does validate it using \code{\link[=validate_geo_wkt]{validate_geo_wkt()}}.
To skip validation, use \code{\link[=new_geo_wkt]{new_geo_wkt()}}.
}
\examples{
geo_wkt("POINT (30 10)")

}
