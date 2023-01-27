resource "google_storage_bucket" "auto-expire" {
  name = "${var.env}-ag_pictures"
  location = "us"
  storage_class = "STANDARD"
}