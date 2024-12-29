# GCP Project Terraform Configuration

This Terraform configuration sets up a new Google Cloud Platform (GCP) project with basic services enabled.

## Prerequisites

- Terraform installed (version 1.0.0 or later)
- GCP account with Organization Admin and Billing Account Admin permissions
- Google Cloud SDK installed and configured

## Getting Started

1. Copy `terraform.tfvars.example` to `terraform.tfvars`:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Edit `terraform.tfvars` with your specific values:
   ```hcl
   project_id         = "your-unique-project-id"
   project_name       = "Your Project Name"
   billing_account_id = "XXXXXX-XXXXXX-XXXXXX"
   organization_id    = "0000000000"
   region            = "us-central1"
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review the plan:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

6. To destroy resources:
   ```bash
   terraform destroy
   ```

## Project Structure

- `versions.tf` - Terraform version and provider requirements
- `main.tf` - Main project configuration
- `variables.tf` - Input variable definitions
- `outputs.tf` - Output definitions
- `apis.tf` - API enablement configuration
- `terraform.tfvars` - Variable values (create from example)

## What's Included

- New GCP project creation
- Basic API services enabled:
  - Compute Engine
  - Cloud Resource Manager
  - Identity and Access Management (IAM)
  - Artifact Registry

## Outputs

- project_id: The ID of the created project
- project_number: The project number assigned by GCP