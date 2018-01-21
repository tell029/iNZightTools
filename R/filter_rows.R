#' Filter data by row numbers
#' 
#' Filter a dataframe by slicing off specified rows
#' and returns the result along with tidyverse code used to generate it.
#' 
#' @param .data a dataframe to filter
#' 
#' @param rows  a numeric vector of row numbers to slice off
#' 
#' @return filtered dataframe with tidyverse code attached
#' @seealso \code{\link{code}} 
#' 
#' @examples
#' filtered <- filterRows(iris, rows = c(1,4,5))
#' code(filtered)
#' head(filtered)
#' 
#' @author Owen Jin
#' @export
#' 
#' 
filterRows <- function(.data, rows){
  mc <- match.call()
  dataname <- mc$.data
  
  exp <- ~ .DATA %>% 
    dplyr::slice(-.ROWS)
  exp <- replaceVars(exp, .DATA = dataname, .ROWS = rows)
  interpolate(exp)
}