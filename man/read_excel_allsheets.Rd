\name{read_excel_allsheets}
\alias{read_excel_allsheets}
\title{Read all the sheets in an excel workbook}
\usage{
  read_excel_allsheets(filename, tibble = FALSE)
}
\description{
  Will open the excel file (.xls/.xlsx) and read all the sheets in the workbook into a named list. By default the sheets will be stored as dataframes, if you prefer tibbles, specify tibble = T.
}
\examples{
  read_excel_allsheets("name of file.xls", tibble = FALSE)
}
