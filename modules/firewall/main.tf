resource "google_compute_firewall" "allow_ssh" {
  name    = var.name
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
  direction = "INGRESS"
  source_ranges = var.source_ranges
  target_tags   = var.target_tags
}
