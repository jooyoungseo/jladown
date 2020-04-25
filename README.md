
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

### Loading package

``` r
library(jladown)
```

### For non-RStudio users

For non-RStudio users, you may create a project template in the current
path with the following function:

``` r
jladown:::jladown_skeleton(".")
```

### For RStudio users

For RStudio users, as long as `jladown` is installed, you can create a
project by creating a new R Markdown Document. From within RStudio,
select “File” -\> “New File” -\> “R Markdown”, and then select the
*Journal of Learning Analytics* (\`jladown) template, as in the below
image.

![choosing the jladown R Markdown document template after the New File
-\> R Markdown dialogue](choosing-jla-template.png)

## Using the template

We provide an overview of using the template here; see the template for
more specific details.

### Front matter

First, edit the following key fields in the front-matter (which is in
the [YAML
format](https://yaml.org/):

  - Title
  - Author
  - Affiliation
  - Keywords
  - Abstract

<!-- I'm not sure that the next line is true, and so I commented it out for now: -->

<!-- We note that fields that are not edited will not be included in the rendered -->

<!-- document. -->

### Body

Edit the body as you would any document. The `#` symbol represents a
header; additional `#` symbols represent different levels of headers, as
follows:

  - `#`: Level-1 header
  - `##`: Level-2 header
  - `###`: Level-3 header
  - `####`: Level-4 header

Text can be italicized using the `*` symbol, as with the following text:
*emphasized statement*.

Code can be included with [R Markdown code
chunks](https://rmarkdown.rstudio.com/lesson-3.html); images not
generated from code in these chunks can be included in a chunk via the
function `knitr::include_graphics()`.

### References

References can be included in \[BibTeX format\]
(<http://www.bibtex.org/>) using \[the apacite format\]
(<http://ctan.uniminuto.edu/biblio/bibtex/contrib/apacite/apacite.pdf>)

# To-Do List

  - \[x\] Add auto-word-counting capability using `rmdfiltr` package
    internally.
  - \[ \] Fix `template.docx` does not take any effect on
    `jladown::jla_word()` output.
  - \[ \] Make a cover page including jla logo for `bookdown::gitbook()`
    output.
