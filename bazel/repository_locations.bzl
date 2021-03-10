REPOSITORY_LOCATIONS = dict(
    rules_foreign_cc = dict(
        sha256 = "c2cdcf55ffaf49366725639e45dedd449b8c3fe22b54e31625eb80ce3a240f1e",
        strip_prefix = "rules_foreign_cc-0.1.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/0.1.0.zip",
    ),
    com_github_nghttp2_nghttp2 = dict(
        sha256 = "45cc3ed91966551f92b31958ceca9b3a9f23ce4faf5cbedb78aa3327cd4e5907",
        strip_prefix = "nghttp2-1.43.0",
        urls = ["https://github.com/nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.gz"],
    ),
    com_bintray_boostorg_boost = dict(
        sha256 = "aeb26f80e80945e82ee93e5939baebdca47b9dee80a07d3144be1e1a6a66dd6a",
        strip_prefix = "boost_1_75_0",
        urls = ["https://dl.bintray.com/boostorg/release/1.75.0/source/boost_1_75_0.tar.gz"],
    ),
    com_google_googletest = dict(
        sha256 = "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb",
        strip_prefix = "googletest-release-1.10.0",
        urls = ["https://github.com/google/googletest/archive/release-1.10.0.tar.gz"],
    ),

    # TODO: come up with a consistent naming scheme
    boringssl = dict(
        sha256 = "3eea198c8e3f587ffc8ea6acf87d7575f571bbe6dd88ec90405e236303f3dc01",
        strip_prefix = "boringssl-65e0aad1b721a5aa67f2a8041cf48f691139bb9f",
        # To update BoringSSL, which tracks Chromium releases:
        # 1. Open https://omahaproxy.appspot.com/ and note <current_version> of linux/beta release.
        # 2. Open https://chromium.googlesource.com/chromium/src/+/refs/tags/<current_version>/DEPS and note <boringssl_revision>.
        # 3. Find a commit in BoringSSL's "master-with-bazel" branch that merges <boringssl_revision>.
        #
        # chromium-79.0.3945.16 (BETA)
        urls = ["https://github.com/google/boringssl/archive/65e0aad1b721a5aa67f2a8041cf48f691139bb9f.tar.gz"],
    ),    
    bazel_skylib = dict(
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz"],
    ),    
)
