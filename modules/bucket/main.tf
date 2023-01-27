terraform {
  backend "gcs" {
    bucket = "pictures"
    prefix = "env/prod"
  }
}