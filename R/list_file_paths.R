#' @title list_file_paths
#'
#' @description a wrapper for the base function list.files(). Instead of returning just the list of the file names, it returns the full path to those files as a named list.
#'
#' @param path a character vector of full path names; the default corresponds to the working directory, getwd(). Tilde expansion (see path.expand) is performed. Missing values will be ignored.
#' @param pattern an optional regular expression. Only file names which match the regular expression will be returned.
#' @param all.files a logical value. If FALSE, only the names of visible files are returned. If TRUE, all file names will be returned.
#' @param full.names a logical value. If TRUE, the directory path is prepended to the file names to give a relative file path. If FALSE, the file names (rather than paths) are returned.
#' @param recursive logical. Should the listing recurse into directories?
#' @param ignore.case logical. Should pattern-matching be case-insensitive?
#' @param include.dirs logical. Should subdirectory names be included in recursive listings? (They always are in non-recursive ones).
#' @param no.. logical. Should both "." and ".." be excluded also from non-recursive listings?
#' @param return_absolute logical. Should absolute file paths be returned. If false, only relative file paths are returned.
#'
#' @return
#' @export
#'

list_file_paths <-
  function(path = ".",
           pattern = NULL,
           all.files = FALSE,
           full.names = FALSE,
           recursive = FALSE,
           ignore.case = FALSE,
           include.dirs = FALSE,
           no.. = FALSE,
           return_absolute = FALSE) {
    files <- list.files(path,
                        pattern,
                        all.files,
                        full.names,
                        recursive,
                        ignore.case,
                        include.dirs,
                        no..)

    ifelse(
      return_absolute,
      file_paths <-
        normalizePath(paste0(path, "/", files)),
      file_paths <- paste0(path, "/", files)
    )
    names(file_paths) <- files
    return(file_paths)
  }

