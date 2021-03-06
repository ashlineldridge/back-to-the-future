load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(":repository_locations.bzl", "REPOSITORY_LOCATIONS")

# Make all contents of an external repository accessible under a filegroup.  Used for external HTTP
# archives, e.g. cares.
BUILD_ALL_CONTENT = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

def cbot_dependencies():
    _foreign_cc_dependencies()
    _com_google_googletest()
    _com_github_nghttp2_nghttp2()

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
        patch_args = ["-p1"],
        # This patch cannot be picked up due to ABI rules. Better
        # solve is likely at the next version-major. Discussion at;
        # https://github.com/nghttp2/nghttp2/pull/1395
        # https://github.com/envoyproxy/envoy/pull/8572#discussion_r334067786
        patches = ["@cbot//bazel/foreign_cc:nghttp2.patch"],
        **location,
    )
    native.bind(
        name = "nghttp2",
        actual = "@cbot//bazel/foreign_cc:nghttp2",
    )

def _com_google_googletest():
    location = REPOSITORY_LOCATIONS["com_google_googletest"]
    http_archive(
        name = "com_google_googletest",
        **location,
    )    
    native.bind(
        name = "googletest",
        actual = "@com_google_googletest//:gtest",
    )
