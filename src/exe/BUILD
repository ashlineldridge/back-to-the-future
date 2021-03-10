load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "app",
    srcs = [
        "main.cc",
    ],
    deps = [
        "//src/domain",
        "//external:nghttp2",
        "@com_google_googletest//:gtest",
    ],
    visibility = ["//visibility:public"],
)
