#' @section \code{jla_pdf}: Format for creating Journal of Learning 
#'   Analytics (JLA) articles. Adapted from
#'   \url{https://learning-analytics.info/journals/index.php/JLA/about/submissions#authorGuidelines}.
#' @export

jla_pdf <- function(..., pandoc_args = NULL) {
jla_pdf_format = bookdown::pdf_book(..., template = find_resource("jla_article", 'template.tex'), keep_tex = TRUE, pandoc_args = c(
'--metadata', 'citeproc=false',
rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
pandoc_args))

#opts_jla_pdf = list(
#    prompt = TRUE, comment = NA, R.options = list(prompt = 'R> ', continue = 'R+ '),
#    fig.align = 'center', fig.width = 4.9, fig.height = 3.675,
#    class.source = 'r-chunk-code'
#  )
#  for (i in names(opts_jla_pdf)) {
#jla_pdf_format$knitr$opts_chunk[[i]] = opts_jla_pdf[[i]]
#}

jla_pdf_format
}

#' @section \code{jla_word}: Format for creating Journal of Learning 
#'   Analytics (JLA) articles. Adapted from
#'   \url{https://learning-analytics.info/journals/index.php/JLA/about/submissions#authorGuidelines}.
#' @export

jla_word <- function(..., pandoc_args = NULL) {
jla_word_format = bookdown::word_document2(..., reference_docx = find_resource("jla_article", 'template.docx'), pandoc_args = c(
'--metadata', 'citeproc=false',
rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
pandoc_args))

#opts_jla_word = list(
#    prompt = TRUE, comment = NA, R.options = list(prompt = 'R> ', continue = 'R+ '),
#    fig.align = 'center', fig.width = 4.9, fig.height = 3.675,
#    class.source = 'r-chunk-code'
#  )
#  for (i in names(opts_jla_word)) {
#jla_word_format$knitr$opts_chunk[[i]] = opts_jla_word[[i]]
#}

jla_word_format
}
