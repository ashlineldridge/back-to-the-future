load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

all_content = """
filegroup(name = "all",
srcs = glob(["**"]),
visibility = ["//visibility:public"])
"""

def init_repositories():
    http_archive(
        name = "bazel_compdb",
        sha256 = "bcecfd622c4ef272fd4ba42726a52e140b961c4eac23025f18b346c968a8cfb4",
        strip_prefix = "bazel-compilation-database-0.4.5",
        url = "https://github.com/grailbio/bazel-compilation-database/archive/0.4.5.tar.gz",
    )
    http_archive(
        name = "bazel_skylib",
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
        url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
    )
    http_archive(
        name = "boost",
        sha256 = "aeb26f80e80945e82ee93e5939baebdca47b9dee80a07d3144be1e1a6a66dd6a",
        strip_prefix = "boost_1_75_0",
        url = "https://dl.bintray.com/boostorg/release/1.75.0/source/boost_1_75_0.tar.gz",
        build_file_content = all_content,
    )
    http_archive(
        # The Abseil remote repo must have this name as this is the name that googletest's
        # Bazel build expects when absl=1 (see .bazelrc).
        name = "com_google_absl",
        sha256 = "b90d290ef07cdbad6df93b582217fba7cb8bf9e44f23b1ab5240239b1130e2b1",
        strip_prefix = "abseil-cpp-2e9532cc6c701a8323d0cffb468999ab804095ab",
        # Abseil follows "live at head" philosphy. This is the latest commit at time of writing.
        url = "https://github.com/abseil/abseil-cpp/archive/2e9532cc6c701a8323d0cffb468999ab804095ab.tar.gz",
    )
    http_archive(
        name = "fmt",
        sha256 = "5cae7072042b3043e12d53d50ef404bbb76949dad1de368d7f993a15c8c05ecc",
        strip_prefix = "fmt-7.1.3",
        url = "https://github.com/fmtlib/fmt/archive/7.1.3.tar.gz",
        build_file_content = all_content,
    )
    http_archive(
        name = "googletest",
        sha256 = "4643aa8e9d80621230fb5020875109c7241ceb4bc52a93e838fed946063f7a09",
        strip_prefix = "googletest-e8512bc38c4c0060858c3306b0660a3f126aee30",
        # GoogleTest follows "live at head" philosphy. This is the latest commit at time of writing.
        url = "https://github.com/google/googletest/archive/e8512bc38c4c0060858c3306b0660a3f126aee30.tar.gz",
    )
    http_archive(
        name = "nghttp2",
        sha256 = "45cc3ed91966551f92b31958ceca9b3a9f23ce4faf5cbedb78aa3327cd4e5907",
        strip_prefix = "nghttp2-1.43.0",
        url = "https://github.com/nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.gz",
        build_file_content = all_content,
    )
    http_archive(
        name = "openssl",
        sha256 = "22d6588e4a7c5ad48fcac2fbf1d035bd43258c22a49457dad0539ded0651b4d2",
        strip_prefix = "openssl-OpenSSL_1_1_1j",
        url = "https://github.com/openssl/openssl/archive/OpenSSL_1_1_1j.tar.gz",
        build_file_content = all_content,
    )
    http_archive(
        name = "rules_foreign_cc",
        sha256 = "a743f79ae96bd4bdace6f582b88dcfbdfbe5aeb8ff9f7b61ed5c65e2f774cda8",
        strip_prefix = "rules_foreign_cc-0.1.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/0.1.0.tar.gz",
    )
    http_archive(
        name = "spdlog",
        sha256 = "e20e6bd8f57e866eaf25a5417f0a38a116e537f1a77ac7b5409ca2b180cec0d5",
        strip_prefix = "spdlog-1.8.2",
        url = "https://github.com/gabime/spdlog/archive/v1.8.2.tar.gz",
        build_file_content = all_content,
    )
