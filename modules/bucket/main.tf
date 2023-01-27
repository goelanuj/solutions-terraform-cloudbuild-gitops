resource "google_storage_bucket" {
  name = "pictures"
  location = "us"
  storage_class = "STANDARD"
  prefix = "env/prod"
}