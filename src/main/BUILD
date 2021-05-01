load("//bazel:cc.bzl", "cc_binary")

cc_binary(
    name = "main",
    srcs = [
        "main.cc",
    ],
    deps = [
        "//src/logger",
        "//bazel/external:nghttp2",
        "//bazel/external:boost",
        "//bazel/external:spdlog",
    ],
    visibility = ["//visibility:public"],
)
