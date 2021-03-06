# CBot

CBot is a personal [GitHub App][01] that I'm using to learn modern C++ and [Bazel][02].

## Building

```bash
bazel build //src/...
```

## Clangd Integration

Run [bazel-compdb][03] in the root of this repository to produce the `compile_commands.json`
file used by clangd. Emacs integration is provided by [lsp-mode][04].

<!-- Links -->

[01]: https://docs.github.com/en/developers/apps/about-apps
[02]: https://bazel.build
[03]: https://github.com/grailbio/bazel-compilation-database
[04]: https://github.com/emacs-lsp/lsp-mode
