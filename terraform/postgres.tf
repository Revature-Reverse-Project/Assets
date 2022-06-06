resource "google_sql_database" "database" {
  name     = "postgres_db"
  instance = google_sql_database_instance.db_instance.name
}


resource "google_sql_database_instance" "db_instance" {
  name             = "postgres_instance"
  region           = var.region
  database_version = "POSTGRES_12"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}