output "firewall_rule_name" {
  value = google_compute_firewall.allow_ssh.name
}
