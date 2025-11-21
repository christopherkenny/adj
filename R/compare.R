#' @export
vec_proxy_equal.adj <- function(x, ...) {
    lapply(vec_data(x), sort.int, na.last = TRUE)
}

#' @export
vec_proxy_compare.adj <- function(x, ...) {
    cli::cli_abort("Comparisons are not supported for adjacency lists.")
}
#' @export
vec_proxy_order.adj <- function(x, ...) {
    cli::cli_abort("Comparisons are not supported for adjacency lists.")
}

