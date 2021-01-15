load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@com_grail_bazel_compdb//:aspects.bzl", "compilation_database")

cc_binary(
    name = "app",
    srcs = [
        "main.cc",
    ],
    deps = [
        "//src/advertisement",
    ],
    visibility = ["//visibility:public"],
)

compilation_database(
    name = "compdb",
    targets = [
        "//src/exe:app",
        "//src/advertisement",
    ],
    exec_root = "/private/var/tmp/_bazel_aeldridge/1a2e56dcd61170d367f356b27fdb6db2/execroot/__main__",
)
