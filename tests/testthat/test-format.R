test_that("format works", {
    expect_snapshot(
        adj(2:3, NULL, 4:5, integer(0), 1)
    )
    expect_snapshot(adj())
    expect_null(format(adj()))
    expect_null(format(adj()))
})
