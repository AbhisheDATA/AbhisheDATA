output "project_id" {
  value       = google_project.main.project_id
  description = "The ID of the created project"
}

output "project_number" {
  value       = google_project.main.number
  description = "The project number"
}