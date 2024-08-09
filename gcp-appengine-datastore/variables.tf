variable "project_id" {
  description = "The project ID to deploy the resources into."
  type        = string
}

variable "region" {
  description = "The region to deploy resources in (e.g., us-central)."
  type        = string
  default     = "us-south"
}
