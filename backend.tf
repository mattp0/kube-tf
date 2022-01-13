terraform {
  backend "gcs" {
    bucket = "mattp0"
    prefix = "terraform/statefile"
  }
}