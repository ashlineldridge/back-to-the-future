load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "app",
    srcs = [
        "main.cc",
    ],
    deps = [
        "//src/domain",
        "//external:nghttp2",
        "//external:boost",
        "@com_google_googletest//:gtest",
    ],
    defines = ["BOOST_ASIO_SEPARATE_COMPILATION"],
    # -lnghttp2_asio -lboost_system
    visibility = ["//visibility:public"],
)
