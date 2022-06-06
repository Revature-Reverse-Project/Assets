resource "google_container_node_pool" "primary_nodes" {
  name          = "${google_container_cluster.reverse-devops-sre-gke.name}-node-pool"
  location      = var.region
  cluster       = google_container_cluster.reverse-devops-sre-gke.name
  node_count    = var.gke_num_nodes
  disk_size_gb  = 100

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    labels = {
      env = var.project_id
    }

    machine_type = "e2-medium"
    tags         = ["gke-node"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}