#' standard error function
#'
#' @description
#' A function that allows you to put a vector of numric values and then calculates standard error based on sd and sqrt
#'
#'
#' @param x
#'
#' @return a numeric value
#'
#' @export
sd_error <- function(x){
  sd(x, na.rm = T)/sqrt(length(x))
}
