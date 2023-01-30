resource "google_storage_bucket" "auto-expire" {
  count = 0
  name = "${var.env}-ag_pictures"
  location = "us"
  storage_class = "STANDARD"
}