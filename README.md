# API Documentation Hub with Redoc and GitHub Pages

This repository generates a static website from an OpenAPI specification file and deploys it to GitHub Pages. It uses the `redoc` tool to create a user-friendly documentation site.

# Features
- Generates a static website from an OpenAPI spec file.
- Deploys the generated site to GitHub Pages.
- Configurable via action inputs.


# Workflow Triggers

This action is triggered by a webhook event or tag push. 

### Trigger by Tag Push in this Repository
```yaml
on:
  push:
    tags:
      - 'v*.*.*'
```

### Trigger by Webhook Event on External Repository
To use the trigger workflow on external repository, you can reuse the following workflow from this repository:

```yaml
 # IN any place in the external repository you can put this snippet to trigger the workflow in this repository
 jobs:
    trigger-api-hub-docs-update:
      uses: racastellanosm/playground-openapi-to-github-pages/.github/workflows/trigger-from-webhook.yaml@main
      with:
        apiName: 'my-api' # Name of the API
        version: '1.0.0' # Version of the API
        url: 'https://github.com/racastellanosm/playground-openapi-to-github-pages/blob/main/api.yaml' # URL to the OpenAPI spec file 
      secrets: 
        token: ${{ secrets.GITHUB_TOKEN }}
    
 
```
