test_that ("dummy", {
               a <- hello () 
               testthat::expect_equal (a, "Hello, world!")
})
