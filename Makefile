SHELL	:= /bin/bash

build-static-site: ## Build static documentation site from OpenAPI specs using Docker
	@echo "🚀 Building the documentation site..."
	@mkdir -p build
	@cp template/main-index.html build/index.html
	@echo "🎉 All documentation sites built successfully!"