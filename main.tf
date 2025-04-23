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
      age = 100
    }
  }
}
