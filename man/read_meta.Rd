% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metadata_read.R
\name{read_meta}
\alias{read_meta}
\title{Read CSV with iNZight metadata}
\usage{
read_meta(file, preview = FALSE, column_types, ...)
}
\arguments{
\item{file}{the plain text file with metadata}

\item{preview}{logical, if \code{TRUE} only the first 10 rows are returned}

\item{column_types}{optional column types}

\item{...}{more arguments}
}
\value{
a data frame
}
\description{
This function will read a CSV file with iNZight metadata in the header.
This allows plain text CSV files to be supplied with additional comments
that describe the structure of the data to make import and
data handling easier.
}
\details{
The main example is to define factor levels for an integer variable
in large data sets.
}
\author{
Tom Elliott
}
