resource "google_compute_instance" "vm_instance" {
  name         = "sample-vm"
  project      = var.project_id
  zone         = var.gcp_zone
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.name

    # 👉 This assigns an ephemeral external IP
    access_config {
      # Leave empty for dynamic public IP
    }
  }

  tags = ["http-server", "https-server"]
}
