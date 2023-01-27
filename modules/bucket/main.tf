resource "google_storage_bucket" "static" {
  name = "pictures"
  prefix = "env/prod"
}