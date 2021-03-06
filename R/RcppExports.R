# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

cpp_convert <- function(data, ptype) {
    .Call(`_geom_cpp_convert`, data, ptype)
}

cpp_version_impl <- function() {
    .Call(`_geom_cpp_version_impl`)
}

cpp_intersection <- function(dataLeft, dataRight, ptype) {
    .Call(`_geom_cpp_intersection`, dataLeft, dataRight, ptype)
}

cpp_difference <- function(dataLeft, dataRight, ptype) {
    .Call(`_geom_cpp_difference`, dataLeft, dataRight, ptype)
}

cpp_sym_difference <- function(dataLeft, dataRight, ptype) {
    .Call(`_geom_cpp_sym_difference`, dataLeft, dataRight, ptype)
}

cpp_union <- function(dataLeft, dataRight, ptype) {
    .Call(`_geom_cpp_union`, dataLeft, dataRight, ptype)
}

cpp_unary_union <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_unary_union`, dataLeft, ptype)
}

cpp_coverage_union <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_coverage_union`, dataLeft, ptype)
}

cpp_clip_by_rect <- function(dataLeft, xmin, ymin, xmax, ymax, to) {
    .Call(`_geom_cpp_clip_by_rect`, dataLeft, xmin, ymin, xmax, ymax, to)
}

cpp_is_disjoint <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_is_disjoint`, dataLeft, dataRight)
}

cpp_touches <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_touches`, dataLeft, dataRight)
}

cpp_intersects <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_intersects`, dataLeft, dataRight)
}

cpp_crosses <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_crosses`, dataLeft, dataRight)
}

cpp_is_within <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_is_within`, dataLeft, dataRight)
}

cpp_contains <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_contains`, dataLeft, dataRight)
}

cpp_overlaps <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_overlaps`, dataLeft, dataRight)
}

cpp_equals <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_equals`, dataLeft, dataRight)
}

cpp_covers <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_covers`, dataLeft, dataRight)
}

cpp_is_covered_by <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_is_covered_by`, dataLeft, dataRight)
}

cpp_offset_curve <- function(x, width, quadSegs, endCapStyle, joinStyle, mitreLimit, to) {
    .Call(`_geom_cpp_offset_curve`, x, width, quadSegs, endCapStyle, joinStyle, mitreLimit, to)
}

cpp_buffer <- function(x, width, quadSegs, endCapStyle, joinStyle, mitreLimit, singleSided, to) {
    .Call(`_geom_cpp_buffer`, x, width, quadSegs, endCapStyle, joinStyle, mitreLimit, singleSided, to)
}

cpp_is_empty <- function(data) {
    .Call(`_geom_cpp_is_empty`, data)
}

cpp_is_simple <- function(data) {
    .Call(`_geom_cpp_is_simple`, data)
}

cpp_has_z <- function(data) {
    .Call(`_geom_cpp_has_z`, data)
}

cpp_is_closed <- function(data) {
    .Call(`_geom_cpp_is_closed`, data)
}

cpp_geom_type_id <- function(x) {
    .Call(`_geom_cpp_geom_type_id`, x)
}

cpp_get_srid <- function(x) {
    .Call(`_geom_cpp_get_srid`, x)
}

cpp_n_geometries <- function(x) {
    .Call(`_geom_cpp_n_geometries`, x)
}

cpp_n_coordinates <- function(x) {
    .Call(`_geom_cpp_n_coordinates`, x)
}

cpp_n_points <- function(x) {
    .Call(`_geom_cpp_n_points`, x)
}

cpp_n_interior_rings <- function(x) {
    .Call(`_geom_cpp_n_interior_rings`, x)
}

cpp_n_dimensions <- function(x) {
    .Call(`_geom_cpp_n_dimensions`, x)
}

cpp_n_coordinate_dimensions <- function(x) {
    .Call(`_geom_cpp_n_coordinate_dimensions`, x)
}

cpp_project <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_project`, dataLeft, dataRight)
}

cpp_project_normalized <- function(dataLeft, dataRight) {
    .Call(`_geom_cpp_project_normalized`, dataLeft, dataRight)
}

cpp_interpolate <- function(data, ptype, distance) {
    .Call(`_geom_cpp_interpolate`, data, ptype, distance)
}

cpp_interpolate_normalized <- function(data, ptype, distance) {
    .Call(`_geom_cpp_interpolate_normalized`, data, ptype, distance)
}

cpp_area <- function(x) {
    .Call(`_geom_cpp_area`, x)
}

cpp_length <- function(x) {
    .Call(`_geom_cpp_length`, x)
}

cpp_distance <- function(x, y) {
    .Call(`_geom_cpp_distance`, x, y)
}

cpp_point_on_surface <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_point_on_surface`, dataLeft, ptype)
}

cpp_centroid <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_centroid`, dataLeft, ptype)
}

cpp_node <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_node`, dataLeft, ptype)
}

cpp_boundary <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_boundary`, dataLeft, ptype)
}

cpp_envelope <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_envelope`, dataLeft, ptype)
}

cpp_convex_hull <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_convex_hull`, dataLeft, ptype)
}

cpp_minimum_rotated_rectangle <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_minimum_rotated_rectangle`, dataLeft, ptype)
}

cpp_minimum_bounding_circle <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_minimum_bounding_circle`, dataLeft, ptype)
}

cpp_minimum_bounding_circle_center <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_minimum_bounding_circle_center`, dataLeft, ptype)
}

cpp_minimum_bounding_circle_radius <- function(dataLeft) {
    .Call(`_geom_cpp_minimum_bounding_circle_radius`, dataLeft)
}

cpp_minimum_width <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_minimum_width`, dataLeft, ptype)
}

cpp_minimum_clearance_line <- function(dataLeft, ptype) {
    .Call(`_geom_cpp_minimum_clearance_line`, dataLeft, ptype)
}

cpp_minimum_clearance <- function(dataLeft) {
    .Call(`_geom_cpp_minimum_clearance`, dataLeft)
}

cpp_validate_provider <- function(data) {
    .Call(`_geom_cpp_validate_provider`, data)
}

cpp_segment_intersection <- function(ax0, ay0, ax1, ay1, bx0, by0, bx1, by1) {
    .Call(`_geom_cpp_segment_intersection`, ax0, ay0, ax1, ay1, bx0, by0, bx1, by1)
}

cpp_orientation_index <- function(ax, ay, bx, by, px, py) {
    .Call(`_geom_cpp_orientation_index`, ax, ay, bx, by, px, py)
}

# Register entry points for exported C++ functions
methods::setLoadAction(function(ns) {
    .Call('_geom_RcppExport_registerCCallable', PACKAGE = 'geom')
})
