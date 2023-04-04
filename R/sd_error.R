#' standard error function
#'
#' @param x
#'
#' @return a numeric value
#'
#' @export
#'
#'
sd_error <- function(x){
  sd(x, na.rm = T)/sqrt(len(x))
}
