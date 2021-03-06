load("//bazel:build_system.bzl", "cbot_cmake_external", "cbot_package")
load("@rules_foreign_cc//tools/build_defs:configure.bzl", "configure_make")

cbot_package()

# configure_make(
#     name = "gperftools_build",
#     configure_options = [
#         "--enable-shared=no",
#         "--enable-frame-pointers",
#         "--disable-libunwind",
#     ] + select({
#         "//bazel:apple": ["AR=/usr/bin/ar"],
#         "//conditions:default": [],
#     }),
#     lib_source = "@com_github_gperftools_gperftools//:all",
#     linkopts = ["-lpthread"],
#     make_commands = ["make install-libLTLIBRARIES install-perftoolsincludeHEADERS"],
#     static_libraries = select({
#         "//bazel:debug_tcmalloc": ["libtcmalloc_debug.a"],
#         "//conditions:default": ["libtcmalloc_and_profiler.a"],
#     }),
# )

# # Workaround for https://github.com/bazelbuild/rules_foreign_cc/issues/227
# cc_library(
#     name = "gperftools",
#     deps = [
#         "gperftools_build",
#     ],
# )

# configure_make(
#     name = "luajit",
#     configure_command = "build.py",
#     configure_env_vars = select({
#         # This shouldn't be needed! See
#         # https://github.com/envoyproxy/envoy/issues/6084
#         # TODO(htuch): Remove when #6084 is fixed
#         "//bazel:asan_build": {"ENVOY_CONFIG_ASAN": "1"},
#         "//conditions:default": {},
#     }),
#     lib_source = "@com_github_luajit_luajit//:all",
#     make_commands = [],
#     static_libraries = [
#         "libluajit-5.1.a",
#     ],
# )

cbot_cmake_external(
    name = "nghttp2",
    cache_entries = {
        "ENABLE_LIB_ONLY": "on",
        "ENABLE_SHARED_LIB": "off",
        "ENABLE_STATIC_LIB": "on",
        "CMAKE_INSTALL_LIBDIR": "lib",
        "CMAKE_CXX_COMPILER_FORCED": "on",
    },
    cmake_files_dir = "$BUILD_TMPDIR/lib/CMakeFiles",
    debug_cache_entries = {"ENABLE_DEBUG": "on"},
    defines = ["NGHTTP2_STATICLIB"],
    lib_source = "@com_github_nghttp2_nghttp2//:all",
    static_libraries = select({
        # "//bazel:windows_x86_64": ["nghttp2.lib"],
        "//conditions:default": ["libnghttp2.a"],
    }),
)
