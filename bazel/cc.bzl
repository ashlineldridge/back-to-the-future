default_copts = [
    "-Wall",
    "-Wextra",
    "-Werror",
    "-Wnon-virtual-dtor",
    "-Woverloaded-virtual",
    "-Wold-style-cast",
    "-Wvla",
    "-Wno-range-loop-analysis",
    "-Wno-unknown-warning-option",
    "-Wno-deprecated-declarations",
    "-Wno-dangling-gsl",
    "-Wno-deprecated-copy",
    "-std=c++2a",
]

default_test_deps = [
    "//bazel/ext:googletest",
]

def cc_binary(name, copts = [], **kargs):
    native.cc_binary(
        name = name,
        copts = copts + default_copts,
        **kargs)

def cc_library(name, copts = [], **kargs):
    native.cc_library(
        name = name,
        copts = copts + default_copts,
        **kargs)

def cc_test(name, copts = [], deps = [], **kargs):
    native.cc_test(
        name = name,
        copts = copts + default_copts,
        deps = deps + default_test_deps,
        **kargs)
