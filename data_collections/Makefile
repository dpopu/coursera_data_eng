SHELL := /bin/bash
.PHONY :help

help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort |awk 'BEGIN {FS = ":.*?##"}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

clean: ## Clean the project using Cargo
	cargo clean

build: ## Build the project using Cargo
	cargo build

lint: ## Lint the project using clippy
	@rustup component add clippy 2> /dev/null
	cargo clippy

run: ## Run the project using Cargo
	cargo run

fmt: ## Formats the project code using cargo formating
	cargo fmt

test: ## Run all tests (unit & integration rust tests)
	cargo test