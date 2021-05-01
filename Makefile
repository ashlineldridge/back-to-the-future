# Pretty printing.
no_color := \033[0m
ok_color := \033[38;5;74m

# Function for printing a pretty banner.
banner = \
	printf "\n$(ok_color)=====> $1$(no_color)\n"

# Function for checking that a variable is defined.
check_defined = \
  $(if $(value $1),,$(error Required variable $1 is undefined))

##
## No-op target for when make is run with no arguments.
##
.PHONY: noop
noop: ;

##
## Clean local temporary files.
##
.PHONY: clean
clean:
	@$(call banner,Cleaning)
	bazel clean

##
## Clean local and cached temporary files.
##
.PHONY: expunge
expunge:
	@$(call banner,Expunging)
	bazel clean --expunge

##
## Build the release configuration of the application.
##
.PHONY: build-release
build-release:
	@$(call banner,Building release configuration)
	bazel build --config=release //src/main

##
## Build the debug configuration of the application.
## Note: --sandbox_debug is required due to
## https://github.com/bazelbuild/bazel/issues/6327#issuecomment-427868122
##
.PHONY: build-debug
build-debug:
	@$(call banner,Building debug configuration)
	bazel build --config=debug --sandbox_debug //src/main

##
## Test the application.
##
.PHONY: test
test:
	@$(call banner,Testing)
	bazel test //test/...

##
## Run the application.
##
.PHONY: run
run: build-debug
	@$(call banner,Running)
	./bazel-bin/src/main/main

##
## Build clangd compilation database.
##
.PHONY: compdb
compdb:
	@$(call banner,Building compilation database)
	bazel build --config=debug --sandbox_debug //bazel:compdb
	@ln -sf bazel-bin/bazel/compile_commands.json compile_commands.json
