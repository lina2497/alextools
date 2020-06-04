#' @title read_excel_allsheets
#' @description function for reading in all sheets in an excel workbook
#' @param file_path path to the excel file.
#' @param tibble logical indicating whether to return a tibble or a dataframe.
#'
#' @return A list of tibbles or data frames
#' @export
#'
#' @import readxl

read_excel_allsheets <- function(file_path, tibble = FALSE) {
  sheets <- readxl::excel_sheets(file_path)
  x <- lapply(sheets, function(X) readxl::read_excel(file_path, sheet = X))
  if(!tibble) x <- lapply(x, as.data.frame)
  names(x) <- sheets
  x
}
