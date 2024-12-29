variable "project_id" {
  description = "The ID of the project"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "billing_account_id" {
  description = "The ID of the billing account to associate this project with"
  type        = string
}

variable "organization_id" {
  description = "The ID of the organization"
  type        = string
}

variable "region" {
  description = "The default region for resources"
  type        = string
  default     = "us-central1"
}