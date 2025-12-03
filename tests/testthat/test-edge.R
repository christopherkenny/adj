test_that("`adj_add_edges` works", {
    a <- adj(list(c(2, 3), c(1), c(1)))
    a_edit <- adj_add_edges(a, 2, 3)

    expect_equal(length(a_edit), 3L)
    expect_equal(length(a_edit[[2]]), 2L)
    expect_equal(a_edit[[3]], c(1L, 2L))
    expect_s3_class(a_edit, "adj")

    expect_error(adj_add_edges(list(2, 1)), 'must be an')
    expect_error(adj_add_edges(adj(2, 1), 1, integer()), 'lengths are different')
})

test_that("`adj_subtract_edges` works", {
    a <- adj(list(c(2, 3), c(1, 3), c(1, 2)))
    a_edit <- adj_subtract_edges(a, 2, 3)
    expect_equal(length(a_edit), 3L)
    expect_equal(length(a_edit[[2]]), 1L)
    expect_equal(a_edit[[3]], c(1L))
    expect_s3_class(a_edit, "adj")

    expect_error(adj_subtract_edges(list(2, 1)), 'must be an')
    expect_error(adj_subtract_edges(adj(2, 1), 1, integer()), 'lengths are different')
    expect_error(adj_subtract_edges(a, "B", "C", LETTERS[1:2]), "length")
})

test_that("adding by index works", {
    a <- adj(list(c(2, 3), c(1), c(1)))
    a_edit <- adj_add_edges(a, "B", "C", LETTERS[1:3])
    expect_equal(length(a_edit), 3L)
    expect_equal(length(a_edit[[2]]), 2L)
    expect_equal(a_edit[[3]], c(1L, 2L))
    expect_s3_class(a_edit, "adj")

    expect_error(adj_add_edges(a, "B", "C", LETTERS[1:2]), "length")
    expect_error(adj_add_edges(a, "B", "C", c("B", "B", "C")), "unique")
    expect_error(adj_add_edges(a, "B", "C", c("A", "B", "D")), "match")
})

test_that("adj_add_edges respects duplicates", {
    a <- adj(list(c(2, 3), c(1), c(1)), duplicates = "allow")
    a_edit <- adj_add_edges(a, 1, 2)
    expect_length(a_edit[[1]], 3)
})
