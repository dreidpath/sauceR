
<!-- README.md is generated from README.Rmd. Please edit that file -->
![](man/figures/logo.png)

Overview
--------

sauceR is a small package providing additional functionality to the **source()** function in {base}. Specifically, a source file can be internally marked-up into modules, and the the modules can be individually executed.

Installation
------------

``` r
# This package is not available on CRAN

# Install the development version from GitHub
# install.packages("devtools")
devtools::install_github("dreidpath/sauceR")
```

Usage
-----

`library(sauceR)` will load the package.

Acknowledgement
---------------

My insight into how this package might be written came from [Matthew Plourde's](https://stackoverflow.com/users/433829/matthew-plourde) answer to a [question on stackoverflow](https://stackoverflow.com/questions/12214963/source-only-part-of-a-file)
