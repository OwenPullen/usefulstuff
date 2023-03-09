test_that("Nice cols df test 2", {
        iris_test2 <- iris
        colnames(iris_test2) <- stringr::str_replace_all(colnames(iris_test2), "[.]", "_")
        iris_test3 <- iris_test2
        names(iris_test3) <- stringr::str_to_sentence(gsub("_", " ", names(iris_test3)))
        expect_equal(iris_test2 %>% nice_cols_df(),iris_test3)
})
