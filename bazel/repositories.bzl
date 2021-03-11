load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(":repository_locations.bzl", "REPOSITORY_LOCATIONS")

BUILD_ALL_CONTENT = """
filegroup(name = "all",
srcs = glob(["**"]),
visibility = ["//visibility:public"])
"""

def cbot_dependencies():
    _foreign_cc_dependencies()
    _com_github_nghttp2_nghttp2()
    _com_bintray_boostorg_boost()
    _com_google_googletest()
    _openssl()
    
def _foreign_cc_dependencies():
    location = REPOSITORY_LOCATIONS["rules_foreign_cc"]
    http_archive(
        name = "rules_foreign_cc",
        **location,
    )    
    
def _com_github_nghttp2_nghttp2():
    location = REPOSITORY_LOCATIONS["com_github_nghttp2_nghttp2"]
    http_archive(
        name = "com_github_nghttp2_nghttp2",
        build_file_content = BUILD_ALL_CONTENT,
        **location,
    )
    native.bind(
        name = "nghttp2",
        actual = "@cbot//bazel/foreign_cc:nghttp2",
    )

    
def _com_bintray_boostorg_boost():
    location = REPOSITORY_LOCATIONS["com_bintray_boostorg_boost"]
    http_archive(
        name = "com_bintray_boostorg_boost",
        build_file_content = BUILD_ALL_CONTENT,
        **location,
    )
    native.bind(
        name = "boost",
        actual = "@cbot//bazel/foreign_cc:boost",
    )
    
def _com_google_googletest():
    location = REPOSITORY_LOCATIONS["com_google_googletest"]
    http_archive(
        name = "com_google_googletest",
        **location,
    )
    # Why is this binding different looking?
    native.bind(
        name = "googletest",
        actual = "@com_google_googletest//:gtest",
    )

# TODO: consistent function naming
# TODO: just bring those things in here
# def _boringssl():
#     http_archive(
#         name = "boringssl",
#         # Use github mirror instead of https://boringssl.googlesource.com/boringssl
#         # to obtain a boringssl archive with consistent sha256
#         sha256 = "269c89eb60d3f3fcd5a0a755d1e28ffa65d423bc3c0e9562e2d666f5464680d2",
#         strip_prefix = "boringssl-1a7359455220f7010def8c63f7c7e041ce6707c6",
#         urls = [
#             "https://storage.googleapis.com/grpc-bazel-mirror/github.com/google/boringssl/archive/1a7359455220f7010def8c63f7c7e041ce6707c6.tar.gz",
#             "https://github.com/google/boringssl/archive/1a7359455220f7010def8c63f7c7e041ce6707c6.tar.gz",
#         ],
#     )
#     native.bind(
#         name = "libssl",
#         actual = "@boringssl//:ssl",
#     )

def _openssl():
    http_archive(
        name = "openssl",
        sha256 = "22d6588e4a7c5ad48fcac2fbf1d035bd43258c22a49457dad0539ded0651b4d2",
        build_file_content = BUILD_ALL_CONTENT,
        strip_prefix = "openssl-OpenSSL_1_1_1j",
        urls = ["https://github.com/openssl/openssl/archive/OpenSSL_1_1_1j.tar.gz"],
    )

# TODO: switch out boring for OpenSSL
# See:
# https://nghttp2.org/documentation/package_README.html#building-nghttp2-from-release-tar-archive
# https://github.com/openssl/openssl/issues/3840
# https://github.com/bazelbuild/rules_foreign_cc/issues/337#issuecomment-582724820
# https://github.com/bazelbuild/rules_foreign_cc/issues/337
# 
