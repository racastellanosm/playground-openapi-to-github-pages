SHELL	:= /bin/bash

build-docs: ## [Docs] Build the documentation site
	@echo "🚀 Building the documentation site..."
	@npx @redocly/cli build-docs api/v1/example-openapi.yaml --output=index.html
	@echo "🎉 Documentation site built successfully!"