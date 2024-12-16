# Sample of Google Cloud API Gateway with API Key Auth using Terraform

This repository contains Terraform configuration files to set up a sample API Gateway on Google Cloud Platform (GCP) with API key authentication.

# Prerequisites

- GCP project with billing enabled
- Service account with the necessary permissions
- Backend service prepared and running
- Backend URL specified in the OpenAPI specification (`swagger/openapi.yaml`)

# Setup

1. Set up variables
2. Initialize Terraform
    ```
    terraform init
    ```
3. Apply the Terraform configuration
    ```
    terraform apply
    ```

# API Usage

You need to include the API key in the request header:
```bash
curl -H "x-api-key: <your-api-key>" <gateway-url>/hello
```
