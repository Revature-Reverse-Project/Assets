resource "google_compute_subnetwork" "public_subnet" {
  name          = "public"
  region        = var.region
  network       = google_compute_network.main.id
  ip_cidr_range = "10.10.0.0/24"
}

resource "google_compute_subnetwork" "private_subnet" {
  name                     = "private"
  ip_cidr_range            = "10.0.0.0/18"
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}