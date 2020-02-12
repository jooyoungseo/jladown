
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jladown

<!-- badges: start -->

<!-- badges: end -->

The goal of jladown is to provide a reproducible template for the
Journal of Learning Analytics using R Markdown in multiple formats such
as pdf, gitbook, and Word.

## Installation

`jladown` is currently under development on GitHub. Please install and
test the package as follows:

``` r
if (!require(remotes)) {
  install.packages("remotes")
}

remotes::install_github("jooyoungseo/jladown")
```

## Example

This is a basic example which shows you how to use `jladown` package.

While other formats are usable, `pdf` output is fully supported at this
moment.

``` r
## Loading package:
library(jladown)

## Making a template using RStudio; do the following if you are a non-RStudio user:
rmarkdown::draft(
  file = "my_article",
  template = "jla_article",
  package = "jladown"
)

# After editing, use the bookdown knit button in RStudio; if you don't use RStudio, do the following in your R console:
bookdown::render_book("my_article.Rmd", output_format = "all")
```

# To-Do List

  - [ ] Add auto-word-counting capability using `rmdfiltr` package
    internally.
  - [ ] Fix `template.docx` does not take any effect on
    `jladown::jla_word()` output.
  - [ ] Make a cover page including jla logo for `bookdown::gitbook()`
    output.
