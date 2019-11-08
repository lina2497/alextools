# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'



SCE_proxy<- function(){

  Sys.setenv(http_proxy="http://10.85.4.54:8080", https_proxy="http://10.85.4.54:8080")

}


