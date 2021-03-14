load("@rules_foreign_cc//tools/build_defs:cmake.bzl", "cmake_external")
load("@rules_foreign_cc//tools/build_defs:configure.bzl", "configure_make")
load("@rules_foreign_cc//tools/build_defs:boost_build.bzl", "boost_build")

package(default_visibility = ["//visibility:public"])

configure_make(
    name = "nghttp2",
    lib_source = "@nghttp2//:all",
    configure_options = [
        "--enable-lib-only",
        "--enable-static",
        "--disable-shared",
        "--enable-asio-lib",
        "--with-boost-libdir=$EXT_BUILD_DEPS/boost/lib",
    ],
    static_libraries = [
        "libnghttp2.a",
        "libnghttp2_asio.a",
    ],
    configure_env_vars = {
        "CXXFLAGS": "-std=c++14",
        "AR": "/usr/bin/ar",
    },
    deps = [
        ":boost",
        ":openssl",
    ],
)

boost_build(
    name = "boost",
    lib_source = "@boost//:all",
    # By default, Asio is header-only. The following compilation flag forces the Asio
    # implementation to need to be linked as a separate library (like other heavier Boost
    # libraries). See here for details: https://github.com/nelhage/rules_boost/issues/166.
    # defines = ["BOOST_ASIO_SEPARATE_COMPILATION"],
    static_libraries = [
        "libboost_system.a",
        "libboost_thread.a",
    ],
    user_options = [
        "--with-system",
        "--with-thread",
    ],
    visibility = ["//visibility:public"],
)

config_setting(
    name = "darwin_build",
    values = {"cpu": "darwin"},
)

configure_make(
    name = "openssl",
    lib_source = "@openssl//:all",
    configure_command = "config",
    configure_options = [
        "no-shared",
    ] +
    select({
        ":darwin_build": [
            "enable-ec_nistp_64_gcc_128",
            "no-ssl2",
            "no-ssl3",
            "no-comp",
        ],
        "//conditions:default": []}),
    configure_env_vars =
    select({
        ":darwin_build": {
            "OSX_DEPLOYMENT_TARGET": "10.15",
            "AR": "/usr/bin/ar",
        },
        "//conditions:default": {}}),
    static_libraries = [
        "libssl.a",
        "libcrypto.a",
    ],
    visibility = ["//visibility:public"],
)

cmake_external(
    name = "fmt",
    lib_source = "@fmt//:all",
    static_libraries = ["libfmt.a"],
    visibility = ["//visibility:public"],
)

cmake_external(
    name = "spdlog",
    lib_source = "@spdlog//:all",
    static_libraries = ["libspdlog.a"],
    # Use our version of fmt rather than spdlog's prepackaged version
    deps = [":fmt"],
    visibility = ["//visibility:public"],
)
