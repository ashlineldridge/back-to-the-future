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
## Build the application.
##
.PHONY: build
build:
	@$(call banner,Building)
	bazel build //src/exe:app

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
run: build
	@$(call banner,Running)
	./bazel-bin/src/exe/app

##
## Build clangd compilation database.
##
.PHONY: compdb
compdb:
	@$(call banner,Building compilation database)
	bazel build //bazel:compdb
	@ln -sf bazel-bin/bazel/compile_commands.json compile_commands.json
