#' Insect Eggs
#'
#' This package contains information about egg
#' dimensions of insects of various species.
#' @docType package
#' @name InsectEggs
#' @aliases InsectEggs InsectEggs-package
NULL

#' "Insect Eggs"
#'
#' A data set containing information about egg
#' dimensions of insects of various species.
#'
#' @source \url{https://www.biorxiv.org/content/10.1101/471953v1}
#' @format A dataframe with 2605 elements
#' \describe{
#'   \item{ar}{Insect egg aspect ratio (length / width)}
#'   \item{asym}{Insect egg asymmetry}
#'   \item{curv}{Insect egg curvature}
#'   \item{family}{Insect family (taxonomic rank)}
#'   \item{genus}{Insect genus (taxonomic rank)}
#'   \item{name}{Insect name}
#'   \item{order}{Insect order (taxonomic rank)}
#'   \item{species}{Insect species (taxonomic rank)}
#'   \item{vol}{Insect egg volume in mm^3}
#'   \item{year}{Year of publication of a paper from which egg dimensions were extracted}
#' }
"InsectEggs"
