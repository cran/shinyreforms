% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validators.R
\name{ValidatorRequired}
\alias{ValidatorRequired}
\title{Validator requiring a input (e.g. checked checkbox).}
\usage{
ValidatorRequired()
}
\value{
A validator which checks that the value is present.
}
\description{
Will return FALSE if the input value is FALSE (e.g. like
for an unchecked textbox.)
}
