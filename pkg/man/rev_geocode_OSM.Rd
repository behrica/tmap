% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geocode_OSM.R
\name{rev_geocode_OSM}
\alias{rev_geocode_OSM}
\title{Reverse geocodes a location using OpenStreetMap Nominatim}
\usage{
rev_geocode_OSM(x, y = NULL, zoom = NULL, projection = "longlat",
  as.data.frame = NA, server = "http://nominatim.openstreetmap.org")
}
\arguments{
\item{x}{x coordinate(s), or a \code{\link[sp:SpatialPoints]{SpatialPoints}} object}

\item{y}{y coordinate(s)}

\item{zoom}{zoom level}

\item{projection}{projection in which the coordinates \code{x} and \code{y} are provided}

\item{as.data.frame}{return as data.frame (\code{TRUE}) or list (\code{FALSE}). By default a list, unless multiple coordinates are provided.}

\item{server}{OpenStreetMap Nominatim server name. Could also be a local OSM Nominatim server.}
}
\value{
A data frmame with all atributes that are contained in the search result
}
\description{
Reverse geocodes a location (based on spatial coordinates) to an address. It uses OpenStreetMap Nominatim. For processing large amount of queries, please read the usage policy (\url{http://wiki.openstreetmap.org/wiki/Nominatim_usage_policy}).
}
\examples{
\dontrun{
data(metro)

five_cities <- metro[sample(length(metro), 5), ]

addresses <- rev_geocode_OSM(five_cities, zoom = 6)

five_cities <- append_data(five_cities, addresses, fixed.order = TRUE)

tmap_mode("view")
tm_shape(five_cities) +
	tm_markers(text="city")
}
}
\seealso{
\code{\link{geocode_OSM}}
}

