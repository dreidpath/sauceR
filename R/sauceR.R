#' module_source
#'
#' @param file_name File containing the module to source
#' @param module_name Name of the module
#' @param module_marker string at the beginning of a line to identify the start and end of a module
#'
#' @return NULL if failed, run R code otherwise
#' @export
#'
#' @examples
#' module_source("hollandaise.R", "Figure1")
module_source <- function(file_name, module_name = "", module_marker = "#!--"){
  fp = file(file_name, "r")
  module_start <- paste0("^",module_marker, module_name)
  module_vector <- c()
  module_started <- F

  while ( TRUE ) {
    line = readLines(fp, n = 1)
    if ( length(line) == 0) {
      break
    }
    if(grepl(module_start, line) & module_started == T){
      break
    }
    if(grepl(module_start, line)){
      module_started <- T
      module_vector <- c(module_vector, line)
      line = readLines(fp, n = 1)

      while ( !grepl(module_start, line) ){
        module_vector <- c(module_vector, line)
        line = readLines(fp, n = 1)
      }
    }
  }
  if(length(module_vector) > 0){
    source_lines <- paste(module_vector, collapse='\n')
    source(textConnection(source_lines))
    close(fp)
    return(module_name)
  }
  else
    close(fp)
  return(NULL)
}


module_print <- function(file_name, module_name = "", module_marker = "#!--"){
  fp = file(file_name, "r")
  module_start <- paste0("^",module_marker, module_name)
  module_started <- F

  while ( TRUE ) {
    line = readLines(fp, n = 1)
    if ( length(line) == 0) {
      break
    }
    if(grepl(module_start, line) & module_started == T){
      break
    }
    if(grepl(module_start, line)){
      module_started <- T
      cat(line)
      cat("\n")
      line = readLines(fp, n = 1)

      while ( !grepl(module_start, line) ){
        cat(line)
        cat("\n")
        line = readLines(fp, n = 1)
      }
    }
  }
}


module_names <- function(file_name, module_name = "", module_marker = "#!--"){
  fp = file(file_name, "r")
  module_start <- paste0("^",module_marker, module_name)
  module_started <- F

  while ( TRUE ) {
    line = readLines(fp, n = 1)
    if ( length(line) == 0) {
      break
    }
    if(grepl(module_start, line) & module_started == T){
      break
    }
    if(grepl(module_start, line)){
      module_started <- T
      cat(line)
      cat("\n")
      line = readLines(fp, n = 1)

      while ( !grepl(module_start, line) ){
        cat(line)
        cat("\n")
        line = readLines(fp, n = 1)
      }
    }
  }
}

