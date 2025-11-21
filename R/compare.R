#' @export
vec_proxy_equal.adj <- function(x, ...) {
    lapply(vec_data(x), sort.int, na.last = TRUE)
}

#' @export
sort.adj <- function(x, ...) {
    cli::cli_abort("{.fn sort} is not supported for adjacency lists.")
}
