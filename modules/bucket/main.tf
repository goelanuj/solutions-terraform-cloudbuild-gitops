resource "google_storage_bucket" "auto-expire" {
  name = "ag_pictures"
  location = "us"
  storage_class = "STANDARD"
}