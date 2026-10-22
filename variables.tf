variable "region" {
  description = "GCP region for resources"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "state_bucket" {
  description = "GCS bucket containing remote Terraform state"
  type        = string
}

variable "state_key" {
  description = "Path to the remote Terraform state file"
  type        = string
}

variable "instance_type" {
  description = "Machine type for the VM instance"
  type        = string
}

variable "owner" {
  description = "Owner of the VM instance"
  type        = string
}