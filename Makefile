SHELL	:= /bin/bash

build-docs: ## [Docs] Build the documentation site
	@echo "🚀 Building the documentation site..."
	@npx redoc-cli bundle api/v1/example-openapi.yaml
	@mv redoc-static.html index.html
	@echo "🎉 Documentation site built successfully!"