% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/maxvalues.R
\name{max_values}
\alias{max_values}
\title{Group data and summarize maximums of selected variables}
\usage{
max_values(data, ..., vars, na.rm = TRUE)
}
\arguments{
\item{data}{A data frame or tibble.}

\item{...}{Additional function arguments specifying the groups. These arguments must be character values corresponding to column names.}

\item{vars}{A character vector with the variables (vars) to be maximized. These variable names must correspond to columns with numerical entries.}

\item{na.rm}{A Boolean variable matching the argument name "na.rm" in the "max" function. Default input is TRUE, which removes NA values.}
}
\value{
A tibble summarizing the maximum values of variable by groups.
}
\description{
max_values groups a data set (data frame, data frame extension, or tibble) and maximizes the variables. The groups and variables to be maximized are specified in the function arguments.
}
\examples{
library(tibble)
groupings <- c(rep("Group1",5), rep("Group2",5), rep("Group3",5))
subgroupings <- c("subgroup1", "subgroup2", "subgroup3", "subgroup3", "subgroup2","subgroup1", "subgroup1", "subgroup1", "subgroup1", "subgroup3", "subgroup2", "subgroup3", "subgroup2", "subgroup1", "subgroup1")
value_set1 <- c(59.56, 38.74, 54.49, 52.52, 59.54, NA, 42.10, 35.06, 57.97, 57.52, 57.64, 38.62, NA, 41.15, NA)
value_set2 <- c(2,5,7,NA,35,8,NA,15,67,8,9,36,14,23,6)
ex_data <- tibble(main_groups = groupings, sub_groups = subgroupings, values1 = value_set1, values2 = value_set2)

max_values(data = ex_data, main_groups, sub_groups, vars = values1:values2, na.rm = TRUE)
max_values(data = ex_data, main_groups, vars = values1:values2, na.rm = FALSE)
max_values(data = ex_data, sub_groups, vars = values2, na.rm = TRUE)
}
