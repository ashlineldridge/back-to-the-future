# Learning C++

Repository used to document my journey (back) into C++.

## Emacs Integration

Run the `bazel-compdb` (from [here][02]) at the root of this repository
(with no arguments) to produce `compile_commands.json` which the Emacs
package lsp-mode then provides to clangd for language server integration.

## Building

```bash
bazel build //src/...
```

## Links

1. [Modern CMake][01]
2. [bazel-compilation-database][02]

<!-- Links -->

[01]: https://cliutils.gitlab.io/modern-cmake
[02]: https://github.com/grailbio/bazel-compilation-database
