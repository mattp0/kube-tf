output "region" {
  value       = local.gcp_zone
  description = "GCloud Region"
}

output "project_id" {
  value       = local.gcp_zone
  description = "GCloud Project ID"
}

output "gke-ip" {
  value = module.mattp0-gke-cluster
}

