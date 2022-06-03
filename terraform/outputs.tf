output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "reverse-devops-sre-gke" {
  value       = google_container_cluster.reverse-devops-sre-gke.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.reverse-devops-sre-gke.endpoint
  description = "GKE Cluster Host"
}