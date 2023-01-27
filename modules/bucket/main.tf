resource "google_storage_bucket" "auto-expire" {
  name = "pictures"
  location = "us"
  storage_class = "STANDARD"
}