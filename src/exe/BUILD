load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "app",
    srcs = [
        "main.cc",
    ],
    deps = [
        "//src/domain",
        "//bazel/ext:nghttp2",
        "//bazel/ext:boost",
    ],
    visibility = ["//visibility:public"],
)
