SHELL := /bin/bash
.PHONY: help

help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort |awk 'BEGIN {FS = ":.*?##"}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Build all repo's project using Cargo
	make -C data_collections build

run: ## Run all repo's projects using Cargo
	make -C data_collections run

format: ## Formats all repo's projects code using cargo formating
	make -C data_collections format

test: ## Run all repo's tests (unit & integration rust tests)
	make -C data_collections test

lint: ## Execute lint for all repo's projects
	make -C data_collections lint

all: ## Execute most important steps for all repo's projects
	make -C data_collections all
