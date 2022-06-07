
# GKE cluster
resource "google_container_cluster" "reverse-devops-sre-gke" {
  name     = "reverse-devops-sre-gke"
  location = var.region
  node_locations = ["us-central1-b, us-central1-c"]
  remove_default_node_pool = true
  initial_node_count       = 3
  network                  = google_compute_network.vpc.self_link
  subnetwork               = google_compute_subnetwork.public_subnet.self_link
#  logging_service          = "logging.googleapis.com/kubernetes"
#  monitoring_service       = "monitoring.googleapis.com/kubernetes"



}

