# List of APIs to enable in the project
locals {
  required_apis = [
    "compute.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "artifactregistry.googleapis.com"
  ]
}

# Enable required APIs
resource "google_project_service" "services" {
  for_each = toset(local.required_apis)
  
  project = google_project.main.project_id
  service = each.value

  disable_dependent_services = true
  disable_on_destroy        = false
}