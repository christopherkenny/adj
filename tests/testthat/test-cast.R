test_that("casting works", {
    expect_s3_class(as_adj(list(2, 1)), 'adj')

    expect_length(adj_to_list(adj(list(2, 1)), ids = c('A', 'B')), 2)
})
