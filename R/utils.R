find_resource <- function(template = "jla_article", file = 'template.tex') {
system.file("rmarkdown", "templates", template, "resources", file, package = "jladown", mustWork = TRUE)
}

lua_filters = function(...) {
  c(rbind("--lua-filter", find_resource("jla_article", c(...))))
}

jladown_file = function(...) {
  system.file(..., package = 'jladown', mustWork = TRUE)
}
