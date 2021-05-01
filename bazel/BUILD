load("@bazel_compdb//:aspects.bzl", "compilation_database")

package(default_visibility = ["//visibility:public"])

compilation_database(
    name = "compdb",
    targets = [
        "//src/main",
        "//test/domain:domain_test",
    ],
    # Following setting is necessary to allow this target to depend on test targets.
    testonly = True,
    # TODO: Can this directory not be hardcoded?
    exec_root = "/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/execroot/cbot"
)

config_setting(
    name = "debug_build",
    values = {"compilation_mode": "dbg"},
)

config_setting(
    name = "darwin_build",
    values = {"cpu": "darwin"},
)
