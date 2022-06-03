resource "google_compute_subnetwork" "subnet" {
  name          = "subnet"
  region        = var.region
  network       = google_compute_network.main.id
  ip_cidr_range = "10.10.0.0/24"
}