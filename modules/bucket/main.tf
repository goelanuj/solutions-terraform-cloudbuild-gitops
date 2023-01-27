resource "google_storage_bucket" "auto-expire" {
  prefix = "${var.env}"
  name = "${var.env}-ag_pictures"
  location = "us"
  storage_class = "STANDARD"
}