#' Nice colum names
#' @param columns removes non character and numeric values from columns
#' @export
#' @examples
#' colnames(iris) <- nice_cols(string = iris)

nice_cols <- function(string) {
        return(
        stringi::stri_trans_totitle(
                stringi::stri_replace_all_regex(colnames(string), "[^A-Za-z0-9]", " "),
                opts_brkiter = stringi::stri_opts_brkiter(type = "sentence",
                                                          locale = "en")
                )
        )
}
