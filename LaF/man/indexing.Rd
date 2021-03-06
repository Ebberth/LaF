\docType{methods}
\name{[,laf_column-method}
\alias{[,laf-method}
\alias{[,laf_column-method}
\title{Read records from a large file object into R}
\usage{
\S4method{[}{laf_column}(x, i, j, drop)

\S4method{[}{laf}(x, i, j, drop)
}
\arguments{
  \item{x}{an object of type
  \code{"\link[=laf-class]{laf}"} or
  \code{"\link[=laf_column-class]{laf_column}"}.}

  \item{i}{an logical or numeric vector with indices. The
  rows which should be selected.}

  \item{j}{a numeric vector with the columns to select.}

  \item{drop}{a logical indicating whether or not to
  convert the result to a vector when only one column is
  selected. As in when indexing a \code{data.frame}.}
}
\description{
When a connection is opened to a
\code{"\link[=laf-class]{laf}"} object; this object can
then be indexed roughly as one would a \code{data.frame}.
}

