context("test-sce_proxy")

test_that("http proxy works", {
  expect_equal(Sys.getenv("http_proxy"), "http://10.85.4.54:8080")
})

test_that("https proxy works", {
  expect_equal(Sys.getenv("https_proxy"), "http://10.85.4.54:8080")
})
