terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.31.0"
    }
  }

  plugin_cache_dir = ".terraform/plugins"
}
