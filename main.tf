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
  source  = "./modules/vpc"
  project = var.project_id
  name    = "custom-vpc"
  region  = var.region
  cidr    = "10.10.0.0/16"
  subnet  = {
    name       = "custom-subnet"
    cidr       = "10.10.1.0/24"
    region     = var.region
    purpose    = "PRIVATE"
    flow_logs  = true
  }
}

