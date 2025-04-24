provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source       = "./modules/network"  # or the correct relative/remote path
  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}
