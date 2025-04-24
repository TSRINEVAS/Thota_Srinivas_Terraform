provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "srinivas_bucket" {
  name                        = "srinivasthota1981200"
  location                    = "US"
  project                     = var.project_id
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
      age = 30
    }
  }
  module "new_network" {
  source       = "./modules/network"
  vpc_name     = "new-vpc"
  subnet_name  = "new-subnet"
  subnet_cidr  = "10.20.0.0/24"
  region       = var.region
}
}
