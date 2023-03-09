test_that("nice_cols_df test", {
  iris_test <- iris
  colnames(iris_test) <- stringr::str_to_sentence(stringr::str_replace_all(colnames(iris_test), "[.]", " "))
  expect_equal(iris %>% nice_cols_df(), iris_test)
})
