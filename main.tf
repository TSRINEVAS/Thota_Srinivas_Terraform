provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source       = "./modules/network"  # the correct relative/remote path
  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}
module "firewall_ssh" {
  source        = "./modules/firewall"
  name          = "allow-ssh-ingress"
  network       = module.network.vpc_self_link
  source_ranges = ["0.0.0.0/0"]      # You can limit to a known IP range
  target_tags   = ["ssh-enabled"]   # Attach this to instances if needed
}
module "compute_instance" {
  source        = "./modules/compute_instance"
  name          = "sample-vm"
  machine_type  = "e2-medium"
  zone          = var.gcp_zone
  boot_image    = "debian-cloud/debian-11"
  network       = module.network.vpc_name
  subnetwork    = module.network.subnet_name
  startup_script = "echo Hello from Terraform > /var/tmp/hello.txt"
}

