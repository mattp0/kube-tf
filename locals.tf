locals {
  # Generic Project Vars
  gcp_project = "matt-test-2021"
  gcp_region  = "us-west1"
  gcp_zone    = "us-west1-c"
  # GKE specific Vars
  gke_num_nodes = 2
  machine_type  = "n2d-standard-2"
  vpc           = "${local.gcp_project}-vpc"
  subnet        = "${local.gcp_project}-subnet"
}