# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.gcp_project}-gke"
  location = var.gcp_zone

  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.vpc
  subnetwork               = var.subnet
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.gcp_zone
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.gcp_project
    }

    machine_type = var.machine_type
    tags         = ["gke-node", "${var.gcp_project}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}