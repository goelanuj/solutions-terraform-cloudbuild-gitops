# Create a single Compute Engine instance
locals {
  network = "${element(split("-", var.subnet), 0)}"
}

resource "google_compute_instance" "ubuntu_vm" {
  project      = "${var.project}"
  name         = "${local.network}-ubuntu-instance"
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  tags         = ["ubuntu-vm"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  # Install Flask
  # metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"

  network_interface {
    subnetwork = "${var.subnet}"

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
# Apply the firewall rule to allow external IPs to access this instance
  tags = ["http-server"]
}