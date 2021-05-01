load("//bazel:cc.bzl", "cc_library")

cc_library(
    name = "http",
    srcs = ["server.cc"],
    hdrs = ["server.h"],
    deps = [
        "//bazel/external:nghttp2",
        "//bazel/external:boost",
        "//bazel/external:spdlog",
    ],
    visibility = ["//visibility:public"],
)
