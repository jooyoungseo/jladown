
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jladown

<!-- badges: start -->

<!-- badges: end -->

## Background

While the [*Journal of Learning Analytics
(JLA)*](https://epress.lib.uts.edu.au/journals/index.php/JLA/index)
provides a [Word
document](https://drive.google.com/uc?export=download&id=1ST6Fr9w1xgpRK_2Xuhczhrxw98RFqYOI)
and
[LaTeX](https://drive.google.com/uc?export=download&id=1LMkbm-HKAWliyTyRpzn1o0OxduJuVw7f)
template, these can be challenging to use for a number of reasons,
including the technical requirements of using a LaTeX template for the
first time and the challenge of editing a document in Word that is
serving as a template.

Moreover, the imperative of producing reproducible analyses extends to
writing manuscripts (see [van der Zee and
Reich, 2018](https://journals.sagepub.com/doi/full/10.1177/2332858418787466)),
and yet reproducibility is a serious challenge during this step, in part
due to a lack of available tools.

The goal of jladown is to provide a reproducible template for the
*Journal of Learning Analytics* using R Markdown in multiple formats -
particularly pdf - but also gitbook (for viewing via a web browser), and
Word. This package allows for both text and R code to be written in a
single document and to be rendered into a format that can be easily
submitted to *JLA*.

## Installation

`jladown` is currently under development on GitHub. Please install and
test the package as follows:

``` r
if (!require(remotes)) {
  install.packages("remotes")
}

remotes::install_github("jooyoungseo/jladown")
```

While not required for installation (as other LaTeX installations will
likely also suffice), we recommend the use of the
[{tinytex}](https://yihui.org/tinytex/) R package and associated LaTeX
installation.

## Example

This is a basic example which shows you how to use `jladown` package.
While other formats are usable, `pdf` output is fully supported at this
moment.

### Loading the package

``` r
library(jladown)
```

### For RStudio users

For RStudio users, as long as `jladown` is installed, we recommend to
create a new project which contains the file used for the contents of
the manuscript (in `index.Rmd`, described more below) and other files
used to render the file.

1.  From within RStudio, select “File” -\> “New Project” -\> “New
    Directory” and then select the *Journal of Learning Analytics*
    (`jladown`) template.

2.  Next, give your new directory a name, such as `my-jla-manuscript`.

3.  Then, edit the `index.Rmd` document, which should automatically be
    open, but which can always be opened by selecting the file from its
    location in the “Files” pane of RStudio. More instructions on
    editing the `index.Rmd` file are provided in the “Using the template
    (index.Rmd)” section.

### For non-RStudio users

For non-RStudio users (or those looking to use the command line), you
may create a project template in the current path with the following
function:

``` r
jladown:::jladown_skeleton(".")
```

Then, edit the `index.Rmd` file. More instructions on editing the
`index.Rmd` file are provided in the “Using the template (index.Rmd)”
section.

## Editing the template (`index.Rmd`)

To use the template, open (if not already opened) and edit the
`index.Rmd` file.

We provide a brief overview of using the template here; see the template
for more specific details.

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

## Rendering a PDF (or gitbook or Word) document from the template

Render the template to a document by clicking the “Knit” button at the
top of the `index.Rmd` document.

The result should be a PDF document which appears like the document
below.

![choosing the jladown R Markdown project
template](img/4-jla-render.png)

To render a document to *a different output type* (other than a PDF),
click the down arrow to the right of the “Knit” button, and select
either the gitbook or Word document format.

# To-Do List

  - \[x\] Add auto-word-counting capability using `rmdfiltr` package
    internally.
  - \[ \] Fix `template.docx` does not take any effect on
    `jladown::jla_word()` output.
  - \[ \] Make a cover page including jla logo for `bookdown::gitbook()`
    output.
