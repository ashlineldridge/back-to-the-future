load("@bazel_compdb//:aspects.bzl", "compilation_database")

package(default_visibility = ["//visibility:public"])

compilation_database(
    name = "compdb",
    targets = [
        "//src/exe:app",
    ],
    # TODO: Can this directory not be hardcoded?
    exec_root = "/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/execroot/cbot"
)
