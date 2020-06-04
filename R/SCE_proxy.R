#' @title SCE_proxy
#' @description Sets an evironment variable allowing connection to the internet from the SCE2.
#'
#' @return Nothing.
#' @export
#'
SCE_proxy<- function(){

  Sys.setenv(http_proxy="http://10.85.4.54:8080", https_proxy="http://10.85.4.54:8080")

}


