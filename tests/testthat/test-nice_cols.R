test_that("nice_cols works", {
  expect_equal(nice_cols(iris) ,stringr::str_to_sentence(gsub("[.]", " ",names(iris))))
})
