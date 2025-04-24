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
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network = module.network.vpc_self_link
}

