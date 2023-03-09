test_that("nice cols works 2", {
  expect_equal(nice_cols(dplyr::rename(iris, SEpaL_widTH = Sepal.Width)),
               stringr::str_to_sentence(gsub("[.]", " ", names(iris)))
  )
})
