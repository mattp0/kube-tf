module "mattp0-gke-cluster" {
  source       = "./gke"
  machine_type = local.machine_type
  gcp_zone     = local.gcp_zone
  gcp_project  = local.gcp_project
  node_count   = local.gke_num_nodes
  subnet       = local.subnet
  vpc          = local.vpc
  depends_on = [
    google_compute_network.vpc
  ]
}