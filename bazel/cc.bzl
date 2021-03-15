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
