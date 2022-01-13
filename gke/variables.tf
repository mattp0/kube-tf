variable "gcp_zone" {
  type        = string
  description = "GCP Zone"
}
variable "gcp_project" {
  type        = string
  description = "GCP Project ID"
}
variable "machine_type" {
  type        = string
  description = "Refer to GCP for machine types"
}
variable "node_count" {
  type        = number
  default     = 3
  description = "Refer to GCP for machine types"
}

variable "vpc" {
  type        = string
  description = "the vpc created for the gke"
}

variable "subnet" {
  type        = string
  description = "the subnet of the vpc"
}