#' Nice col names over data frame (pipeable)
#' @param dataframe to rename columns in dataframe as part of a piped opetation
#' @returns dataframe
#' @export
#' @examples
#' nice_cols_df(iris)

nice_cols_df <- function(.data) {
        colnames(.data) <- nice_cols(.data)
        return(.data)
}
