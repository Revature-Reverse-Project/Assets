variable "gke_num_nodes" {
  default     = 3
  description = "number of nodes to deploy into the cluster"
}
variable "project_id" {
  description = "project id to deploy this resource into"
}

variable "credentials" {
  description = "path to credentials file"
}

variable "region" {
  description = "region to deploy this resource into"
}