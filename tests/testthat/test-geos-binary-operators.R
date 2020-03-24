
test_that("intersection works", {
  result <- geos_intersection(
    geo_wkt("POLYGON ((0 0, 0 10, 10 10, 10 0, 0 0))"),
    geo_wkt("POLYGON ((5 5, 5 15, 10 15, 15 5, 5 5))")
  )

  expect_identical(
    geo_convert(result, geo_rect()),
    geo_rect(5, 5, 10, 10)
  )
})

test_that("intersection recycles geometry vectors", {
  result1 <- geos_intersection(
    geo_wkt("POINT (5 5)"),
    rep(geo_wkt("POLYGON ((5 5, 5 15, 10 15, 15 5, 5 5))"), 5)
  )

  result2 <- geos_intersection(
    rep(geo_wkt("POLYGON ((5 5, 5 15, 10 15, 15 5, 5 5))"), 5),
    geo_wkt("POINT (5 5)")
  )

  expect_identical(result1, result2)

  # the "zero length when anything is zero" behaviour mimics tibble::tibble()
  expect_identical(geos_intersection(geo_wkt("POINT (5 5)"), geo_wkt()), geo_wkt())
  expect_identical(geos_intersection(geo_wkt(), geo_wkt("POINT (5 5)")), geo_wkt())

  # also check when both are != 1
  result3 <- geos_intersection(
    rep(geo_wkt("POINT (5 5)"), 5),
    rep(geo_wkt("POLYGON ((5 5, 5 15, 10 15, 15 5, 5 5))"), 5)
  )

  expect_identical(result3, result2)

  # check bad lengths
  expect_error(
    geos_intersection(
      rep(geo_wkt("POINT (5 5)"), 3),
      rep(geo_wkt("POLYGON ((5 5, 5 15, 10 15, 15 5, 5 5))"), 5)
    ),
    "incompatible lengths"
  )
})