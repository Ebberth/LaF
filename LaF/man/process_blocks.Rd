\docType{methods}
\name{process_blocks}
\alias{process_blocks}
\alias{process_blocks,laf-method}
\title{Blockwise processing of file}
\usage{
process_blocks(x, fun, ...)

\S4method{process_blocks}{laf}(x, fun, columns = 1:ncol(x), nrows = 5000,
  allow_interupt = FALSE, ...)
}
\arguments{
  \item{x}{an object the supports the \code{process_blocks}
  method, such as an \code{laf} object.}

  \item{fun}{a function to apply to each block (see
  details).}

  \item{...}{additional parameters are passed on to
  \code{fun}.}

  \item{columns}{an integer vector with the columns that
  should be read in.}

  \item{nrows}{the (maximum) number of rows to read in one
  block}

  \item{allow_interupt}{when TRUE the function \code{fun}
  is expected to return a list. The second element is the
  result of the function. The first element should be a
  logical value indication whether \code{process_blocks}
  should continue (FALSE) or stop (TRUE). When interupted
  the function is not called a last time with an empty
  \code{data.frame} to finalize the result.}
}
\description{
Reads the specified file block by block and feeds each
block to the specified function.
}
\details{
The function should accept as the first argument the next
block of data. When the end of the file is reached this is
an empty (zero row) \code{data.frame}. As the second
argument the function should accept the output of the
previous call to the function. The first time the function
is callen the second argument has the value \code{NULL}.
}

