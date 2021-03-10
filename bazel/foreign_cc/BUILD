load("//bazel:build_system.bzl", "cbot_cmake_external", "cbot_package")
load("@rules_foreign_cc//tools/build_defs:configure.bzl", "configure_make")
load("@rules_foreign_cc//tools/build_defs:boost_build.bzl", "boost_build")

cbot_package()

configure_make(
    name = "nghttp2",
    # configure_in_place = True,
    configure_options = [
        "--enable-lib-only",
        "--enable-static",
        "--disable-shared",
        "--enable-asio-lib",
        "--with-boost-libdir=$EXT_BUILD_DEPS/boost/lib",
        # "--boost-asio-libdir=$EXT_BUILD_DEPS/boost/lib"
    ],
    lib_source = "@com_github_nghttp2_nghttp2//:all",
    static_libraries = ["libnghttp2.a"],
    configure_env_vars = {
        "CXXFLAGS": "-std=c++14",
        "AR": "/usr/bin/ar",        
    },
    deps = [
        ":boost",
        # ":boringssl",
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
        "libboost_date_time.a",        
        "libboost_regex.a",
        "libboost_serialization.a",        
    ],
    deps = [
        "//external:libssl",
    ],
    user_options = [
        "--with-system",
        "--with-thread",
        "--with-date_time",
        "--with-regex",
        "--with-serialization",
        # "link=static",
        # "cflags=-fPIC",
        # "cxxflags=-fPIC",
        # "linkflags=-fPIC",
    ],
    visibility = ["//visibility:public"],
)
