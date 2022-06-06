terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.22.0"
    }
  }
}

provider "google" {
  project = var.project_id
  credentials = file(var.credentials)
  region = var.region
}
