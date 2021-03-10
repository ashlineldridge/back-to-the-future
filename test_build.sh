#!/usr/bin/env bash

export LDFLAGS=-lc++ -fobjc-link-runtime -headerpad_max_install_names -no-canonical-prefixes -mmacosx-version-min=11.1
export AR=/usr/bin/ar
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer
export TMPDIR=/var/folders/0f/crsb6q8s5plg_mxfg4mg4c_m0000gp/T/
export CPPFLAGS=
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.1.sdk
export INSTALL_PREFIX=cunit
export BUILD_WRAPPER_SCRIPT=bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit_scripts/Configure_wrapper_script.sh
export EXT_BUILD_ROOT=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot
export XCODE_VERSION_OVERRIDE=12.3.0.12C33
export INSTALLDIR=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit
export __CF_USER_TEXT_ENCODING=0x1F6:0:0
export CXXFLAGS=-D_FORTIFY_SOURCE=1 -fstack-protector -fcolor-diagnostics -Wall -Wthread-safety -Wself-assign -fno-omit-frame-pointer -O0 -DDEBUG -std=c++11 -fdebug-compilation-dir . -isysroot __BAZEL_XCODE_SDKROOT__ -F__BAZEL_XCODE_SDKROOT__/System/Library/Frameworks -F__BAZEL_XCODE_DEVELOPER_DIR__/Platforms/MacOSX.platform/Developer/Library/Frameworks -mmacosx-version-min=11.1 -no-canonical-prefixes -Wno-builtin-macro-redefined -D__DATE__="redacted" -D__TIMESTAMP__="redacted" -D__TIME__="redacted"
export PATH=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit.ext_build_deps/bin:/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot:/usr/gnu/bin:/usr/local/bin:/bin:/usr/bin:.
export _=/usr/bin/env
export BUILD_TMPDIR=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit.build_tmpdir
export PWD=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit.build_tmpdir
export ASFLAGS=-D_FORTIFY_SOURCE=1 -fstack-protector -fcolor-diagnostics -Wall -Wthread-safety -Wself-assign -fno-omit-frame-pointer -O0 -DDEBUG -fdebug-compilation-dir . -isysroot __BAZEL_XCODE_SDKROOT__ -F__BAZEL_XCODE_SDKROOT__/System/Library/Frameworks -F__BAZEL_XCODE_DEVELOPER_DIR__/Platforms/MacOSX.platform/Developer/Library/Frameworks -no-canonical-prefixes -Wno-builtin-macro-redefined -D__DATE__="redacted" -D__TIMESTAMP__="redacted" -D__TIME__="redacted"
export EXT_BUILD_DEPS=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit.ext_build_deps
export CXX=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/external/local_config_cc/wrapped_clang
export SHLVL=3
export CFLAGS=-D_FORTIFY_SOURCE=1 -fstack-protector -fcolor-diagnostics -Wall -Wthread-safety -Wself-assign -fno-omit-frame-pointer -O0 -DDEBUG -fdebug-compilation-dir . -isysroot __BAZEL_XCODE_SDKROOT__ -F__BAZEL_XCODE_SDKROOT__/System/Library/Frameworks -F__BAZEL_XCODE_DEVELOPER_DIR__/Platforms/MacOSX.platform/Developer/Library/Frameworks -mmacosx-version-min=11.1 -no-canonical-prefixes -Wno-builtin-macro-redefined -D__DATE__="redacted" -D__TIMESTAMP__="redacted" -D__TIME__="redacted"
export BUILD_LOG=bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit_logs/Configure.log
export BUILD_SCRIPT=bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit_scripts/Configure_script.sh
export CC=/private/var/tmp/_bazel_aeldridge/b93242d36e9fcc45e1545a99acc2b884/sandbox/darwin-sandbox/1/execroot/cbot/external/local_config_cc/wrapped_clang
export APPLE_SDK_PLATFORM=MacOSX
export APPLE_SDK_VERSION_OVERRIDE=11.1

./bazel-out/darwin-fastbuild/bin/bazel/foreign_cc/cunit_scripts/Configure_script.sh