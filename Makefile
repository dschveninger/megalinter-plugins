.DEFAULT_GOAL := help
PROJ_DIR := $(shell pwd)
SHELL = /bin/bash
MEGA_LINTER_IMAGE ?= megalinter/megalinter-documentation:v5

# adjust this if the api is incremented

##@ General

help: ## List the make targets supported
	@echo "Here are the make targets for $(shell basename ${PROJ_DIR})."
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Test - Quality Assurance targets to format, lint and test this repository

qa: qa-lint  ## Run all QA targets on repository

.PHONY: help  qa qa-lint

COMMON_DIR ?= common-tools
-include $(COMMON_DIR)/mk/megalinter.mk
