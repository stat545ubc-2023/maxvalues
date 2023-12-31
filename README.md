
<!-- README.md is generated from README.Rmd. Please edit that file -->

# maxvalues

<!-- badges: start -->
<!-- badges: end -->

The goal of maxvalues is to group a data set and summarize the maximum
values. This package contains the function max_values, which allows the
user to specify the data set (*data*), groups (*…*), and variables
(*vars*) to be maximized. The user may also specify whether or not to
remove NA values (*na.rm*). This package contains several tests to
ensure that the function is working properly.

## Installation

You can install the development version of maxvalues from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/maxvalues")
```

## Example

This is a basic example which shows you how summarize maximums based on
two groupings and two variables (with NAs removed):

``` r
library(maxvalues)
## basic example code

# Load package for creating tibble
library(tibble)

# Create sample data set
groupings <- c(rep("Group1",5), rep("Group2",5), rep("Group3",5))
subgroupings <- c("subgroup1", "subgroup2", "subgroup3", "subgroup3", "subgroup2","subgroup1", "subgroup1", "subgroup1", "subgroup1", "subgroup3", "subgroup2", "subgroup3", "subgroup2", "subgroup1", "subgroup1")
value_set1 <- c(59.56, 38.74, 54.49, 52.52, 59.54, NA, 42.10, 35.06, 57.97, 57.52, 57.64, 38.62, NA, 41.15, NA)
value_set2 <- c(2,5,7,NA,35,8,NA,15,67,8,9,36,14,23,6)
ex_data <- tibble(main_groups = groupings, sub_groups = subgroupings, values1 = value_set1, values2 = value_set2)

# Find max values of values1 and values2 for main_groups and sub_groups (removing NAs) 
max_values(data = ex_data, main_groups, sub_groups, vars = values1:values2, na.rm = TRUE)
#> # A tibble: 8 × 4
#> # Groups:   main_groups [3]
#>   main_groups sub_groups values1 values2
#>   <chr>       <chr>        <dbl>   <dbl>
#> 1 Group1      subgroup1     59.6       2
#> 2 Group1      subgroup2     59.5      35
#> 3 Group1      subgroup3     54.5       7
#> 4 Group2      subgroup1     58.0      67
#> 5 Group2      subgroup3     57.5       8
#> 6 Group3      subgroup1     41.2      23
#> 7 Group3      subgroup2     57.6      14
#> 8 Group3      subgroup3     38.6      36
```
