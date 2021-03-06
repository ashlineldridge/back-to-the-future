REPOSITORY_LOCATIONS = dict(
    rules_foreign_cc = dict(
    #     sha256 = "3184c244b32e65637a74213fc448964b687390eeeca42a36286f874c046bba15",
    #     strip_prefix = "rules_foreign_cc-7bc4be735b0560289f6b86ab6136ee25d20b65b7",
    #     # 2019-09-26
    #     urls = ["https://github.com/bazelbuild/rules_foreign_cc/archive/7bc4be735b0560289f6b86ab6136ee25d20b65b7.tar.gz"],
        sha256 = "c2cdcf55ffaf49366725639e45dedd449b8c3fe22b54e31625eb80ce3a240f1e",
        strip_prefix = "rules_foreign_cc-0.1.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/0.1.0.zip",
    ),
    com_github_nghttp2_nghttp2 = dict(
        sha256 = "45cc3ed91966551f92b31958ceca9b3a9f23ce4faf5cbedb78aa3327cd4e5907",
        strip_prefix = "nghttp2-1.43.0",
        urls = ["https://github.com/nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.gz"],
    ),
    com_google_googletest = dict(
        sha256 = "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb",
        strip_prefix = "googletest-release-1.10.0",
        urls = ["https://github.com/google/googletest/archive/release-1.10.0.tar.gz"],
    ),
)

# BAZEL_SKYLIB_RELEASE = "0.9.0"
# BAZEL_SKYLIB_SHA256 = "1dde365491125a3db70731e25658dfdd3bc5dbdfd11b840b3e987ecf043c7ca0"

# OPENCENSUS_PROTO_GIT_SHA = "be218fb6bd674af7519b1850cdf8410d8cbd48e8"  # Dec 20, 2019
# OPENCENSUS_PROTO_SHA256 = "e3bbdc94375e86c0edfb2fc5851507e08a3f26ee725ffff7c5c0e73264bdfcde"

# PGV_GIT_SHA = "973ea075fe989fd7878619845d1e532e5bfe7115"  # Dec 26, 2019
# PGV_SHA256 = "d1cd20dd2cae953d6ccd09db6926fe67d0d2231412666c9b4ac5f159011f14a6"

# GOOGLEAPIS_GIT_SHA = "82944da21578a53b74e547774cf62ed31a05b841"  # Dec 2, 2019
# GOOGLEAPIS_SHA = "a45019af4d3290f02eaeb1ce10990166978c807cb33a9692141a076ba46d1405"

# PROMETHEUS_GIT_SHA = "99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c"  # Nov 17, 2017
# PROMETHEUS_SHA = "783bdaf8ee0464b35ec0c8704871e1e72afa0005c3f3587f65d9d6694bf3911b"

# UDPA_GIT_SHA = "edbea6a78f6d1ba34edc69c53a396b1d88d59651"  # Dec 30, 2019
# UDPA_SHA256 = "8cabd617b68354fa8b4adab8a031f80c10e2ea43f57d5f6210bc7b3ebb79b684"

# ZIPKINAPI_RELEASE = "0.2.2"  # Aug 23, 2019
# ZIPKINAPI_SHA256 = "688c4fe170821dd589f36ec45aaadc03a618a40283bc1f97da8fa11686fc816b"

# RULES_PROTO_GIT_SHA = "2c0468366367d7ed97a1f702f9cd7155ab3f73c5"  # Nov 19, 2019
# RULES_PROTO_SHA256 = "73ebe9d15ba42401c785f9d0aeebccd73bd80bf6b8ac78f74996d31f2c0ad7a6"

API_REPOSITORY_LOCATIONS = dict(
    bazel_skylib = dict(
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz"],
    ),
    # com_envoyproxy_protoc_gen_validate = dict(
    #     sha256 = PGV_SHA256,
    #     strip_prefix = "protoc-gen-validate-" + PGV_GIT_SHA,
    #     urls = ["https://github.com/envoyproxy/protoc-gen-validate/archive/" + PGV_GIT_SHA + ".tar.gz"],
    # ),
    # com_google_googleapis = dict(
    #     # TODO(dio): Consider writing a Skylark macro for importing Google API proto.
    #     sha256 = GOOGLEAPIS_SHA,
    #     strip_prefix = "googleapis-" + GOOGLEAPIS_GIT_SHA,
    #     urls = ["https://github.com/googleapis/googleapis/archive/" + GOOGLEAPIS_GIT_SHA + ".tar.gz"],
    # ),
    # com_github_cncf_udpa = dict(
    #     sha256 = UDPA_SHA256,
    #     strip_prefix = "udpa-" + UDPA_GIT_SHA,
    #     urls = ["https://github.com/cncf/udpa/archive/" + UDPA_GIT_SHA + ".tar.gz"],
    # ),
    # prometheus_metrics_model = dict(
    #     sha256 = PROMETHEUS_SHA,
    #     strip_prefix = "client_model-" + PROMETHEUS_GIT_SHA,
    #     urls = ["https://github.com/prometheus/client_model/archive/" + PROMETHEUS_GIT_SHA + ".tar.gz"],
    # ),
    # opencensus_proto = dict(
    #     sha256 = OPENCENSUS_PROTO_SHA256,
    #     strip_prefix = "opencensus-proto-" + OPENCENSUS_PROTO_GIT_SHA + "/src",
    #     urls = ["https://github.com/census-instrumentation/opencensus-proto/archive/" + OPENCENSUS_PROTO_GIT_SHA + ".tar.gz"],
    # ),
    # rules_proto = dict(
    #     sha256 = RULES_PROTO_SHA256,
    #     strip_prefix = "rules_proto-" + RULES_PROTO_GIT_SHA + "",
    #     urls = ["https://github.com/bazelbuild/rules_proto/archive/" + RULES_PROTO_GIT_SHA + ".tar.gz"],
    # ),
    # com_github_openzipkin_zipkinapi = dict(
    #     sha256 = ZIPKINAPI_SHA256,
    #     strip_prefix = "zipkin-api-" + ZIPKINAPI_RELEASE,
    #     urls = ["https://github.com/openzipkin/zipkin-api/archive/" + ZIPKINAPI_RELEASE + ".tar.gz"],
    # ),
)
