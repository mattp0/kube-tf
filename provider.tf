terraform {
  required_version = ">= 1.0"
}

// Configure the Google Cloud provider
provider "google" {
  project = local.gcp_project
  region  = local.gcp_region
}
