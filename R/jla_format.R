#' @section \code{jla_pdf}: Format for creating Journal of Learning 
#'   Analytics (JLA) articles. Adapted from
#'   \url{https://learning-analytics.info/journals/index.php/JLA/about/submissions#authorGuidelines}.
#' @export

jla_pdf <- function(...) {
bookdown::pdf_book(template = find_resource("jla_article", 'template.tex'), keep_tex = TRUE, ...)
}

#' @section \code{jla_word}: Format for creating Journal of Learning 
#'   Analytics (JLA) articles. Adapted from
#'   \url{https://learning-analytics.info/journals/index.php/JLA/about/submissions#authorGuidelines}.
#' @export

jla_word <- function(...) {
bookdown::word_document2(reference_docx = find_resource("jla_article", 'template.docx'), ...)
}
