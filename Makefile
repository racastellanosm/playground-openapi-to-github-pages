SHELL	:= /bin/bash

build-static-site: ## Build static documentation site from OpenAPI specs using Docker
	@echo "🚀 Building the documentation site..."
	@mkdir -p build
	@for file in api/**/*.yaml; do \
		dir=$$(dirname $$file | sed 's|api/||'); \
		filename=$$(basename $$file .yaml); \
		mkdir -p build/$${dir//\//_}; \
		cp $$file build/$${dir//\//_}/$$filename.yaml; \
		echo "🎉 Documentation site built successfully for $$file!"; \
	done
	@cp template/main-index.html build/index.html
	@echo "🎉 All documentation sites built successfully!"