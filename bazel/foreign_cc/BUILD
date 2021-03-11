load("@rules_foreign_cc//tools/build_defs:configure.bzl", "configure_make")
load("@rules_foreign_cc//tools/build_defs:boost_build.bzl", "boost_build")

package(default_visibility = ["//visibility:public"])

configure_make(
    name = "nghttp2",
    # configure_in_place = True,
    configure_options = [
        "--enable-lib-only",
        "--enable-static",
        "--disable-shared",
        "--enable-asio-lib",
        "--with-boost-libdir=$EXT_BUILD_DEPS/boost/lib",
    ],
    lib_source = "@com_github_nghttp2_nghttp2//:all",
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

# See: https://github.com/nelhage/rules_boost/blob/master/BUILD.boost
boost_build(
    name = "boost",
    lib_source = "@com_bintray_boostorg_boost//:all",    
    defines = ["BOOST_ASIO_SEPARATE_COMPILATION"],
    static_libraries = [
        "libboost_system.a",
        "libboost_thread.a",
        # "libboost_date_time.a",        
        # "libboost_regex.a",
        # "libboost_serialization.a",        
    ],
    user_options = [
        # "--with-context",
        "--with-system",
        "--with-thread",
        # "--with-date_time",
        # "--with-regex",
        # "--with-serialization",
        # "link=static",
        # "cflags=-fPIC",
        # "cxxflags=-fPIC",
        # "linkflags=-fPIC",
    ],
    visibility = ["//visibility:public"],
)

config_setting(
    name = "darwin_build",
    values = {"cpu": "darwin"},
)

# See https://wiki.openssl.org/index.php/Compilation_and_Installation
# See https://github.com/bazelbuild/rules_foreign_cc/issues/338

configure_make(
    name = "openssl",
    configure_command = "config",
    configure_options = [
        "no-shared",
    ] + 
    select({
            ":darwin_build": [
              "enable-ec_nistp_64_gcc_128",
              "no-ssl2",
              "no-ssl3", "no-comp"
            ],
            "//conditions:default": []}),
    lib_source = "@openssl//:all",
    visibility = ["//visibility:public"],
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
    ]
)
