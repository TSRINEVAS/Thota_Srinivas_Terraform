provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "srinivas_bucket" {
  name                        = "srinivasthota1981"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}
module "network" {
  source       = "./modules/network"  # or the correct relative/remote path
  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
}
