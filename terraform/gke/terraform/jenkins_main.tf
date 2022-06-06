module "jenkins" {
  source  = "terraform-google-modules/jenkins/google"
  version = "1.2.0"
  project_id                                     = var.project_id
  region                                         = var.region
  jenkins_instance_zone                          = "us-central1-b"
  jenkins_instance_network                       = google_compute_network.main.id
  jenkins_instance_subnetwork                    = google_compute_network.main.id
  jenkins_workers_region                         = var.region
  jenkins_workers_project_id                     = var.project_id
  jenkins_workers_zone                           = "us-central1-c"
  jenkins_workers_machine_type                   = "n1-standard-1"
  jenkins_workers_boot_disk_type                 = "pd-ssd"
  jenkins_workers_network                        = google_compute_network.main.id
  jenkins_workers_network_tags                   = ["jenkins-agent"]
#  jenkins_workers_boot_disk_source_image         = data.google_compute_image.jenkins_agent.name
  jenkins_workers_boot_disk_source_image_project = var.project_id
  jenkins_service_account_name                   = "jenkins"
  jenkins_service_account_display_name           = "Jenkins"
  create_firewall_rules                          = true


}