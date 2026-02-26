##@ Project Utilities
.PHONY: help build clean

help: ## Show this help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

build: ## Build the project
	@echo "Building the project..."
	# Add your build commands here

clean: ## Clean the project
	@echo "Cleaning the project..."
	# Add your clean commands here


##@ Tests
.PHONY: test

test: ## Run tests
	@echo "Running tests..."
	# Add your test commands here
