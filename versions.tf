terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "your-org-name"

    workspaces {
      name = "gcp-project-workspace"
    }
  }
}